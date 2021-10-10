package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.Date;

@Data
public class NoteResponse {
    private Long id;
    private String title;
    @JsonProperty("note_body")
    private String noteBody;
    @JsonProperty("created_at")
    private Date createdAt;
    @JsonProperty("updated_at")
    private Date updatedAt;
}
