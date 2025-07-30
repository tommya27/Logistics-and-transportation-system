package com.entity.vo;

import com.entity.JiankongxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 监控信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
public class JiankongxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
