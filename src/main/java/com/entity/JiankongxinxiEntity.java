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
 * 监控信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
@TableName("jiankongxinxi")
public class JiankongxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiankongxinxiEntity() {
		
	}
	
	public JiankongxinxiEntity(T t) {
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
	 * 监控编号
	 */
					
	private String jiankongbianhao;
	
	/**
	 * 监控位置
	 */
					
	private String jiankongweizhi;
	
	/**
	 * 监控视频
	 */
					
	private String jiankongshipin;
	
	/**
	 * 监控时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jiankongshijian;
	
	/**
	 * 信息备注
	 */
					
	private String xinxibeizhu;
	
	/**
	 * 物流公司
	 */
					
	private String wuliugongsi;
	
	
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
	 * 设置：监控编号
	 */
	public void setJiankongbianhao(String jiankongbianhao) {
		this.jiankongbianhao = jiankongbianhao;
	}
	/**
	 * 获取：监控编号
	 */
	public String getJiankongbianhao() {
		return jiankongbianhao;
	}
	/**
	 * 设置：监控位置
	 */
	public void setJiankongweizhi(String jiankongweizhi) {
		this.jiankongweizhi = jiankongweizhi;
	}
	/**
	 * 获取：监控位置
	 */
	public String getJiankongweizhi() {
		return jiankongweizhi;
	}
	/**
	 * 设置：监控视频
	 */
	public void setJiankongshipin(String jiankongshipin) {
		this.jiankongshipin = jiankongshipin;
	}
	/**
	 * 获取：监控视频
	 */
	public String getJiankongshipin() {
		return jiankongshipin;
	}
	/**
	 * 设置：监控时间
	 */
	public void setJiankongshijian(Date jiankongshijian) {
		this.jiankongshijian = jiankongshijian;
	}
	/**
	 * 获取：监控时间
	 */
	public Date getJiankongshijian() {
		return jiankongshijian;
	}
	/**
	 * 设置：信息备注
	 */
	public void setXinxibeizhu(String xinxibeizhu) {
		this.xinxibeizhu = xinxibeizhu;
	}
	/**
	 * 获取：信息备注
	 */
	public String getXinxibeizhu() {
		return xinxibeizhu;
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

}
