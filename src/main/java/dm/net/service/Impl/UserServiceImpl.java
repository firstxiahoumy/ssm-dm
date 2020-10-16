package dm.net.service.Impl;

import dm.net.dao.UserMapper;
import dm.net.pojo.ResultObj;
import dm.net.pojo.Users;
import dm.net.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.ImageFilter;
import java.util.Date;
import java.util.List;

/**
 *
 *
 * @author aliketh.xhmy
 */
@Service()
public class UserServiceImpl implements UserService {



    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper=userMapper;
    }

    public Users login(Users users) {

        return this.userMapper.login(users);
    }


    public boolean checkLogin(String uEmail, String uPwd) {

        return false;
    }

    public Integer register(Users users) {
        return userMapper.register(users);
    }

    public int forgot(Users users) {
        return userMapper.forgot(users);
    }

    public int modify(Users users) {
        return userMapper.modify(users);
    }

    public int logout(Users users) {
        return userMapper.logout(users);
    }

    public List<Users> judge(String uEmail) {
        return userMapper.judge(uEmail);
    }

    public int avatar(Users u) {
        return userMapper.avatar(u);
//        ResultObj result = new ResultObj();
//        int updated = userMapper.avatar(u);
//        if (updated > 0) {
//            result.setCode(1);
//            result.setMsg("更新头像成功");
//        } else {
//            result.setCode(0);
//            result.setMsg("更新头像失败");
//        }
//        return result;
    }

    /**
     * test 图片上传
     * @param pro
     * @return
     */
    @Override
    public int pro(Users pro) {
//        //通过uid查询此用户是否存在
//        Users results = userMapper.checkLogin(pro);
//        if(results == null ){
//            throw new UserNotFoundException("头像更新失败！没有找到该用户。");
//        }
//        if( results.getIsDelete().equals(1)){
//            throw new UserNotFoundException("头像更新失败！没有找到该用户。");
//        }
//
//        String modifiedUser = results.getUsername();
//        Date modifiedTime = new Date();
//        Integer rows = userMapper.modifiedAvatarById(uid, avatar, modifiedUser, modifiedTime);
//        if(rows != 1) {
//            throw new UpdateException("头像更新失败！更新时发送未知错误。");
//        }
        return userMapper.pro(pro);
    }


    public Users refresh(Users users) {

        return userMapper.refresh(users);
    }

}
