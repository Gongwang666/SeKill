package com.hzyc.sekill.exception;

public class SecKillCloseException extends SecKillException{

	private static final long serialVersionUID = 3912077469989123384L;

	public SecKillCloseException(String message, Throwable cause) {
		super(message, cause);
	}

	public SecKillCloseException(String message) {
		super(message);
	}
	
}
