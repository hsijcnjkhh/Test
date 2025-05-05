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


import com.cl.dao.WenjuanxinxiDao;
import com.cl.entity.WenjuanxinxiEntity;
import com.cl.service.WenjuanxinxiService;
import com.cl.entity.view.WenjuanxinxiView;

@Service("wenjuanxinxiService")
public class WenjuanxinxiServiceImpl extends ServiceImpl<WenjuanxinxiDao, WenjuanxinxiEntity> implements WenjuanxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WenjuanxinxiEntity> page = this.selectPage(
                new Query<WenjuanxinxiEntity>(params).getPage(),
                new EntityWrapper<WenjuanxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WenjuanxinxiEntity> wrapper) {
		  Page<WenjuanxinxiView> page =new Query<WenjuanxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<WenjuanxinxiView> selectListView(Wrapper<WenjuanxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WenjuanxinxiView selectView(Wrapper<WenjuanxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
