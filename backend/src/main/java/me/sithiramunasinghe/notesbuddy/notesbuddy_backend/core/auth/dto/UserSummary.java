package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.auth.dto;

import lombok.Data;

@Data
public class UserSummary {
    private Long id;
    private String username;
    private String name;
}
