package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class LoginRequest {
    @JsonProperty("username")
    private String usernameOrEmail;

    @JsonProperty("password")
    private String password;
}
