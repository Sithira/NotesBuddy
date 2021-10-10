package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.Date;

@Data
public class UserProfile {
    private Long id;
    private String username;
    private String name;
    @JsonProperty("joined_at")
    private Date joinedAt;
}
