package com.cl.dao;

import com.cl.entity.YonghuhuidaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YonghuhuidaView;


/**
 * 用户回答
 * 
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
public interface YonghuhuidaDao extends BaseMapper<YonghuhuidaEntity> {
	
	List<YonghuhuidaView> selectListView(@Param("ew") Wrapper<YonghuhuidaEntity> wrapper);

	List<YonghuhuidaView> selectListView(Pagination page,@Param("ew") Wrapper<YonghuhuidaEntity> wrapper);
	
	YonghuhuidaView selectView(@Param("ew") Wrapper<YonghuhuidaEntity> wrapper);
	

}
