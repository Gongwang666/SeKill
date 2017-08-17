package com.hzyc.sekill.dto;

import com.hzyc.sekill.model.SuccessKilled;

/** 
* @ClassName: SecKillExecution 
* @Description: TODO(秒杀执行后结果) 
* @author (作者)  
* @date 2017年8月3日 下午11:23:57 
* @version V1.0 
*/
public class SecKillExecution {
	private int seckillId;

    //秒杀执行结果状态
    private int state;

    //状态表示
    private String stateInfo;

    //秒杀成功对象
    private SuccessKilled successKilled;

	public int getSeckillId() {
		return seckillId;
	}

	public void setSeckillId(int seckillId) {
		this.seckillId = seckillId;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getStateInfo() {
		return stateInfo;
	}

	public void setStateInfo(String stateInfo) {
		this.stateInfo = stateInfo;
	}

	public SuccessKilled getSuccessKilled() {
		return successKilled;
	}

	public void setSuccessKilled(SuccessKilled successKilled) {
		this.successKilled = successKilled;
	}
    
    
}
