package dm.net.service;

import dm.net.pojo.UserDate;

import java.util.List;

public interface UserDateService {


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

    //

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
     */
    List<UserDate> queryAllUserDate();


    /**
     * 搜索
     * @param ann
     * @return
     */

    List<UserDate> queryUserDateByAnn(String ann);

    /**
     * tag select
     * @param tag
     * @return
     */
    List<UserDate> queryByTag(String tag);

}
