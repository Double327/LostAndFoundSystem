package cn.doublefloat.lostandfound.entity;

import java.util.Date;

/**
 * 丢失、找到物品信息
 *
 * @author 李广帅
 * @date 2020/5/11 9:09 上午
 */
public class LafInformation {
    private String id;
    private String userId;
    private String title;
    private Integer type;
    private Date lostTime;
    private String lostPosition;
    private String summary;
    private String image;
    private Date createTime;
    private Integer status;

    public LafInformation() {
    }

    public LafInformation(String id, String userId, String title, Integer type, Date lostTime, String lostPosition, String summary, String image, Date createTime, Integer status) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.type = type;
        this.lostTime = lostTime;
        this.lostPosition = lostPosition;
        this.summary = summary;
        this.image = image;
        this.createTime = createTime;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getLostTime() {
        return lostTime;
    }

    public void setLostTime(Date lostTime) {
        this.lostTime = lostTime;
    }

    public String getLostPosition() {
        return lostPosition;
    }

    public void setLostPosition(String lostPosition) {
        this.lostPosition = lostPosition;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "LafInformation{" +
                "id='" + id + '\'' +
                ", userId='" + userId + '\'' +
                ", title='" + title + '\'' +
                ", type=" + type +
                ", lostTime=" + lostTime +
                ", lostPosition='" + lostPosition + '\'' +
                ", summary='" + summary + '\'' +
                ", image='" + image + '\'' +
                ", createTime=" + createTime +
                ", status=" + status +
                '}';
    }
}
