package dm.net.service.Impl;

import dm.net.dao.AdminLoginInForMapper;
import dm.net.pojo.AdminLoginInFor;
import dm.net.service.AdminLoginInForService;

import java.util.List;

public class AdminLoginInForServiceImpl implements AdminLoginInForService {

    private AdminLoginInForMapper adminLoginInForMapper;

    public void setAdminLoginInForMapper(AdminLoginInForMapper adminLoginInForMapper) {
        this.adminLoginInForMapper = adminLoginInForMapper;
    }

    public int addLog(AdminLoginInFor log) {
        return this.adminLoginInForMapper.addLog(log);
    }

    public int deleteLogById(int id) {
        return this.adminLoginInForMapper.deleteLogById(id);
    }

    public AdminLoginInFor queryLogById(int id) {
        return this.adminLoginInForMapper.queryLogById(id);
    }

    public List<AdminLoginInFor> queryAllLog(int page, int size) {
        return this.adminLoginInForMapper.queryAllLog(page, size);
    }
}
