package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 物流公司
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-10-13 10:06:51
 */
@TableName("wuliugongsi")
public class WuliugongsiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public WuliugongsiEntity() {
		
	}
	
	public WuliugongsiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 物流公司
	 */
					
	private String wuliugongsi;
	
	/**
	 * 密码
	 */
					
	private String mima;
	
	/**
	 * 联系人
	 */
					
	private String lianxiren;
	
	/**
	 * 联系地址
	 */
					
	private String lianxidizhi;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 寄件单价
	 */
					
	private Integer jijiandanjia;
	
	/**
	 * 收费说明
	 */
					
	private String shoufeishuoming;
	
	/**
	 * 网点信息
	 */
					
	private String wangdianxinxi;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：物流公司
	 */
	public void setWuliugongsi(String wuliugongsi) {
		this.wuliugongsi = wuliugongsi;
	}
	/**
	 * 获取：物流公司
	 */
	public String getWuliugongsi() {
		return wuliugongsi;
	}
	/**
	 * 设置：密码
	 */
	public void setMima(String mima) {
		this.mima = mima;
	}
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
	/**
	 * 设置：联系人
	 */
	public void setLianxiren(String lianxiren) {
		this.lianxiren = lianxiren;
	}
	/**
	 * 获取：联系人
	 */
	public String getLianxiren() {
		return lianxiren;
	}
	/**
	 * 设置：联系地址
	 */
	public void setLianxidizhi(String lianxidizhi) {
		this.lianxidizhi = lianxidizhi;
	}
	/**
	 * 获取：联系地址
	 */
	public String getLianxidizhi() {
		return lianxidizhi;
	}
	/**
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	/**
	 * 设置：寄件单价
	 */
	public void setJijiandanjia(Integer jijiandanjia) {
		this.jijiandanjia = jijiandanjia;
	}
	/**
	 * 获取：寄件单价
	 */
	public Integer getJijiandanjia() {
		return jijiandanjia;
	}
	/**
	 * 设置：收费说明
	 */
	public void setShoufeishuoming(String shoufeishuoming) {
		this.shoufeishuoming = shoufeishuoming;
	}
	/**
	 * 获取：收费说明
	 */
	public String getShoufeishuoming() {
		return shoufeishuoming;
	}
	/**
	 * 设置：网点信息
	 */
	public void setWangdianxinxi(String wangdianxinxi) {
		this.wangdianxinxi = wangdianxinxi;
	}
	/**
	 * 获取：网点信息
	 */
	public String getWangdianxinxi() {
		return wangdianxinxi;
	}

}
