package dm.net.service.Impl;

import dm.net.dao.AdminMapper;
import dm.net.pojo.Admin;
import dm.net.pojo.Users;
import dm.net.service.AdminService;

import java.util.List;


public class AdminServiceImpl implements AdminService {
    /**
     *
     */
    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper=adminMapper;
    }

    public int addAdmin(Admin admin) {
        return this.adminMapper.addAdmin(admin);
    }

    public int addUser(Users users) {
        return this.adminMapper.addUser(users);
    }

    public int deleteAdminById(int id) {
        return this.adminMapper.deleteAdminById(id);
    }

    public int deleteUserById(int id) {
        return this.adminMapper.deleteUserById(id);
    }

    public int updateAdmin(Admin admin) {
        return this.adminMapper.updateAdmin(admin);
    }

    public int updateUser(Users users) {
        return this.adminMapper.updateUser(users);
    }

    public Admin queryAdminById(int id) {
        return this.adminMapper.queryAdminById(id);
    }

    public Admin queryUserById(int id) {
        return this.adminMapper.queryUserById(id);
    }

    public List<Admin> queryAllAdmin() {
        return this.adminMapper.queryAllAdmin();
    }

    public List<Users> queryAllUser() {
        return this.adminMapper.queryAllUser();
    }

    public Admin queryAdminByEmail(String userEmail) {
        return this.adminMapper.queryAdminByEmail(userEmail);
    }

    public Admin queryUserByEmail(String userEmail) {
        return this.adminMapper.queryUserByEmail(userEmail);
    }


    /**
     * login
     *
     * @param admin
     * @return
     */
    public Admin login(Admin admin) {
        return adminMapper.login(admin);
    }

    /**
     * register
     *
     * @param admin
     * @return
     */
    public Integer register(Admin admin) {
        return adminMapper.register(admin);
    }

    /**
     * checkEmail(register)
     *
     * @param email
     * @return
     */
    public List<Admin> checkEmail(String email) {
        return adminMapper.checkEmail(email);
    }

    /**
     * forgot
     *
     * @param admin
     * @return
     */
    public int forgot(Admin admin) {
        return adminMapper.forgot(admin);
    }
}
