package com.cl.dao;

import com.cl.entity.QiyedajuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.QiyedajuanView;


/**
 * 企业答卷
 * 
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
public interface QiyedajuanDao extends BaseMapper<QiyedajuanEntity> {
	
	List<QiyedajuanView> selectListView(@Param("ew") Wrapper<QiyedajuanEntity> wrapper);

	List<QiyedajuanView> selectListView(Pagination page,@Param("ew") Wrapper<QiyedajuanEntity> wrapper);
	
	QiyedajuanView selectView(@Param("ew") Wrapper<QiyedajuanEntity> wrapper);
	

}
