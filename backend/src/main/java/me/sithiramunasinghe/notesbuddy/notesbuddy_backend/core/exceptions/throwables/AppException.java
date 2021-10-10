package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.exceptions.throwables;

import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

@Getter
@Setter
public class AppException extends RuntimeException {
    private HttpStatus httpStatus;

    public AppException(String message) {
        super(message);
    }

    public AppException(String message, HttpStatus httpStatus) {
        super(message);
        this.httpStatus = httpStatus;
    }

    public AppException(String message, Throwable cause) {
        super(message, cause);
    }
}
