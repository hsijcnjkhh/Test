package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.QiyedajuanEntity;
import com.cl.entity.view.QiyedajuanView;

import com.cl.service.QiyedajuanService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 企业答卷
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
@RestController
@RequestMapping("/qiyedajuan")
public class QiyedajuanController {
    @Autowired
    private QiyedajuanService qiyedajuanService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QiyedajuanEntity qiyedajuan,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("qiye")) {
			qiyedajuan.setQiyezhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<QiyedajuanEntity> ew = new EntityWrapper<QiyedajuanEntity>();

		PageUtils page = qiyedajuanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qiyedajuan), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,QiyedajuanEntity qiyedajuan, 
		HttpServletRequest request){
        EntityWrapper<QiyedajuanEntity> ew = new EntityWrapper<QiyedajuanEntity>();

		PageUtils page = qiyedajuanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qiyedajuan), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QiyedajuanEntity qiyedajuan){
       	EntityWrapper<QiyedajuanEntity> ew = new EntityWrapper<QiyedajuanEntity>();
      	ew.allEq(MPUtil.allEQMapPre( qiyedajuan, "qiyedajuan")); 
        return R.ok().put("data", qiyedajuanService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QiyedajuanEntity qiyedajuan){
        EntityWrapper< QiyedajuanEntity> ew = new EntityWrapper< QiyedajuanEntity>();
 		ew.allEq(MPUtil.allEQMapPre( qiyedajuan, "qiyedajuan")); 
		QiyedajuanView qiyedajuanView =  qiyedajuanService.selectView(ew);
		return R.ok("查询企业答卷成功").put("data", qiyedajuanView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QiyedajuanEntity qiyedajuan = qiyedajuanService.selectById(id);
		qiyedajuan = qiyedajuanService.selectView(new EntityWrapper<QiyedajuanEntity>().eq("id", id));
        return R.ok().put("data", qiyedajuan);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QiyedajuanEntity qiyedajuan = qiyedajuanService.selectById(id);
		qiyedajuan = qiyedajuanService.selectView(new EntityWrapper<QiyedajuanEntity>().eq("id", id));
        return R.ok().put("data", qiyedajuan);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody QiyedajuanEntity qiyedajuan, HttpServletRequest request){
    	qiyedajuan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qiyedajuan);
        qiyedajuanService.insert(qiyedajuan);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody QiyedajuanEntity qiyedajuan, HttpServletRequest request){
    	qiyedajuan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qiyedajuan);
        qiyedajuanService.insert(qiyedajuan);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody QiyedajuanEntity qiyedajuan, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qiyedajuan);
        qiyedajuanService.updateById(qiyedajuan);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        qiyedajuanService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
