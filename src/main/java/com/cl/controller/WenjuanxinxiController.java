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

import com.cl.entity.WenjuanxinxiEntity;
import com.cl.entity.view.WenjuanxinxiView;

import com.cl.service.WenjuanxinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 问卷信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
@RestController
@RequestMapping("/wenjuanxinxi")
public class WenjuanxinxiController {
    @Autowired
    private WenjuanxinxiService wenjuanxinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,WenjuanxinxiEntity wenjuanxinxi,
		HttpServletRequest request){
        EntityWrapper<WenjuanxinxiEntity> ew = new EntityWrapper<WenjuanxinxiEntity>();

		PageUtils page = wenjuanxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wenjuanxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,WenjuanxinxiEntity wenjuanxinxi, 
		HttpServletRequest request){
        EntityWrapper<WenjuanxinxiEntity> ew = new EntityWrapper<WenjuanxinxiEntity>();

		PageUtils page = wenjuanxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wenjuanxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( WenjuanxinxiEntity wenjuanxinxi){
       	EntityWrapper<WenjuanxinxiEntity> ew = new EntityWrapper<WenjuanxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( wenjuanxinxi, "wenjuanxinxi")); 
        return R.ok().put("data", wenjuanxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(WenjuanxinxiEntity wenjuanxinxi){
        EntityWrapper< WenjuanxinxiEntity> ew = new EntityWrapper< WenjuanxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( wenjuanxinxi, "wenjuanxinxi")); 
		WenjuanxinxiView wenjuanxinxiView =  wenjuanxinxiService.selectView(ew);
		return R.ok("查询问卷信息成功").put("data", wenjuanxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        WenjuanxinxiEntity wenjuanxinxi = wenjuanxinxiService.selectById(id);
		wenjuanxinxi = wenjuanxinxiService.selectView(new EntityWrapper<WenjuanxinxiEntity>().eq("id", id));
        return R.ok().put("data", wenjuanxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        WenjuanxinxiEntity wenjuanxinxi = wenjuanxinxiService.selectById(id);
		wenjuanxinxi = wenjuanxinxiService.selectView(new EntityWrapper<WenjuanxinxiEntity>().eq("id", id));
        return R.ok().put("data", wenjuanxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody WenjuanxinxiEntity wenjuanxinxi, HttpServletRequest request){
    	wenjuanxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wenjuanxinxi);
        wenjuanxinxiService.insert(wenjuanxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody WenjuanxinxiEntity wenjuanxinxi, HttpServletRequest request){
    	wenjuanxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wenjuanxinxi);
        wenjuanxinxiService.insert(wenjuanxinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody WenjuanxinxiEntity wenjuanxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(wenjuanxinxi);
        wenjuanxinxiService.updateById(wenjuanxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        wenjuanxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
