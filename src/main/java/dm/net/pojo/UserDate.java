package dm.net.pojo;

import java.math.BigInteger;
import java.security.Timestamp;

public class UserDate {

    private Integer dId;
    private String  iEmail;
    private String  dLink;
    private String dTag;
    private String dAnn;
    private BigInteger iTel;
    private Timestamp iTime;
//    private Date iTime

    public UserDate(){}

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
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

    public BigInteger getiTel() {
        return iTel;
    }

    public void setiTel(BigInteger iTel) {
        this.iTel = iTel;
    }

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
