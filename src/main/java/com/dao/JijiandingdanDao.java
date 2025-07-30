package com.dao;

import com.entity.JijiandingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JijiandingdanVO;
import com.entity.view.JijiandingdanView;


/**
 * 寄件订单
 * 
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
public interface JijiandingdanDao extends BaseMapper<JijiandingdanEntity> {
	
	List<JijiandingdanVO> selectListVO(@Param("ew") Wrapper<JijiandingdanEntity> wrapper);
	
	JijiandingdanVO selectVO(@Param("ew") Wrapper<JijiandingdanEntity> wrapper);
	
	List<JijiandingdanView> selectListView(@Param("ew") Wrapper<JijiandingdanEntity> wrapper);

	List<JijiandingdanView> selectListView(Pagination page,@Param("ew") Wrapper<JijiandingdanEntity> wrapper);
	
	JijiandingdanView selectView(@Param("ew") Wrapper<JijiandingdanEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JijiandingdanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JijiandingdanEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JijiandingdanEntity> wrapper);
}
