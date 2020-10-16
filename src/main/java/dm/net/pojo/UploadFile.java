package dm.net.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.UUID;

public class UploadFile implements Serializable {
    private Integer id;
    private String uuid;
    private String fileFormat;
    private String fileUrl;
    private String fileName;
    private Timestamp time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getFileFormat() {
        return fileFormat;
    }

    public void setFileFormat(String fileFormat) {
        this.fileFormat = fileFormat;
    }

    public String getFileUrl() {
        return fileUrl;
    }

    public void setFileUrl(String fileUrl) {
        this.fileUrl = fileUrl;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public UploadFile() {

    }

    public String toString() {
        return "uploadFile{" +
                "id=" + id +
                ", uuid='" + uuid + '\'' +
                ", fileFormat='" + fileFormat + '\'' +
                ", fileUrl='" + fileUrl + '\'' +
                ", fileName='" + fileName + '\'' +
                ", time=" + time +
                '}';
    }
}
