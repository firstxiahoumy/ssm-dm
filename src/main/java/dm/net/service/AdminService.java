package dm.net.service;

import dm.net.pojo.Admin;
import dm.net.pojo.Users;

import java.util.List;

public interface AdminService {
    //管理员-用户操作层
    /**
     * login
     *
     * @param admin
     * @return
     */
    Admin login(Admin admin);

    /**
     * register
     *
     * @param admin
     * @return
     */
    Integer register(Admin admin);
    /**
     * checkEmail
     *
     * @param email
     * @return
     */
    List<Admin> checkEmail(String email);
    /**
     * forgot
     *
     * @param admin
     * @return
     */
    int forgot(Admin admin);


    //增加
    int addAdmin(Admin admin);
    int addUser(Users users);

    //根据id删除
    int deleteAdminById(int id);
    int deleteUserById(int id);

    //更新
    int updateAdmin(Admin admin);
    int updateUser(Users users);

    //根据id查询,返回
    Admin queryAdminById(int id);
    Admin queryUserById(int id);

    //查询全部,返回list集合
    List<Admin> queryAllAdmin();
    List<Users> queryAllUser();

    //搜索
    Admin queryAdminByEmail(String email);
    Admin queryUserByEmail(String uEmail);



}
