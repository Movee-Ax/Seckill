package com.example.seckill.utils;



import org.springframework.util.StringUtils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

// 手机号码校验
public class ValidatorUtil {
    private static final Pattern mobile_pattern = Pattern.compile("^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17[013678])|(18[0,5-9]))\\d{8}$");
    public static boolean isMobile(String mobile){
        if(StringUtils.isEmpty(mobile)){
            return false;
        }
        Matcher matcher = mobile_pattern.matcher(mobile);
        return matcher.matches();
    }
}
