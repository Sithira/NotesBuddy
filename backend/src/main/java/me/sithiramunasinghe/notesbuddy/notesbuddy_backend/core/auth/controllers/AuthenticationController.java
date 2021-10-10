package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.controllers;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto.LoginRequest;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto.LoginResponse;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto.SignUpRequest;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto.UserSummary;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.services.AuthenticationService;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.security.CurrentUser;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.security.UserPrincipal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/auth")
public class AuthenticationController {

    private final AuthenticationService authenticationService;

    @Autowired
    public AuthenticationController(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }

    @RequestMapping(method = RequestMethod.POST, path = "/login", produces = "application/json")
    public ResponseEntity<LoginResponse> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {
        return ResponseEntity.status(HttpStatus.OK).body(this.authenticationService.authenticate(loginRequest));
    }

    @RequestMapping(method = RequestMethod.POST, path = "/signup", produces = "application/json")
    public ResponseEntity<Void> registerUser(@Valid @RequestBody SignUpRequest signUpRequest) {
        this.authenticationService.register(signUpRequest);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @PreAuthorize("hasRole('USER')")
    @RequestMapping(path = "/user/me", method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity<UserSummary> getCurrentUser(@CurrentUser UserPrincipal currentUser) {
        UserSummary userSummary = new UserSummary();
        userSummary.setUsername(currentUser.getUsername());
        userSummary.setName(currentUser.getName());
        userSummary.setId(currentUser.getId());
        return ResponseEntity.status(HttpStatus.OK).body(userSummary);
    }
}
