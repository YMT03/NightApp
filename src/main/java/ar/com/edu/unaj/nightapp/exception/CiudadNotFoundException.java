package ar.com.edu.unaj.nightapp.exception;

import ar.com.edu.unaj.nightapp.common.Messages;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND, reason= Messages.CIUDAD_NOT_FOUND_EXCEPTION)
public class CiudadNotFoundException extends RuntimeException {
}
