package dm.net.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 加在自定义注解上的注解 叫做元注解
 * @Target 指定注解使用的范围
 */
@Target(ElementType.METHOD)     //在什么上使用注解  指定注解使用地方
@Retention(RetentionPolicy.RUNTIME)
public @interface AdminLogAnnotion {
    String value() default "";
}
