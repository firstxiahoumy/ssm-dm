package dm.net.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigInteger;
import java.security.Timestamp;

public class UserDate {

    private BigInteger dId;
    private String  iEmail;
    private String  dLink;
    private String dTag;
    private String dAnn;
    private String iTel;
    private Timestamp iTime;
//    private Date iTime

    public UserDate(){}

    public BigInteger getdId() {
        return dId;
    }

    public void setdId(BigInteger dId) {
        this.dId = dId;
    }

    public String getiEmail() {
        return iEmail;
    }

    public void setiEmail(String iEmail) {
        this.iEmail = iEmail;
    }

    public String getdLink() {
        return dLink;
    }

    public void setdLink(String dLink) {
        this.dLink = dLink;
    }

    public String getdTag() {
        return dTag;
    }

    public void setdTag(String dTag) {
        this.dTag = dTag;
    }

    public String getdAnn() {
        return dAnn;
    }

    public void setdAnn(String dAnn) {
        this.dAnn = dAnn;
    }

    public String getiTel() {
        return iTel;
    }

    public void setiTel(String iTel) {
        this.iTel = iTel;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    public Timestamp getiTime() {
        return iTime;
    }

    public void setiTime(Timestamp iTime) {
        this.iTime = iTime;
    }


//    public Date getiTime() {
//        return iTime;
//    }
//
//    public void setiTime(Date iTime) {
//        this.iTime = iTime;
//    }
}
