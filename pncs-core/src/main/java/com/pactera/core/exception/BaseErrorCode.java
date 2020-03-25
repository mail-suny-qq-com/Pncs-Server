package com.pactera.core.exception;

public interface BaseErrorCode<T extends Enum<T>> {

    int getCode();

    String getMsg(String... parameter);

}