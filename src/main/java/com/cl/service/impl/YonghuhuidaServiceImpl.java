package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.YonghuhuidaDao;
import com.cl.entity.YonghuhuidaEntity;
import com.cl.service.YonghuhuidaService;
import com.cl.entity.view.YonghuhuidaView;

@Service("yonghuhuidaService")
public class YonghuhuidaServiceImpl extends ServiceImpl<YonghuhuidaDao, YonghuhuidaEntity> implements YonghuhuidaService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YonghuhuidaEntity> page = this.selectPage(
                new Query<YonghuhuidaEntity>(params).getPage(),
                new EntityWrapper<YonghuhuidaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YonghuhuidaEntity> wrapper) {
		  Page<YonghuhuidaView> page =new Query<YonghuhuidaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<YonghuhuidaView> selectListView(Wrapper<YonghuhuidaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YonghuhuidaView selectView(Wrapper<YonghuhuidaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
