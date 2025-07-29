package com.entity.vo;

import com.entity.TuihuojiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 退货记录
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
public class TuihuojiluVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
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
	 * 退货原因
	 */
	
	private String tuihuoyuanyin;
		
	/**
	 * 退货时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date tuihuoshijian;
		
	/**
	 * 物流公司
	 */
	
	private String wuliugongsi;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 跨表用户id
	 */
	
	private Long crossuserid;
		
	/**
	 * 跨表主键id
	 */
	
	private Long crossrefid;
		
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
	 * 设置：退货原因
	 */
	 
	public void setTuihuoyuanyin(String tuihuoyuanyin) {
		this.tuihuoyuanyin = tuihuoyuanyin;
	}
	
	/**
	 * 获取：退货原因
	 */
	public String getTuihuoyuanyin() {
		return tuihuoyuanyin;
	}
				
	
	/**
	 * 设置：退货时间
	 */
	 
	public void setTuihuoshijian(Date tuihuoshijian) {
		this.tuihuoshijian = tuihuoshijian;
	}
	
	/**
	 * 获取：退货时间
	 */
	public Date getTuihuoshijian() {
		return tuihuoshijian;
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
	 * 设置：跨表用户id
	 */
	 
	public void setCrossuserid(Long crossuserid) {
		this.crossuserid = crossuserid;
	}
	
	/**
	 * 获取：跨表用户id
	 */
	public Long getCrossuserid() {
		return crossuserid;
	}
				
	
	/**
	 * 设置：跨表主键id
	 */
	 
	public void setCrossrefid(Long crossrefid) {
		this.crossrefid = crossrefid;
	}
	
	/**
	 * 获取：跨表主键id
	 */
	public Long getCrossrefid() {
		return crossrefid;
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
