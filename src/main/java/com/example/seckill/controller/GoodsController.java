package com.example.seckill.controller;

import com.example.seckill.pojo.User;
import com.example.seckill.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// 商品
@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private IUserService userService;

    @RequestMapping("/toList")
//    public String toList(HttpServletRequest request, HttpServletResponse response, Model model, @CookieValue("userTicket") String ticket){
//        // 如果cookie为空，登录
//        if(StringUtils.isEmpty(ticket)){
//            return "login";
//        }
//        // User user = (User)session.getAttribute(ticket);
//        User user = userService.getUserByCookie(ticket, request, response);
//        if(user == null){
//            return "login";
//        }
    public String toList(Model model, User user){
        model.addAttribute("user", user);
        return "goodsList";
    }
}
