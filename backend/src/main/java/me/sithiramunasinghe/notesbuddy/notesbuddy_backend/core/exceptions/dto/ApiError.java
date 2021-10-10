package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.exceptions.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import org.springframework.http.HttpStatus;

@Data
public class ApiError {
    private String object;
    private String field;
    @JsonProperty("http_status")
    private HttpStatus httpStatus;
    @JsonProperty("rejected_value")
    private Object rejectedValue;
    private String message;
}
