package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JijianjinduEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JijianjinduVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JijianjinduView;


/**
 * 寄件进度
 *
 * @author 
 * @email 
 * @date 2022-10-13 10:06:52
 */
public interface JijianjinduService extends IService<JijianjinduEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JijianjinduVO> selectListVO(Wrapper<JijianjinduEntity> wrapper);
   	
   	JijianjinduVO selectVO(@Param("ew") Wrapper<JijianjinduEntity> wrapper);
   	
   	List<JijianjinduView> selectListView(Wrapper<JijianjinduEntity> wrapper);
   	
   	JijianjinduView selectView(@Param("ew") Wrapper<JijianjinduEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JijianjinduEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<JijianjinduEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<JijianjinduEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<JijianjinduEntity> wrapper);
}

