package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.exceptions;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.exceptions.dto.ApiError;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.exceptions.throwables.AppException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@Order(Ordered.HIGHEST_PRECEDENCE)
@RestControllerAdvice
public class AppExceptionHandler extends ResponseEntityExceptionHandler {

    @ResponseStatus(code = HttpStatus.BAD_REQUEST)
    @ExceptionHandler(value = {AppException.class})
    public ResponseEntity<ApiError> handleGenericApplicationException(AppException appException) {
        ApiError apiError = new ApiError();
        apiError.setHttpStatus(appException.getHttpStatus());
        apiError.setMessage(apiError.getMessage());
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(apiError);
    }

}
