package dm.net.dao;


import dm.net.pojo.Admin;
import dm.net.pojo.UserDate;
import dm.net.pojo.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDateMapper {


    /**
     * 增加
     * @param userDate
     * @return
     */
    int addUerDate(UserDate userDate);

    /**
     * 根据id删除
     * @param id
     * @return
     */
    int deleteUserDateById(int id);


    /**
     * 更新
     * @param userDate
     * @return
     */
    int updateUserDate(UserDate userDate);


    /**
     * 根据id查询,返回
     * @param id
     * @return
     */
    UserDate queryUserDateById(int id);



    /**
     * 查询全部,返回list集合
     * @return
     * @param uEmail
     */
    List<UserDate> queryAllUserDate( @Param("iEmail") String uEmail);


    /**
     * 搜索
     * @param ann
     * @return
     */
    List<UserDate> queryUserDateByAnn (@Param("dAnn") String ann);

    /**
     * tag
     * @param tag
     * @return
     */
    List<UserDate> queryByTag(@Param("dTag") String tag);


}
