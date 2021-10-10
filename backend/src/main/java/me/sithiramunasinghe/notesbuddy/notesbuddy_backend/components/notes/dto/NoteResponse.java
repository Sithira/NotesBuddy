package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class NoteResponse {
    private Long id;

    @JsonProperty("local_id")
    private Long localId;

    private String title;

    private String description;

    private Integer color;

    private int priority;

    List<NoteDocumentResponse> documents;

    @JsonProperty("created_at")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String createdAt;

    @JsonProperty("updated_at")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String updatedAt;
}
