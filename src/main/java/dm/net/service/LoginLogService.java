package dm.net.service;

import com.github.pagehelper.PageInfo;
import dm.net.pojo.LoginLog;
import dm.net.pojo.Params;
import dm.net.pojo.UserDate;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginLogService {
    /**
     * 增加
     * @param log
     * @return
     */
    int addLog(LoginLog log);

    /**
     * 根据id删除
     * @param id
     * @return
     */
    int deleteLogById(int id);


    /**
     * 根据id查询,返回
     * @param id
     * @return
     */
    LoginLog queryLogById(int id);


    /**
     * 查询全部,返回list集合
     * @param page
     * @param size
     * @return
     */
    List<LoginLog> queryAllLog(int page, int size);


    PageInfo<LoginLog> finds(Params params);

    long counts();
}
