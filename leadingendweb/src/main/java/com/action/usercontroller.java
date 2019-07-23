package com.action;

import com.alibaba.fastjson.JSON;
import com.entity.*;
import com.interceptor.Login;
import com.service.*;
import com.utils.SerializeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.utils.RedisClient;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;


@Controller
public class usercontroller {
    @Value("${spring.datasource.url}")
    private String url ;
    @Autowired
    IUser_infoService us;
    @Autowired
    IProductService ps;
    @Autowired
    IShopping_cartService sc;
    @Autowired
    private RedisClient redisClient;


    @RequestMapping(value="/userlogin",produces={"application/json;charset=UTF-8"})
    @ResponseBody
    public String userlogin(String pe, String pwd, HttpSession session, HttpServletRequest request, HttpServletResponse response)throws  Exception{
            Map<String,Object> mp=new HashMap<>();
            mp.put("pe",pe);
            mp.put("pwd",pwd);
            User_info u=us.userlogin(mp);
            String user = JSON.toJSONString(u);
        String js = null;
            if(u!=null) {
                // 跳转页面
                /*Cookie c2 = new Cookie("userinfo",  ""+u.getUid());
                c2.setMaxAge(30); // 设置30秒
                response.addCookie(c2); // 写cookie*/
                //redisClient.set("userinfo",u);
                redisClient.setex("userinfo",120,user);
                js = JSON.toJSONString(true);
            }else{
                js = JSON.toJSONString(false);
            }
        return js;
    }


}
