**说明**

1·项目环境

    win                                                 linux

    java            jdk 1.8.251                         jdk 1.8.251
    
    tomcat          tomcat-9.0.34                       tomcat-10.0.5
    
    maven           3.6.3                               3.6.3
            
    mysql           8.0.19                              8.0.19(mariaDB)
    
    redis           5.0.9                               6.0.5
    
    开发工具         IntelliJ 2019.3.3                  IntelliJ 2019.3.3

2·整体目录

    2.1 dm.net

        2.1.1 annotation            自定义注解
       
        2.1.2 aspect                spring aop 切面
        
        2.1.3 controller            控制台
        
        2.1.4 dao 层                mapper文件
        
        2.1.5 exception             异常处理跳转
        
        2.1.6 interceptor           拦截配置
        
        2.1.7 pojo                  实体类
        
        2.1.8 service               服务类
        
        2.1.9 servlet               spring webServlet类
        
        2.1.10 test                 测试类
      
        2.1.11 util                 工具类
        
            . file                          文件上传处理工具类
            
            . login                         登录日志处理工具类
            
            . redis                         redis 缓存处理工具类
            
            . token                         token 状态保持处理工具类
            
            . image                         头像图片处理工具类
            
    2.2 resources
        2.2.1 applicationContext    ssm总配置文件
        
        2.2.2 database.properties   数据库连接配置
        
        2.2.3 log4j.properties      日志配置文件
        
        2.2.4 mybatis-config        mybatis总配置文件
    
        2.2.5 redis.properties      redis缓存数据库连接配置文件
    
        2.2.6 spring-0dao           dao层配置文件
 
        2.2.7 spring-mvc            mvc配置文件
    
        2.2.8 spring-redis          redis缓存配置文件
    
        2.2.9  spring-service       服务层配置文件
    
    2.3 sql -- 安装项目之前先执行数据库文件 执行顺序为 **3-1-2** --
    
        2.3.1 dm_admin              管理员数据库文件
    
        2.3.2 dm_fk                 数据库外键文件
    
        2.3.3 dm_user               用户数据库文件    

**项目完成进度**  
    2020年9月6日： user整体页面基本完成  
        后期优化： 头像上传 、更改 、文件上传 、下载  、页面美化 、全站公共资源搜索（包含数据库）、  
        ajax异步刷新、token(登录状态保持)、redis（缓存）、security（安全）、邮箱 、验证码




**count 统计**

```xml
 <dynamic>
<select id="queryOrderCountByCondition" resultClass="order">
   
                select

            count(*) as id

                from

                       t_order_info<dynamic prepend="where">

    <isNotNull prepend="and" property="companyId">

        company_id = #companyId#

    </isNotNull>

 

    <isNotNull prepend="and" property="inMonth">

        date_sub(CURDATE(), INTERVAL 1 MONTH) &lt;= date(add_time)

    </isNotNull>

 

    <isNotNull prepend="and" property="productName">

        id in (select id from t_order_info  where id in(select order_id from t_order_product  where product_id in(SELECT t_product.id FROM t_product where t_product.name=#productName#)))

    </isNotNull>

 

    <isNotNull prepend="and" property="orderDateBegin">

        <![CDATA[ add_time >= #orderDateBegin#]]>

    </isNotNull>

    <isNotNull prepend="and" property="orderDateEnd">

        <![CDATA[ add_time <= #orderDateEnd#]]>

    </isNotNull>

</select>
   </dynamic>
   
  <select>
   　　　　　　　　　　select 
                    *,
                    
                    <if test="groupType == 1">
                        DATE_FORMAT(create_date,'%Y-%m-%d') groupDate
                    </if>
                    <if test="groupType == 2">
                        DATE_FORMAT(create_date,'%Y-%m') groupDate
                    </if>
                    <if test="groupType == 3">
                        DATE_FORMAT(create_date,'%Y') groupDate
                    </if>
                    
                FROM
                    member_count_detail
                WHERE
                    tid = #{tid}
                AND
                    DATE_FORMAT(create_date,'%Y-%m-%d') &gt;= #{satrtDate}  
                and
                    DATE_FORMAT(create_date,'%Y-%m-%d') &lt;= #{endDate}
</select>