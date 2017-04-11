package cn.no7player.mapper;

import org.apache.ibatis.annotations.Param;

import cn.no7player.model.User;

/**
 * Created by zl on 2015/8/27.
 */
public interface UserMapper 
{
	public User login(@Param("username") String username,@Param("password") String password);
    public User findUserInfo();
    public void registor(User user);
    
}
