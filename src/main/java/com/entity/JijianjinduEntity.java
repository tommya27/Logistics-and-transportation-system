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
 * 寄件进度
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
@TableName("jijianjindu")
public class JijianjinduEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JijianjinduEntity() {
		
	}
	
	public JijianjinduEntity(T t) {
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
	 * 订单编号
	 */
					
	private String dingdanbianhao;
	
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
	 * 评价状态
	 */
					
	private String pingjiazhuangtai;
	
	/**
	 * 物流公司
	 */
					
	private String wuliugongsi;
	
	/**
	 * 发出日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date fachuriqi;
	
	/**
	 * 订单文件
	 */
					
	private String dingdanwenjian;
	
	/**
	 * 运费
	 */
					
	private Integer yunfei;
	
	/**
	 * 运输进度
	 */
					
	private String yunshujindu;
	
	/**
	 * 车辆信息
	 */
					
	private String cheliangxinxi;
	
	/**
	 * 是否支付
	 */
					
	private String ispay;
	
	
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
	 * 设置：订单编号
	 */
	public void setDingdanbianhao(String dingdanbianhao) {
		this.dingdanbianhao = dingdanbianhao;
	}
	/**
	 * 获取：订单编号
	 */
	public String getDingdanbianhao() {
		return dingdanbianhao;
	}
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
	 * 设置：评价状态
	 */
	public void setPingjiazhuangtai(String pingjiazhuangtai) {
		this.pingjiazhuangtai = pingjiazhuangtai;
	}
	/**
	 * 获取：评价状态
	 */
	public String getPingjiazhuangtai() {
		return pingjiazhuangtai;
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
	 * 设置：发出日期
	 */
	public void setFachuriqi(Date fachuriqi) {
		this.fachuriqi = fachuriqi;
	}
	/**
	 * 获取：发出日期
	 */
	public Date getFachuriqi() {
		return fachuriqi;
	}
	/**
	 * 设置：订单文件
	 */
	public void setDingdanwenjian(String dingdanwenjian) {
		this.dingdanwenjian = dingdanwenjian;
	}
	/**
	 * 获取：订单文件
	 */
	public String getDingdanwenjian() {
		return dingdanwenjian;
	}
	/**
	 * 设置：运费
	 */
	public void setYunfei(Integer yunfei) {
		this.yunfei = yunfei;
	}
	/**
	 * 获取：运费
	 */
	public Integer getYunfei() {
		return yunfei;
	}
	/**
	 * 设置：运输进度
	 */
	public void setYunshujindu(String yunshujindu) {
		this.yunshujindu = yunshujindu;
	}
	/**
	 * 获取：运输进度
	 */
	public String getYunshujindu() {
		return yunshujindu;
	}
	/**
	 * 设置：车辆信息
	 */
	public void setCheliangxinxi(String cheliangxinxi) {
		this.cheliangxinxi = cheliangxinxi;
	}
	/**
	 * 获取：车辆信息
	 */
	public String getCheliangxinxi() {
		return cheliangxinxi;
	}
	/**
	 * 设置：是否支付
	 */
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}

}
