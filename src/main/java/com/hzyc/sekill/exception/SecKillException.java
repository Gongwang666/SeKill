package com.hzyc.sekill.exception;

public class SecKillException extends RuntimeException{

	private static final long serialVersionUID = -1801274037445092271L;

	public SecKillException(String message, Throwable cause) {
		super(message, cause);
	}

	public SecKillException(String message) {
		super(message);
	}
	
}
