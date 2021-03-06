package dm.net.dao;

import dm.net.pojo.AdminLoginInFor;
import dm.net.pojo.LoginLog;

import java.util.List;

public interface AdminLoginInForMapper {
    /**
     * 增加
     * @param log
     * @return
     */
    int addLog(AdminLoginInFor log);

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
    AdminLoginInFor queryLogById(int id);


    /**
     * 查询全部,返回list集合
     * @param page
     * @param size
     * @return
     */
    List<AdminLoginInFor> queryAllLog(int page, int size);
}
