package com.cl.dao;

import com.cl.entity.WenjuanxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WenjuanxinxiView;


/**
 * 问卷信息
 * 
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
public interface WenjuanxinxiDao extends BaseMapper<WenjuanxinxiEntity> {
	
	List<WenjuanxinxiView> selectListView(@Param("ew") Wrapper<WenjuanxinxiEntity> wrapper);

	List<WenjuanxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<WenjuanxinxiEntity> wrapper);
	
	WenjuanxinxiView selectView(@Param("ew") Wrapper<WenjuanxinxiEntity> wrapper);
	

}
