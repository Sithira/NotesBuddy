package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.Date;

@Data
public class NoteDocumentResponse {
    @JsonProperty("note_id")
    private Long noteId;

    @JsonProperty("url_path")
    private String urlPath;

    @JsonProperty("created_at")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String createdAt;

    @JsonProperty("updated_at")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String updatedAt;
}
