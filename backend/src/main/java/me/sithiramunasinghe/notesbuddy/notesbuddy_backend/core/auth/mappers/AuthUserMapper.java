package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.mappers;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.entities.User;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto.SignUpRequest;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface AuthUserMapper {
    AuthUserMapper INSTANCE = Mappers.getMapper(AuthUserMapper.class);

    User mapUser(SignUpRequest signUpRequest);
}
