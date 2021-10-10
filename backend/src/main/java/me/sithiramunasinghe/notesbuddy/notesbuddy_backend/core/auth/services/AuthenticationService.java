package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.services;

import lombok.extern.slf4j.Slf4j;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.entities.Role;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.entities.User;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.repository.RoleRepository;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.repository.UserRepository;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto.LoginRequest;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto.LoginResponse;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto.SignUpRequest;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.mappers.AuthUserMapper;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.exceptions.throwables.AppException;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.security.services.JwtTokenProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;

@Slf4j
@Service
public class AuthenticationService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final JwtTokenProvider tokenProvider;
    private final PasswordEncoder passwordEncoder;
    private final AuthenticationManager authenticationManager;

    @Autowired
    public AuthenticationService(
            AuthenticationManager authenticationManager,
            UserRepository userRepository,
            RoleRepository roleRepository, PasswordEncoder passwordEncoder,
            JwtTokenProvider tokenProvider) {
        this.authenticationManager = authenticationManager;
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
        this.tokenProvider = tokenProvider;
    }

    public LoginResponse authenticate(LoginRequest loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        loginRequest.getUsernameOrEmail(),
                        loginRequest.getPassword()
                )
        );

        SecurityContextHolder.getContext().setAuthentication(authentication);

        String jwt = tokenProvider.generateToken(authentication);
        LoginResponse loginResponse = new LoginResponse();
        loginResponse.setAccessToken(jwt);
        return loginResponse;
    }

    public void register(SignUpRequest signUpRequest) {
        if (userRepository.existsByUsername(signUpRequest.getUsername())) {
            throw new AppException("USER_ALREADY_EXISTS", HttpStatus.BAD_REQUEST);
        }

        if (userRepository.existsByEmail(signUpRequest.getEmail())) {
            throw new AppException("USER_ALREADY_EXISTS", HttpStatus.BAD_REQUEST);
        }

        // Creating user's account
        User user = AuthUserMapper.INSTANCE.mapUser(signUpRequest);

        user.setPassword(passwordEncoder.encode(user.getPassword()));

        Role userRole = this.roleRepository.findByName("ROLE_USER")
                .orElseThrow(() -> new AppException("ROLE_NOT_FOUND", HttpStatus.BAD_REQUEST));

        user.setRoles(Collections.singleton(userRole));

        User result = userRepository.save(user);
        log.info("User saved: {}", result);
    }
}
