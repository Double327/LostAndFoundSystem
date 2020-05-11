package cn.doublefloat.lostandfound.dao;

import cn.doublefloat.lostandfound.entity.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/8 10:33 下午
 */
@Repository("userDao")
public interface IUserDao {

    /**
     * 添加用户信息
     * @param user 用户信息
     */
    @Insert("insert into Users (id, username, password, email) values (#{id}, #{username}, #{password}, #{email})")
    public void addUser(User user);


    /**
     * 根据用户ID删除用户信息
     * @param id 用户ID
     */
    @Delete("delete from Users where id = #{id}")
    public void deleteUserById(String id);


    /**
     * 更新除ID外所有用户信息
     * @param user 用户信息
     */
    @Update("update Users set username = #{username}, password = #{password}, email = #{email}, phonenum = #{phoneNum}, qq = #{qq}, avatar = #{avatar}, role = #{role};")
    public void updateUser(User user);

    /**
     * 更新用户名
     * @param id 用户ID
     * @param username 新用户名
     */
    @Update("update Users set username = #{username} where id = #{id};")
    public void updateUsername(@Param("id") String id, @Param("username") String username);

    /**
     * 更新密码
     * @param id 用户ID
     * @param password 新用户密码
     */
    @Update("update Users set password = #{password} where id = #{id};")
    public void updatePassword(@Param("id") String id, @Param("password") String password);

    /**
     * 更新手机号
     * @param id 用户ID
     * @param phoneNum 新用户手机号
     */
    @Update("update Users set phonenum = #{phoneNum} where id = #{id};")
    public void updatePhoneNum(@Param("id") String id, @Param("phoneNum") String phoneNum);

    /**
     * 更新邮箱
     * @param id 用户ID
     * @param email 新用户邮箱
     */
    @Update("update Users set email = #{email} where id = #{id};")
    public void updateEmail(@Param("id") String id, @Param("email") String email);

    /**
     * 更新QQ号码
     * @param id 用户ID
     * @param qq 新用户QQ
     */
    @Update("update Users set qq = #{qq} where id = #{id};")
    public void updateQQ(@Param("id") String id, @Param("qq") String qq);

    /**
     * 更新头像
     * @param id 用户ID
     * @param avatar 头像
     */
    @Update("update Users set avatar = #{avatar} where id = #{id};")
    public void updateAvatar(@Param("id") String id, @Param("avatar") String avatar);


    /**
     * 更新用户角色
     * @param id 用户ID
     * @param role 角色
     */
    @Update("update Users set role = #{role} where id = #{id};")
    public void updateRole(@Param("id") String id, @Param("role") String role);

    /**
     * 获取所有用户信息
     * @return 所有用户信息
     */
    @Select("select * from Users;")
    public List<User> getAllUsers();

    /**
     * 根据用户ID获取用户信息
     * @param id 用户ID
     * @return 用户信息
     */
    @Select("select * from Users where id = #{id}")
    public User getUserById(String id);

    /**
     * 根据用户名和密码获取用户信息
     * @param username 用户名
     * @param password 密码
     * @return 用户信息
     */
    @Select("select * from Users where username = #{username} and password = #{password}")
    public User getUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    /**
     * 根据用户名获取用户信息
     * @param username 用户名
     * @return 用户信息
     */
    @Select("select * from  Users where username = #{username}")
    public List<User> getUsersByUsername(String username);
}
