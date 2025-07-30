package com.entity.vo;

import com.entity.WuliugongsiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 物流公司
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-10-13 10:06:51
 */
public class WuliugongsiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
