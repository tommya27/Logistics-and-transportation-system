package com.entity.vo;

import com.entity.JijiandingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 寄件订单
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
public class JijiandingdanVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 手机
	 */
	
	private String shouji;
		
	/**
	 * 收件人
	 */
	
	private String shoujianren;
		
	/**
	 * 收件电话
	 */
	
	private String shoujiandianhua;
		
	/**
	 * 收件地址
	 */
	
	private String shoujiandizhi;
		
	/**
	 * 物流公司
	 */
	
	private String wuliugongsi;
		
	/**
	 * 下单时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date xiadanshijian;
		
	/**
	 * 快递状态
	 */
	
	private String kuaidizhuangtai;
		
	/**
	 * 信息备注
	 */
	
	private String xinxibeizhu;
		
	/**
	 * 上门取货
	 */
	
	private String shangmenquhuo;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：手机
	 */
	 
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
				
	
	/**
	 * 设置：收件人
	 */
	 
	public void setShoujianren(String shoujianren) {
		this.shoujianren = shoujianren;
	}
	
	/**
	 * 获取：收件人
	 */
	public String getShoujianren() {
		return shoujianren;
	}
				
	
	/**
	 * 设置：收件电话
	 */
	 
	public void setShoujiandianhua(String shoujiandianhua) {
		this.shoujiandianhua = shoujiandianhua;
	}
	
	/**
	 * 获取：收件电话
	 */
	public String getShoujiandianhua() {
		return shoujiandianhua;
	}
				
	
	/**
	 * 设置：收件地址
	 */
	 
	public void setShoujiandizhi(String shoujiandizhi) {
		this.shoujiandizhi = shoujiandizhi;
	}
	
	/**
	 * 获取：收件地址
	 */
	public String getShoujiandizhi() {
		return shoujiandizhi;
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
	 * 设置：下单时间
	 */
	 
	public void setXiadanshijian(Date xiadanshijian) {
		this.xiadanshijian = xiadanshijian;
	}
	
	/**
	 * 获取：下单时间
	 */
	public Date getXiadanshijian() {
		return xiadanshijian;
	}
				
	
	/**
	 * 设置：快递状态
	 */
	 
	public void setKuaidizhuangtai(String kuaidizhuangtai) {
		this.kuaidizhuangtai = kuaidizhuangtai;
	}
	
	/**
	 * 获取：快递状态
	 */
	public String getKuaidizhuangtai() {
		return kuaidizhuangtai;
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
	 * 设置：上门取货
	 */
	 
	public void setShangmenquhuo(String shangmenquhuo) {
		this.shangmenquhuo = shangmenquhuo;
	}
	
	/**
	 * 获取：上门取货
	 */
	public String getShangmenquhuo() {
		return shangmenquhuo;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
