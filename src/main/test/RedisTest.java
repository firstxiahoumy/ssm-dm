package dm.net.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"applicationContext.xml"})
public class RedisTest {
//    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-redis.xml");
    @Autowired
    private RedisTemplate redisTemplate;


    @Test
    public void test1() {
        ValueOperations valueOperations = redisTemplate.opsForValue();
        valueOperations.set("first", "hello word");
        System.out.println(valueOperations.get("first"));
    }



}




