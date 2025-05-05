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


import com.cl.dao.QiyedajuanDao;
import com.cl.entity.QiyedajuanEntity;
import com.cl.service.QiyedajuanService;
import com.cl.entity.view.QiyedajuanView;

@Service("qiyedajuanService")
public class QiyedajuanServiceImpl extends ServiceImpl<QiyedajuanDao, QiyedajuanEntity> implements QiyedajuanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QiyedajuanEntity> page = this.selectPage(
                new Query<QiyedajuanEntity>(params).getPage(),
                new EntityWrapper<QiyedajuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QiyedajuanEntity> wrapper) {
		  Page<QiyedajuanView> page =new Query<QiyedajuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<QiyedajuanView> selectListView(Wrapper<QiyedajuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QiyedajuanView selectView(Wrapper<QiyedajuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
