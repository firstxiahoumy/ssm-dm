package dm.net.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import dm.net.dao.LoginLogMapper;
import dm.net.pojo.LoginLog;
import dm.net.pojo.Params;
import dm.net.pojo.UserDate;
import dm.net.service.LoginLogService;

import java.util.List;

public class LoginLogServiceImpl implements LoginLogService {

    private LoginLogMapper loginLogMapper;
    public void setLoginLogMapper(LoginLogMapper loginLogMapper) {
        this.loginLogMapper=loginLogMapper;
    }

    public int addLog(LoginLog log) {
        return this.loginLogMapper.addLog(log);
    }

    public int deleteLogById(int id) {
        return this.loginLogMapper.deleteLogById(id);
    }

    public LoginLog queryLogById(int id) {
        return this.loginLogMapper.queryLogById(id);
    }

    public List<LoginLog> queryAllLog(int page, int size) {
        PageHelper.startPage(page,size);
        return this.loginLogMapper.queryAllLog(page,size);
    }

    /**
     * 查询
     */
    public PageInfo<LoginLog> finds(Params params) {

        //查询
        int pageNo = params.getPageNo();
        int pageSize = params.getPageSize();

        PageHelper.startPage(pageNo, pageSize);
        List<LoginLog> blogs = loginLogMapper.finds();
        //用PageInfo对结果进行包装
        PageInfo<LoginLog> pageInfo = new PageInfo<LoginLog>();

        return pageInfo;

    }

    /**
     * 计算
     * @return
     */
    public long counts(){

        long couts = loginLogMapper.counts();

        return couts;
    }

}
