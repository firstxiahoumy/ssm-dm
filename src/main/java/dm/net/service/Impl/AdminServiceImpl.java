package dm.net.service.Impl;

import dm.net.dao.AdminMapper;
import dm.net.pojo.Admin;
import dm.net.pojo.Users;
import dm.net.service.AdminService;

import java.util.List;


public class AdminServiceImpl implements AdminService {

    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
    }

    public int addAdmin(Admin admin) {
        return 0;
    }

    public int addUser(Users users) {
        return 0;
    }

    public int deleteAdminById(int id) {
        return 0;
    }

    public int deleteUserById(int id) {
        return 0;
    }

    public int updateAdmin(Admin admin) {
        return 0;
    }

    public int updateUser(Users users) {
        return 0;
    }

    public Admin queryAdminById(int id) {
        return null;
    }

    public Admin queryUserById(int id) {
        return null;
    }

    public List<Admin> queryAllAdmin() {
        return null;
    }

    public List<Users> queryAllUser() {
        return null;
    }

    public Admin queryAdminByEmail(String userEmail) {
        return null;
    }

    public Admin queryUserByEmail(String userEmail) {
        return null;
    }
}
