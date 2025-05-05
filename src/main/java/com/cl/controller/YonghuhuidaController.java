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

import com.cl.entity.YonghuhuidaEntity;
import com.cl.entity.view.YonghuhuidaView;

import com.cl.service.YonghuhuidaService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 用户回答
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
@RestController
@RequestMapping("/yonghuhuida")
public class YonghuhuidaController {
    @Autowired
    private YonghuhuidaService yonghuhuidaService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YonghuhuidaEntity yonghuhuida,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			yonghuhuida.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YonghuhuidaEntity> ew = new EntityWrapper<YonghuhuidaEntity>();

		PageUtils page = yonghuhuidaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yonghuhuida), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YonghuhuidaEntity yonghuhuida, 
		HttpServletRequest request){
        EntityWrapper<YonghuhuidaEntity> ew = new EntityWrapper<YonghuhuidaEntity>();

		PageUtils page = yonghuhuidaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yonghuhuida), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YonghuhuidaEntity yonghuhuida){
       	EntityWrapper<YonghuhuidaEntity> ew = new EntityWrapper<YonghuhuidaEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yonghuhuida, "yonghuhuida")); 
        return R.ok().put("data", yonghuhuidaService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YonghuhuidaEntity yonghuhuida){
        EntityWrapper< YonghuhuidaEntity> ew = new EntityWrapper< YonghuhuidaEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yonghuhuida, "yonghuhuida")); 
		YonghuhuidaView yonghuhuidaView =  yonghuhuidaService.selectView(ew);
		return R.ok("查询用户回答成功").put("data", yonghuhuidaView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YonghuhuidaEntity yonghuhuida = yonghuhuidaService.selectById(id);
		yonghuhuida = yonghuhuidaService.selectView(new EntityWrapper<YonghuhuidaEntity>().eq("id", id));
        return R.ok().put("data", yonghuhuida);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YonghuhuidaEntity yonghuhuida = yonghuhuidaService.selectById(id);
		yonghuhuida = yonghuhuidaService.selectView(new EntityWrapper<YonghuhuidaEntity>().eq("id", id));
        return R.ok().put("data", yonghuhuida);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YonghuhuidaEntity yonghuhuida, HttpServletRequest request){
    	yonghuhuida.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yonghuhuida);
        yonghuhuidaService.insert(yonghuhuida);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YonghuhuidaEntity yonghuhuida, HttpServletRequest request){
    	yonghuhuida.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yonghuhuida);
        yonghuhuidaService.insert(yonghuhuida);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody YonghuhuidaEntity yonghuhuida, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yonghuhuida);
        yonghuhuidaService.updateById(yonghuhuida);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yonghuhuidaService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
