package com.lww.action;

import com.lww.Bean.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class HelloAction  {

    //用于返回Json格式的User
    private User user;

    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }


    public String json() throws Exception {
        user=new User();
        user.setId("1");
        user.setUsername("GBF");
        user.setPassword("fdfdsf");

        return Action.SUCCESS;
    }


}
