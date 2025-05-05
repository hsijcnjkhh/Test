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
 * 用户
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
@TableName("yonghu")
public class YonghuEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YonghuEntity() {
		
	}
	
	public YonghuEntity(T t) {
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
	 * 用户账号
	 */
					
	private String yonghuzhanghao;
	
	/**
	 * 用户密码
	 */
					
	private String yonghumima;
	
	/**
	 * 用户姓名
	 */
					
	private String yonghuxingming;
	
	/**
	 * 头像
	 */
					
	private String touxiang;
	
	/**
	 * 性别
	 */
					
	private String xingbie;
	
	/**
	 * 手机号码
	 */
					
	private String shoujihaoma;
	
	/**
	 * 学历
	 */
					
	private String xueli;
	
	/**
	 * 专业
	 */
					
	private String zhuanye;
	
	/**
	 * 实习经历
	 */
					
	private String shixijingli;
	
	/**
	 * 教育背景
	 */
					
	private String jiaoyubeijing;
	
	/**
	 * 毕业院校
	 */
					
	private String biyeyuanxiao;
	
	/**
	 * 专业技能
	 */
					
	private String zhuanyejineng;
	
	/**
	 * 所获荣誉
	 */
					
	private String suohuorongyu;
	
	/**
	 * 政治面貌
	 */
					
	private String zhengzhimianmao;
	
	/**
	 * 邮箱
	 */
					
	private String youxiang;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	
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
	 * 设置：用户账号
	 */
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
	/**
	 * 设置：用户密码
	 */
	public void setYonghumima(String yonghumima) {
		this.yonghumima = yonghumima;
	}
	/**
	 * 获取：用户密码
	 */
	public String getYonghumima() {
		return yonghumima;
	}
	/**
	 * 设置：用户姓名
	 */
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}
	/**
	 * 设置：头像
	 */
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
	}
	/**
	 * 设置：性别
	 */
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
	/**
	 * 设置：手机号码
	 */
	public void setShoujihaoma(String shoujihaoma) {
		this.shoujihaoma = shoujihaoma;
	}
	/**
	 * 获取：手机号码
	 */
	public String getShoujihaoma() {
		return shoujihaoma;
	}
	/**
	 * 设置：学历
	 */
	public void setXueli(String xueli) {
		this.xueli = xueli;
	}
	/**
	 * 获取：学历
	 */
	public String getXueli() {
		return xueli;
	}
	/**
	 * 设置：专业
	 */
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	/**
	 * 获取：专业
	 */
	public String getZhuanye() {
		return zhuanye;
	}
	/**
	 * 设置：实习经历
	 */
	public void setShixijingli(String shixijingli) {
		this.shixijingli = shixijingli;
	}
	/**
	 * 获取：实习经历
	 */
	public String getShixijingli() {
		return shixijingli;
	}
	/**
	 * 设置：教育背景
	 */
	public void setJiaoyubeijing(String jiaoyubeijing) {
		this.jiaoyubeijing = jiaoyubeijing;
	}
	/**
	 * 获取：教育背景
	 */
	public String getJiaoyubeijing() {
		return jiaoyubeijing;
	}
	/**
	 * 设置：毕业院校
	 */
	public void setBiyeyuanxiao(String biyeyuanxiao) {
		this.biyeyuanxiao = biyeyuanxiao;
	}
	/**
	 * 获取：毕业院校
	 */
	public String getBiyeyuanxiao() {
		return biyeyuanxiao;
	}
	/**
	 * 设置：专业技能
	 */
	public void setZhuanyejineng(String zhuanyejineng) {
		this.zhuanyejineng = zhuanyejineng;
	}
	/**
	 * 获取：专业技能
	 */
	public String getZhuanyejineng() {
		return zhuanyejineng;
	}
	/**
	 * 设置：所获荣誉
	 */
	public void setSuohuorongyu(String suohuorongyu) {
		this.suohuorongyu = suohuorongyu;
	}
	/**
	 * 获取：所获荣誉
	 */
	public String getSuohuorongyu() {
		return suohuorongyu;
	}
	/**
	 * 设置：政治面貌
	 */
	public void setZhengzhimianmao(String zhengzhimianmao) {
		this.zhengzhimianmao = zhengzhimianmao;
	}
	/**
	 * 获取：政治面貌
	 */
	public String getZhengzhimianmao() {
		return zhengzhimianmao;
	}
	/**
	 * 设置：邮箱
	 */
	public void setYouxiang(String youxiang) {
		this.youxiang = youxiang;
	}
	/**
	 * 获取：邮箱
	 */
	public String getYouxiang() {
		return youxiang;
	}
	/**
	 * 设置：备注
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}

}
