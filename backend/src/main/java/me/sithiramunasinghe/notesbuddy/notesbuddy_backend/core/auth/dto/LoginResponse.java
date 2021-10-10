package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class LoginResponse {
    @JsonProperty("access_token")
    private String accessToken;

    private String tokenType = "Bearer";
}
