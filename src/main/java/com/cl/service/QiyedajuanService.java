package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.QiyedajuanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.QiyedajuanView;


/**
 * 企业答卷
 *
 * @author 
 * @email 
 * @date 2024-03-26 19:52:22
 */
public interface QiyedajuanService extends IService<QiyedajuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QiyedajuanView> selectListView(Wrapper<QiyedajuanEntity> wrapper);
   	
   	QiyedajuanView selectView(@Param("ew") Wrapper<QiyedajuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QiyedajuanEntity> wrapper);
   	

}

