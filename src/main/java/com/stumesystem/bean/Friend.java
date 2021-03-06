package com.stumesystem.bean;

import java.util.Date;

public class Friend {
    private Integer id;

    private Integer uid;

    private Date addTime;

    private Integer addUid;

    private String name;

    private String img;

    private String nickname;

    private Integer state;

    public void setImg(String img) {
        this.img = img;
    }

    public String getImg() {
        return img;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Integer getAddUid() {
        return addUid;
    }

    public void setAddUid(Integer addUid) {
        this.addUid = addUid;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}