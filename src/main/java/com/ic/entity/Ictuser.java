package com.ic.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * Created by Administrator on 2017/12/25.
 */
@Entity
public class Ictuser {
    private String loginId;
    private String loginPass;
    private String name;
    private Date birthday;
    private String cellphone;
    private String department;

    @Id
    @Column(name = "loginID")
    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    @Basic
    @Column(name = "loginPass")
    public String getLoginPass() {
        return loginPass;
    }

    public void setLoginPass(String loginPass) {
        this.loginPass = loginPass;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "birthday")
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Basic
    @Column(name = "cellphone")
    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    @Basic
    @Column(name = "department")
    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Ictuser ictuser = (Ictuser) o;

        if (loginId != null ? !loginId.equals(ictuser.loginId) : ictuser.loginId != null) return false;
        if (loginPass != null ? !loginPass.equals(ictuser.loginPass) : ictuser.loginPass != null) return false;
        if (name != null ? !name.equals(ictuser.name) : ictuser.name != null) return false;
        if (birthday != null ? !birthday.equals(ictuser.birthday) : ictuser.birthday != null) return false;
        if (cellphone != null ? !cellphone.equals(ictuser.cellphone) : ictuser.cellphone != null) return false;
        if (department != null ? !department.equals(ictuser.department) : ictuser.department != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = loginId != null ? loginId.hashCode() : 0;
        result = 31 * result + (loginPass != null ? loginPass.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (birthday != null ? birthday.hashCode() : 0);
        result = 31 * result + (cellphone != null ? cellphone.hashCode() : 0);
        result = 31 * result + (department != null ? department.hashCode() : 0);
        return result;
    }
}
