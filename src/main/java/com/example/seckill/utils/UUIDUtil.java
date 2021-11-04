package com.example.seckill.utils;

import java.util.UUID;

/**
 * UUID工具类
 *
 * @author movee
 * @since 1.0.0
 */
public class UUIDUtil {
    public static String uuid() {
        return UUID.randomUUID().toString().replace("-", "");
    }
}