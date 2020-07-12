package dm.net.pojo;




import java.math.BigInteger;
import java.util.Date;

public class Users {

    private Integer uId;
    private String uEmail;
    private String uPwd;
    private BigInteger uTel;
    private String uName;
    private BigInteger uNum;
    private int uAge;
    private String uSex;
//    private ImageFilter uAvatar;
    private String uAdd;
    private Date uTime;

    public Users(){

    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

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

//    public ImageFilter getuAvatar() {
//        return uAvatar;
//    }
//
//    public void setuAvatar(ImageFilter uAvatar) {
//        this.uAvatar = uAvatar;
//    }

    public Date getuTime() {
        return uTime;
    }

    public void setuTime(Date uTime) {
        this.uTime = uTime;
    }
}
