package com.mz.entity;

/**
 * 定义User类
 * 
 * @author xueyuan
 * @since 1.0
 **/
public class User {
    private String username;
    private String password;
    private String createTime;
    private String authority;


    public String getUsername() {
        return username;
    }


    public void setUsername(String username) {
        this.username = username;
    }


    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password;
    }


    public String getCreateTime() {
        return createTime;
    }


    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }


    public String getAuthority() {
        return authority;
    }


    public void setAuthority(String authority) {
        this.authority = authority;
    }

}
