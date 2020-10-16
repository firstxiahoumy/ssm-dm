package dm.net.controller;

import dm.net.pojo.UploadFile;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/article")
public class ArticleController {


    @RequestMapping("/allBlog")
    public String allBlog() {

        return "user/allBlog";
    }

    @RequestMapping("/editorBlog")
    public String editorBlog() {

        return "user/editorBlog";
    }

    @RequestMapping("/toUploadBlog")
    public String toUploadBlog() {
        return "user/uploadBlog";
    }

    @RequestMapping("/uploadBlog")
    @ResponseBody
    public String uploadBlog(@RequestParam("scan") MultipartFile file, HttpServletRequest request,
                             HttpServletResponse response) throws IOException {

        UploadFile uploadFile = new UploadFile();
        //("/upload")是表示文件上传后的目标文件
        String path = request.getSession().getServletContext().getRealPath("/static/upload/mdFile");
        //获取文件名称
        String fileFileName = file.getOriginalFilename();
        //
        String suffix = fileFileName.substring(fileFileName.lastIndexOf("."));
        //
        byte[] fileSize = file.getBytes();


        //创建File对象，传入目标路径参数和文件名称
        File dir = new File(path, fileFileName);

        if (!dir.exists()) {  //如果dir代表的文件不存在，则创建
            dir.mkdir();
        }
        //如果存在就执行下面操作
        file.transferTo(dir);//将上传的实体文件复制到制定目录upload下

        uploadFile.setFileName(fileFileName);
        uploadFile.setUuid(UUID.randomUUID().toString());
        uploadFile.setFileFormat(suffix);
        uploadFile.setFileUrl(dir.toString());

        return "user/uploadBlog";


    }

    @RequestMapping("/toDraftBlog")
    public String toDraftBlog() {

        return "user/draftBlog";
    }


}
