package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.YonghuhuidaEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YonghuhuidaView;


/**
 * 用户回答
 *
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
public interface YonghuhuidaService extends IService<YonghuhuidaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YonghuhuidaView> selectListView(Wrapper<YonghuhuidaEntity> wrapper);
   	
   	YonghuhuidaView selectView(@Param("ew") Wrapper<YonghuhuidaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YonghuhuidaEntity> wrapper);
   	

}

