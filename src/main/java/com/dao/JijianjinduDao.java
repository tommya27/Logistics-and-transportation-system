package com.dao;

import com.entity.JijianjinduEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JijianjinduVO;
import com.entity.view.JijianjinduView;


/**
 * 寄件进度
 * 
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
public interface JijianjinduDao extends BaseMapper<JijianjinduEntity> {
	
	List<JijianjinduVO> selectListVO(@Param("ew") Wrapper<JijianjinduEntity> wrapper);
	
	JijianjinduVO selectVO(@Param("ew") Wrapper<JijianjinduEntity> wrapper);
	
	List<JijianjinduView> selectListView(@Param("ew") Wrapper<JijianjinduEntity> wrapper);

	List<JijianjinduView> selectListView(Pagination page,@Param("ew") Wrapper<JijianjinduEntity> wrapper);
	
	JijianjinduView selectView(@Param("ew") Wrapper<JijianjinduEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JijianjinduEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JijianjinduEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JijianjinduEntity> wrapper);
}
