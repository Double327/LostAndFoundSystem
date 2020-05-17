package cn.doublefloat.lostandfound.service;

import cn.doublefloat.lostandfound.entity.LafInformation;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/12 4:01 下午
 */
public interface ILafInformationService {

    /**
     * 添加信息
     *
     * @param info 信息
     */
    void addLafInformation(LafInformation info);


    /**
     * 删除信息
     *
     * @param id 信息编号
     */
    @Delete("delete from LAFInformation where id = #{id}")
    void deleteLafInfo(String id);


    /**
     * 更新信息标题
     *
     * @param id    信息编号
     * @param title 信息标题
     */
    @Update("update LAFInformation set title = #{title} where id = #{id}")
    void updateLafInfoTitle(String id, String title);


    /**
     * 更改信息状态
     *
     * @param id     信息编号
     * @param status 状态信息
     */
    void updateLafInfoStatus(String id, Integer status);


    /**
     * 获取所有信息
     *
     * @return 所有信息
     */
    List<LafInformation> getAllInformation();

    /**
     * 根据状态查找丢失、找回信息
     *
     * @param status 状态
     * @return 信息
     */
    List<LafInformation> getAllInformationByStatus(Integer status);


    /**
     * 根据ID获取信息
     *
     * @param id ID
     * @return 信息
     */
    LafInformation getLafInfoById(String id);

    /**
     * 根据作者ID查找
     *
     * @param userId 作者ID
     * @param page 当前页数
     * @return 信息
     */
    List<LafInformation> getLafInfoByUserIdWithPage(String userId, Integer page);


    /**
     * 根据标题获取信息
     *
     * @param title 标题
     * @return 信息
     */
    List<LafInformation> getLafInfoByName(String title);

    /**
     * 获取丢失找回信息条数
     *
     * @return 信息条数
     */
    @Select("select * from LAFInformation")
    Integer getQuantityOfLafInfo();

}
