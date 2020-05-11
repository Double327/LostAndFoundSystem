package cn.doublefloat.lostandfound.dao;

import cn.doublefloat.lostandfound.entity.LafInformation;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 丢失、找到物品信息数据持久层
 *
 * @author 李广帅
 * @date 2020/5/11 9:13 上午
 */
@Repository("lafInformationDao")
public interface ILafInformationDao {


    /**
     * 添加信息
     * @param info 信息
     */
    @Insert("insert into LAFInformation value (#{id), #{userId}, #{title}, #{type}, #{lostTime}, #{lostPosition}, #{summary}, #{image}, #{createTime}, #{status}")
    void addLafInformation(LafInformation info);


    /**
     * 删除信息
     * @param id 信息编号
     */
    @Delete("delete LAFInformation where id = #{id}")
    void deleteLafInfo(String id);


    /**
     * 更新信息标题
     * @param id 信息编号
     * @param title 信息标题
     */
    @Update("update LAFInformation set title = #{title} where id = #{id}")
    void updateLafInfoTitle(@Param("id") String id, @Param("title") String title);


    /**
     * 获取所有信息
     * @return 所有信息
     */
    @Select("select * from LAFInformation")
    List<LafInformation> getAllInformation();


    /**
     * 根据ID获取信息
     * @param id ID
     * @return 信息
     */
    @Select("select * from LAFInformation where id = #{id}")
    LafInformation getLafInfoById(String id);


    /**
     * 根据标题获取信息
     * @param title 标题
     * @return 信息
     */
    @Select("select * from LAFInformation where title like %#{title}%")
    List<LafInformation> getInfoByName(String title);

}
