package dm.net.pojo;

import java.awt.image.ImageFilter;
import java.io.Serializable;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Date;

public class Users implements Serializable {

    /**
     * https://www.cnblogs.com/Lyn4ever/p/11045758.html
     * DefaultSerializer requires a Serializable payload but received an object of type [dm.net.pojo.Users]
     * public class xxx implements Serializable
     */
    private Integer uId;
    private String uEmail;
    private String uPwd;
    private BigInteger uTel;
    private String uName;
    private BigInteger uNum;
    private int uAge;
    private String uSex;
    private String pro;
    private byte[] uAvatar;
    private String uAdd;
    private Timestamp uTime;

    public Users(){

    }


    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }
//
//    public void setuId(int uId) {
//        this.uId = uId;
//    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public String getuPwd() {
        return uPwd;
    }

    public void setuPwd(String uPwd) {
        this.uPwd = uPwd;
    }

    public BigInteger getuTel() {
        return uTel;
    }

    public void setuTel(BigInteger uTel) {
        this.uTel = uTel;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public BigInteger getuNum() {
        return uNum;
    }

    public void setuNum(BigInteger uNum) {
        this.uNum = uNum;
    }

    public int getuAge() {
        return uAge;
    }

    public void setuAge(int uAge) {
        this.uAge = uAge;
    }

    public String getuSex() {
        return uSex;
    }

    public void setuSex(String uSex) {
        this.uSex = uSex;
    }

    public String getuAdd() {
        return uAdd;
    }

    public void setuAdd(String uAdd) {
        this.uAdd = uAdd;
    }

    public byte[] getuAvatar() {
        return uAvatar;
    }

    public void setuAvatar(byte[] uAvatar) {
        this.uAvatar = uAvatar;
    }

    public Timestamp getuTime() {
        return uTime;
    }

    public void setuTime(Timestamp uTime) {
        this.uTime = uTime;
    }



    public String getPro() {
        return pro;
    }

    public void setPro(String pro) {
        this.pro = pro;
    }




    public String toString() {

        return "Users{" +
                "uId=" + uId +
                ", uEmail='" + uEmail + '\'' +
                ", uPwd='" + uPwd + '\'' +
                ", uTel=" + uTel +
                ", uName='" + uName + '\'' +
                ", uNum=" + uNum +
                ", uAge=" + uAge +
                ", uSex='" + uSex + '\'' +
                ", pro='" + pro + '\'' +
                ", uAvatar=" + Arrays.toString(uAvatar) +
                ", uAdd='" + uAdd + '\'' +
                ", uTime=" + uTime +
                '}';
    }

    public Users(Integer uId, String uEmail, String uPwd,
                 BigInteger uTel, String uName, BigInteger uNum, int uAge,
                 String uSex, String pro, byte[] uAvatar, String uAdd, Timestamp uTime) {
        this.uId = uId;
        this.uEmail = uEmail;
        this.uPwd = uPwd;
        this.uTel = uTel;
        this.uName = uName;
        this.uNum = uNum;
        this.uAge = uAge;
        this.uSex = uSex;
        this.pro = pro;
        this.uAvatar = uAvatar;
        this.uAdd = uAdd;
        this.uTime = uTime;
    }
}
