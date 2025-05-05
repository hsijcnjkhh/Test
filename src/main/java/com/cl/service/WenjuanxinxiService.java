package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.WenjuanxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WenjuanxinxiView;


/**
 * 问卷信息
 *
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
public interface WenjuanxinxiService extends IService<WenjuanxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WenjuanxinxiView> selectListView(Wrapper<WenjuanxinxiEntity> wrapper);
   	
   	WenjuanxinxiView selectView(@Param("ew") Wrapper<WenjuanxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WenjuanxinxiEntity> wrapper);
   	

}

