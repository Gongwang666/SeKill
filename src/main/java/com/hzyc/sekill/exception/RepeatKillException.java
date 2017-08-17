package com.hzyc.sekill.exception;

public class RepeatKillException extends SecKillException{

	private static final long serialVersionUID = 1294040432801996832L;

	public RepeatKillException(String message) {
		super(message);
	}

	public RepeatKillException(String message, Throwable cause) {
		super(message, cause);
	}
	
}
