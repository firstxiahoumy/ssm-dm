package dm.net.util.file;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class UploadUtil {

    private static JSONField JSONUtil;

    /**
     * 单文件上传
     * @param file
     * @param request
     * @return
     * @throws IllegalStateException
     * @throws IOException
     * @throws JSONException
     */
//    public static String simUpload(MultipartFile file, HttpServletRequest request)
//            throws IllegalStateException, IOException, JSONException {
//
//        if(!file.isEmpty()){
//            String path = request.getSession().getServletContext().getRealPath("/upload");
//            //定义文件
//            File parent = new File(path);
//            if(!parent.exists()) parent.mkdirs();
//
//            HashMap<String, Object> map = new HashMap<String,Object>();
//
//            String oldName = file.getOriginalFilename();
//
//            long size = file.getSize();
//
//            //使用TmFileUtil文件上传工具获取文件的各种信息
//            //优化文件大小
//            String sizeString = TmFileUtil.countFileSize(size);
//            //获取文件后缀名
//            String ext = TmFileUtil.getExtNoPoint(oldName);
//            //随机重命名，10位时间字符串
//            String newFileName = TmFileUtil.generateFileName(oldName, 10, "yyyyMMddHHmmss");
//
//            String url = "upload/"+newFileName;
//
//            //文件传输，parent文件
//            file.transferTo(new File(parent, newFileName));
//
//            map.put("oldname",oldName);//文件原名称
//            map.put("ext",ext);
//            map.put("size",sizeString);
//            map.put("name",newFileName);//文件新名称
//            map.put("url",url);
//
//            //以json方式输出到页面
//            return JSONUtil.serialize(map);
//        }else{
//            return null;
//        }
//    }

    /**
     * 多文件上传
     * @param files
     * @param request
     * @return
     * @throws IllegalStateException
     * @throws IOException
     * @throws JSONException
     */
//    public static List<HashMap<String, Object>> mutlUpload(MultipartFile[] files, HttpServletRequest request)
//            throws IllegalStateException, IOException, JSONException{
//
//        if(files.length > 0){
//            String path = request.getSession().getServletContext().getRealPath("/upload");
//            //定义文件
//            File parent = new File(path);
//            if(!parent.exists()) parent.mkdirs();
//
//            //创建这个集合保存所有文件的信息
//            List<HashMap<String, Object>> listMap = new ArrayList<HashMap<String, Object>>();
//
//            //循环多次上传多个文件
//            for (MultipartFile file : files) {
//
//                //创建map对象保存每一个文件的信息
//                HashMap<String, Object> map = new HashMap<String,Object>();
//
//                String oldName = file.getOriginalFilename();
//
//                long size = file.getSize();
//
//                //使用TmFileUtil文件上传工具获取文件的各种信息
//                //优化文件大小
//                String sizeString = TmFileUtil.countFileSize(size);
//                //获取文件后缀名
//                String ext = TmFileUtil.getExtNoPoint(oldName);
//                //随机重命名，10位时间字符串
//                String newFileName = TmFileUtil.generateFileName(oldName, 10, "yyyyMMddHHmmss");
//
//                String url = "upload/"+newFileName;
//
//                //文件传输，parent文件
//                file.transferTo(new File(parent, newFileName));
//
//                map.put("oldname",oldName);//文件原名称
//                map.put("ext",ext);
//                map.put("size",sizeString);
//                map.put("name",newFileName);//文件新名称
//                map.put("url",url);
//
//                listMap.add(map);
//            }
//
//            //以json方式输出到页面
//            return listMap;
//        }else{
//            return null;
//        }
//    }


    /**
     * 将文件的字节数转换成文件的大小
     * com.krry.uitl
     * 方法名：format
     * @author krry
     * @param size
     * @return String
     * @exception
     * @since  1.0.0
     */
//    public static String format(long size){
//        float fsize = size;
//        String fileSizeString;
//        if (fsize < 1024) {
//            fileSizeString = String.format("%.2f", fsize) + "B"; //2f表示保留两位小数
//        } else if (fsize < 1048576) {
//            fileSizeString = String.format("%.2f", fsize/1024) + "KB";
//        } else if (fsize < 1073741824) {
//            fileSizeString = String.format("%.2f", fsize/1024/1024) + "MB";
//        } else if (fsize < 1024 * 1024 * 1024) {
//            fileSizeString = String.format("%.2f", fsize/1024/1024/1024) + "GB";
//        } else {
//            fileSizeString = "0B";
//        }
//        return fileSizeString;
//    }
}
