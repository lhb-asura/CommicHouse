package com.asura.ch.util;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class Mail {
    private MailSender mailSender;

    public SimpleMailMessage getMailMessage() {
        return mailMessage;
    }

    public void setMailMessage(SimpleMailMessage mailMessage) {
        this.mailMessage = mailMessage;
    }

    private SimpleMailMessage mailMessage;

    public void setMailSender(MailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void sendMail(String to,int code) {
        SimpleMailMessage message=new SimpleMailMessage(mailMessage);
        message.setText(String.format(mailMessage.getText(),to,code));
        mailSender.send(message);
    }

}
