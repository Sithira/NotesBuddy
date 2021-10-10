package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class NoteRequest {
    private Long id;
    private String title;
    @JsonProperty("note_body")
    private String noteBody;
}
