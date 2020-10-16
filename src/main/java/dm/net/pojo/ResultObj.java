package dm.net.pojo;

/**
 * 头像图片上传返回信息
 *
 * @author aliketh.xhmy
 */
public class ResultObj {
    private String code;
    private String sta;
    private String msg;

    public ResultObj() {

    }

    public String getCode(){
        return code;
    }

    public void setCode(String code){
        this.code = code;
    }

    public String getSta(){
        return sta;
    }

    public void setSta(String sta){
        this.sta = sta;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public ResultObj(String sta, String msg) {
        this.sta = sta;
        this.msg = msg;
        System.out.println("error :"+sta+" \n msg:"+msg);
    }

    @Override
    public String toString() {
        return "ResultObj{" +
                "code='" + code + '\'' +
                ", sta='" + sta + '\'' +
                ", msg='" + msg + '\'' +
                '}';
    }
}
