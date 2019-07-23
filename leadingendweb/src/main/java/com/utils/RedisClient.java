package com.utils;

import com.alibaba.fastjson.JSON;
import com.entity.User_info;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

@Component("redisClient")
public class RedisClient {

    @Autowired
    private JedisPool jedisPool;

    public void set(String key, Object value){
        Jedis jedis = null;
        try {
            jedis = jedisPool.getResource();
            jedis.set(key.getBytes(), SerializeUtil.serialize(value));
        } catch(Exception e){
           e.printStackTrace(); 
        }finally {
            //返还到连接池
            jedis.close();
        }
    }

    public Object get(String key){
        Object value = null;
        Jedis jedis = null;
        try {
            jedis = jedisPool.getResource();
            byte[] temp = jedis.get(key.getBytes());
            value = SerializeUtil.unserialize(temp);
        } catch(Exception e){
            e.printStackTrace();
        }finally {
            //返还到连接池
            jedis.close();
        }
        return value;
    }

    public <T> Object getJO(String key,Class<T> clas){
        Object jsObj = null;
        Jedis jedis = null;
        try {
            jedis = jedisPool.getResource();
            jsObj = JSON.parseObject(jedis.get(key), clas);
        } catch(Exception e){
            e.printStackTrace();
        }finally {
            //返还到连接池
            jedis.close();
        }
        return jsObj;
    }

    public long del(String key){
        long num = 0;
        Jedis jedis = null;
        try {
            jedis = jedisPool.getResource();
            num = jedis.del(key.getBytes());
        } catch(Exception e){
            e.printStackTrace();
        }finally {
            //返还到连接池
            jedis.close();
        }
        return num;
    }

    public String setex(String key,int time,String value){
        String result = "NO";
        Jedis jedis = null;
        try {
            jedis = jedisPool.getResource();
            result = jedis.setex(key,time,value);
        } catch(Exception e){
            e.printStackTrace();
        }finally {
            //返还到连接池
            jedis.close();
        }
        return result;
    }
}
