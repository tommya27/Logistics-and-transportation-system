package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JijianjinduDao;
import com.entity.JijianjinduEntity;
import com.service.JijianjinduService;
import com.entity.vo.JijianjinduVO;
import com.entity.view.JijianjinduView;

@Service("jijianjinduService")
public class JijianjinduServiceImpl extends ServiceImpl<JijianjinduDao, JijianjinduEntity> implements JijianjinduService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JijianjinduEntity> page = this.selectPage(
                new Query<JijianjinduEntity>(params).getPage(),
                new EntityWrapper<JijianjinduEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JijianjinduEntity> wrapper) {
		  Page<JijianjinduView> page =new Query<JijianjinduView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JijianjinduVO> selectListVO(Wrapper<JijianjinduEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JijianjinduVO selectVO(Wrapper<JijianjinduEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JijianjinduView> selectListView(Wrapper<JijianjinduEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JijianjinduView selectView(Wrapper<JijianjinduEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<JijianjinduEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<JijianjinduEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<JijianjinduEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
