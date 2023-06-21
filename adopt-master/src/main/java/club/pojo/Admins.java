package club.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


@Data
public class Admins {
    private Integer id;
    private String adminName;
    private String adminPwd;
    private String realName;
    private String telephone;
    private String email;

    @JsonFormat(pattern = "yyyy-MM-dd")
    //主要是前后到后台的时间格式的转换
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    private String sex;
    private String pic;
    private String remark;

}
