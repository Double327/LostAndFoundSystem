package cn.doublefloat.lostandfound.service;

import cn.doublefloat.lostandfound.entity.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/9 5:22 下午
 */
public interface IUserService {

    /**
     * 添加用户信息
     * @param user 用户信息
     */
    public void addUser(User user);


    /**
     * 根据用户ID删除用户信息
     * @param id 用户ID
     */
    public void deleteUserById(String id);


    /**
     * 更新除ID外所有用户信息
     * @param user 用户信息
     */
    public void updateUser(User user);

    /**
     * 更新用户名
     * @param id 用户ID
     * @param username 新用户名
     */
    public void updateUsername(@Param("id") String id, @Param("username") String username);

    /**
     * 更新密码
     * @param id 用户ID
     * @param password 新用户密码
     */
    public void updatePassword(@Param("id") String id, @Param("password") String password);

    /**
     * 更新手机号
     * @param id 用户ID
     * @param phoneNum 新用户手机号
     */
    public void updatePhoneNum(@Param("id") String id, @Param("phoneNum") String phoneNum);

    /**
     * 更新邮箱
     * @param id 用户ID
     * @param email 新用户邮箱
     */
    public void updateEmail(@Param("id") String id, @Param("email") String email);

    /**
     * 更新QQ号码
     * @param id 用户ID
     * @param qq 新用户QQ
     */
    public void updateQQ(@Param("id") String id, @Param("qq") String qq);

    /**
     * 获取所有用户信息
     * @return 所有用户信息
     */
    public List<User> getAllUsers();

    /**
     * 根据用户ID获取用户信息
     * @param id 用户ID
     * @return 用户信息
     */
    public User getUserById(String id);

    /**
     * 根据用户名和密码获取用户信息
     * @param username 用户名
     * @param password 密码
     * @return 用户信息
     */
    public User getUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    /**
     * 检查用户名是否存在
     * @param username 用户名
     * @return 存在：true 不存在：false
     */
    public Boolean checkUsernameExist(String username);
}
