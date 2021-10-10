package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoteRequest {
    private Long id;

    @JsonProperty("local_id")
    private Long localId;

    private String title;

    private String description;

    private Integer color;

    private int priority;
}
