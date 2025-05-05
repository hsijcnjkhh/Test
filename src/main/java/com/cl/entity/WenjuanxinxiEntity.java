package com.cl.entity;

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
 * 问卷信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
@TableName("wenjuanxinxi")
public class WenjuanxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public WenjuanxinxiEntity() {
		
	}
	
	public WenjuanxinxiEntity(T t) {
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
	 * 问卷名称
	 */
					
	private String wenjuanmingcheng;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 问题一
	 */
					
	private String wentiyi;
	
	/**
	 * 问题二
	 */
					
	private String wentier;
	
	/**
	 * 问题三
	 */
					
	private String wentisan;
	
	/**
	 * 问题四
	 */
					
	private String wentisi;
	
	/**
	 * 问题五
	 */
					
	private String wentiwu;
	
	/**
	 * 问题六
	 */
					
	private String wentiliu;
	
	/**
	 * 问题七
	 */
					
	private String wentiqi;
	
	/**
	 * 问题八
	 */
					
	private String wentiba;
	
	/**
	 * 发布时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date fabushijian;
	
	
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
	 * 设置：问卷名称
	 */
	public void setWenjuanmingcheng(String wenjuanmingcheng) {
		this.wenjuanmingcheng = wenjuanmingcheng;
	}
	/**
	 * 获取：问卷名称
	 */
	public String getWenjuanmingcheng() {
		return wenjuanmingcheng;
	}
	/**
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：问题一
	 */
	public void setWentiyi(String wentiyi) {
		this.wentiyi = wentiyi;
	}
	/**
	 * 获取：问题一
	 */
	public String getWentiyi() {
		return wentiyi;
	}
	/**
	 * 设置：问题二
	 */
	public void setWentier(String wentier) {
		this.wentier = wentier;
	}
	/**
	 * 获取：问题二
	 */
	public String getWentier() {
		return wentier;
	}
	/**
	 * 设置：问题三
	 */
	public void setWentisan(String wentisan) {
		this.wentisan = wentisan;
	}
	/**
	 * 获取：问题三
	 */
	public String getWentisan() {
		return wentisan;
	}
	/**
	 * 设置：问题四
	 */
	public void setWentisi(String wentisi) {
		this.wentisi = wentisi;
	}
	/**
	 * 获取：问题四
	 */
	public String getWentisi() {
		return wentisi;
	}
	/**
	 * 设置：问题五
	 */
	public void setWentiwu(String wentiwu) {
		this.wentiwu = wentiwu;
	}
	/**
	 * 获取：问题五
	 */
	public String getWentiwu() {
		return wentiwu;
	}
	/**
	 * 设置：问题六
	 */
	public void setWentiliu(String wentiliu) {
		this.wentiliu = wentiliu;
	}
	/**
	 * 获取：问题六
	 */
	public String getWentiliu() {
		return wentiliu;
	}
	/**
	 * 设置：问题七
	 */
	public void setWentiqi(String wentiqi) {
		this.wentiqi = wentiqi;
	}
	/**
	 * 获取：问题七
	 */
	public String getWentiqi() {
		return wentiqi;
	}
	/**
	 * 设置：问题八
	 */
	public void setWentiba(String wentiba) {
		this.wentiba = wentiba;
	}
	/**
	 * 获取：问题八
	 */
	public String getWentiba() {
		return wentiba;
	}
	/**
	 * 设置：发布时间
	 */
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}

}
