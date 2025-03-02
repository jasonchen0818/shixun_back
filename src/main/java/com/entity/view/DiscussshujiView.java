package com.entity.view;

import com.entity.DiscussshujiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 书籍评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date  :18
 */
@TableName("discussshuji")
public class DiscussshujiView  extends DiscussshujiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussshujiView(){
	}
 
 	public DiscussshujiView(DiscussshujiEntity discussshujiEntity){
 	try {
			BeanUtils.copyProperties(this, discussshujiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
