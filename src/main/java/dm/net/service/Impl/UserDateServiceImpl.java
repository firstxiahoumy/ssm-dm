package dm.net.service.Impl;


import com.github.pagehelper.PageHelper;
import dm.net.dao.UserDateMapper;
import dm.net.pojo.UserDate;
import dm.net.service.UserDateService;

import java.util.List;

public class UserDateServiceImpl implements UserDateService {

    private UserDateMapper userDateMapper;

    public void setUserDateMapper(UserDateMapper userDateMapper) {
        this.userDateMapper = userDateMapper;
    }

    public int addUerDate(UserDate userDate) {
        return this.userDateMapper.addUerDate(userDate);
    }

    public int deleteUserDateById(int id) {
        return this.userDateMapper.deleteUserDateById(id);
    }

    public int updateUserDate(UserDate userDate) {
        return this.userDateMapper.updateUserDate(userDate);
    }

    public UserDate queryUserDateById(int id) {
        return this.userDateMapper.queryUserDateById(id);
    }

    public List<UserDate> queryAllUserDate(String uEmail) {
        return this.userDateMapper.queryAllUserDate(uEmail);
    }

    public List<UserDate> queryUserDateByAnn(String ann) {
        return this.userDateMapper.queryUserDateByAnn(ann);
    }

    /**
     * select
     *
     * install
     * compress
     * media
     * directory
     */
    public List<UserDate> queryByTag(String tag) {
        return this.userDateMapper.queryByTag(tag);
    }


}
