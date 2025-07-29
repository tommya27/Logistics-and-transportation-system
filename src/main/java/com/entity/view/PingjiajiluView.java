package com.entity.view;

import com.entity.PingjiajiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 评价记录
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
@TableName("pingjiajilu")
public class PingjiajiluView  extends PingjiajiluEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public PingjiajiluView(){
	}
 
 	public PingjiajiluView(PingjiajiluEntity pingjiajiluEntity){
 	try {
			BeanUtils.copyProperties(this, pingjiajiluEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
