package com.stumesystem.bean;

import javax.validation.constraints.Pattern;
import java.util.Date;
import java.util.List;

public class StuUser {
    private Integer id;

    private String name;

    private String nickname;

    private String password;

    private String sex;

    private Date brith;

    private Integer age;

    private String phone;

    private String state;

    private String docuAddress;

    private String roseName;

    public String getRoseName() {
        return roseName;
    }

    public void setRoseName(String roseName) {
        this.roseName = roseName;
    }

    @Pattern(regexp = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            ,message = "邮箱格式错误")
    private String email;

    private String imgHeah;

    private String yzm;

    private Integer flag;

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    private List<StuRose> roseList;

    public List<StuRose> getRoseList() {
        return roseList;
    }

    public void setRoseList(List<StuRose> roseList) {
        this.roseList = roseList;
    }

    public String getYzm() {
        return yzm;
    }

    public void setYzm(String yzm) {
        this.yzm = yzm;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBrith() {
        return brith;
    }

    public void setBrith(Date brith) {
        this.brith = brith;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getDocuAddress() {
        return docuAddress;
    }

    public void setDocuAddress(String docuAddress) {
        this.docuAddress = docuAddress == null ? null : docuAddress.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getImgHeah() {
        return imgHeah;
    }

    public void setImgHeah(String imgHeah) {
        this.imgHeah = imgHeah == null ? null : imgHeah.trim();
    }
}