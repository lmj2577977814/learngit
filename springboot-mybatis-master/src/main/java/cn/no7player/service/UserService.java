package cn.no7player.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.no7player.mapper.UserMapper;
import cn.no7player.model.User;

/**
 * Created by zl on 2015/8/27.
 */

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

  
    public User Login(String username,String password)
    {
    	User user1=userMapper.login(username,password);
    	return user1;
    }
    public void registor(User user)
    {
    	userMapper.registor(user);
    }

}
