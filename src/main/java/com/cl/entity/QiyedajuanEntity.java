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
 * 企业答卷
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
@TableName("qiyedajuan")
public class QiyedajuanEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public QiyedajuanEntity() {
		
	}
	
	public QiyedajuanEntity(T t) {
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
	 * 答案一
	 */
					
	private String daanyi;
	
	/**
	 * 答案二
	 */
					
	private String daaner;
	
	/**
	 * 答案三
	 */
					
	private String daansan;
	
	/**
	 * 答案四
	 */
					
	private String daansi;
	
	/**
	 * 答案五
	 */
					
	private String daanwu;
	
	/**
	 * 答案六
	 */
					
	private String daanliu;
	
	/**
	 * 答案七
	 */
					
	private String daanqi;
	
	/**
	 * 答案八
	 */
					
	private String daanba;
	
	/**
	 * 企业账号
	 */
					
	private String qiyezhanghao;
	
	/**
	 * 企业姓名
	 */
					
	private String qiyexingming;
	
	/**
	 * 提交时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date tijiaoshijian;
	
	
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
	 * 设置：答案一
	 */
	public void setDaanyi(String daanyi) {
		this.daanyi = daanyi;
	}
	/**
	 * 获取：答案一
	 */
	public String getDaanyi() {
		return daanyi;
	}
	/**
	 * 设置：答案二
	 */
	public void setDaaner(String daaner) {
		this.daaner = daaner;
	}
	/**
	 * 获取：答案二
	 */
	public String getDaaner() {
		return daaner;
	}
	/**
	 * 设置：答案三
	 */
	public void setDaansan(String daansan) {
		this.daansan = daansan;
	}
	/**
	 * 获取：答案三
	 */
	public String getDaansan() {
		return daansan;
	}
	/**
	 * 设置：答案四
	 */
	public void setDaansi(String daansi) {
		this.daansi = daansi;
	}
	/**
	 * 获取：答案四
	 */
	public String getDaansi() {
		return daansi;
	}
	/**
	 * 设置：答案五
	 */
	public void setDaanwu(String daanwu) {
		this.daanwu = daanwu;
	}
	/**
	 * 获取：答案五
	 */
	public String getDaanwu() {
		return daanwu;
	}
	/**
	 * 设置：答案六
	 */
	public void setDaanliu(String daanliu) {
		this.daanliu = daanliu;
	}
	/**
	 * 获取：答案六
	 */
	public String getDaanliu() {
		return daanliu;
	}
	/**
	 * 设置：答案七
	 */
	public void setDaanqi(String daanqi) {
		this.daanqi = daanqi;
	}
	/**
	 * 获取：答案七
	 */
	public String getDaanqi() {
		return daanqi;
	}
	/**
	 * 设置：答案八
	 */
	public void setDaanba(String daanba) {
		this.daanba = daanba;
	}
	/**
	 * 获取：答案八
	 */
	public String getDaanba() {
		return daanba;
	}
	/**
	 * 设置：企业账号
	 */
	public void setQiyezhanghao(String qiyezhanghao) {
		this.qiyezhanghao = qiyezhanghao;
	}
	/**
	 * 获取：企业账号
	 */
	public String getQiyezhanghao() {
		return qiyezhanghao;
	}
	/**
	 * 设置：企业姓名
	 */
	public void setQiyexingming(String qiyexingming) {
		this.qiyexingming = qiyexingming;
	}
	/**
	 * 获取：企业姓名
	 */
	public String getQiyexingming() {
		return qiyexingming;
	}
	/**
	 * 设置：提交时间
	 */
	public void setTijiaoshijian(Date tijiaoshijian) {
		this.tijiaoshijian = tijiaoshijian;
	}
	/**
	 * 获取：提交时间
	 */
	public Date getTijiaoshijian() {
		return tijiaoshijian;
	}

}
