package com.cl.entity.view;

import com.cl.entity.WenjuanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 问卷信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
@TableName("wenjuanxinxi")
public class WenjuanxinxiView  extends WenjuanxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WenjuanxinxiView(){
	}
 
 	public WenjuanxinxiView(WenjuanxinxiEntity wenjuanxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, wenjuanxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
