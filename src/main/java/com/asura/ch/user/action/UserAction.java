package com.asura.ch.user.action;

import com.asura.ch.util.Mail;
import com.opensymphony.xwork2.ActionSupport;


public class UserAction extends ActionSupport {
    private Mail mail;

    private String email;
    private int code;
    private String password;
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Mail getMail() {
        return mail;
    }

    public void setMail(Mail mail) {
        this.mail = mail;
    }

    public String genCode()
    {
        code=(int)(Math.random()*(9999-1000+1)+1000);
        mail.sendMail(email,code);
        return "returnjson";
    }
    public String regPage() {
        return "register";
    }

    @Override
    public void validate() {
        System.out.println("run validate");
    }
    public String regCheck() {

        return SUCCESS;
    }
}
