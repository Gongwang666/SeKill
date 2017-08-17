package com.hzyc.sekill.service.Impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.hzyc.sekill.dto.Exposer;
import com.hzyc.sekill.exception.RepeatKillException;
import com.hzyc.sekill.exception.SecKillCloseException;
import com.hzyc.sekill.exception.SecKillException;
import com.hzyc.sekill.model.SecKill;
import com.hzyc.sekill.model.SuccessKilled;
import com.hzyc.sekill.model.SuccessKilledKeys;
import com.hzyc.sekill.model.User;
import com.hzyc.sekill.service.MSService;
@Service("MSService")
public class MSServiceImpl extends BaseServiceImpl implements MSService {

	private String str = "asdasqweqfdsfs1231as41324asd";//md5盐值
	@Override
	public Date getMysqlTime() {
		String sql = "select now()";
		List<Date> list = getBaseDao().quarySql(sql);
		if(!list.isEmpty()){
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<SecKill> findSecKillByTime(Date date) {
		String hql = "from SecKill where starttime <= ? and endtime >= ?";
		return getBaseDao().find(hql, date,date);
	}

	@Override
	public List<SecKill> getSecKillList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SecKill getSecKillById(int sid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Exposer exportSecKillUrl(int sid) {
		String hql = "from SecKill where sid = ?";
		SecKill secKill = getBaseDao().getOne(hql, sid);
		if(secKill == null){
			return new Exposer(false,sid);
		}
		Date start = secKill.getStarttime();
		Date end = secKill.getEndtime();
		Date now = getMysqlTime();
		if(now.getTime()<start.getTime()||now.getTime()>end.getTime()){
			return new Exposer(false,sid,now.getTime(),start.getTime(),end.getTime());
		}
		String md5 = getMD5(sid);
		return new Exposer(true,md5, sid);
	}

	private String getMD5(int sid){
		String base = sid+"/"+str;
		return DigestUtils.md5DigestAsHex(base.getBytes());
	}

	@Override
	public void executeSecKill(int sid, User user, String md5)
			throws SecKillException, RepeatKillException, SecKillCloseException {
		if(md5==null||md5.equals(getMD5(sid))){
			throw new SecKillException("秒杀数据被重写了！");
		}
		String updateHql = "update SecKill set totalcount=totalcount-1";
		int updateCount = getBaseDao().executeHql(updateHql);
		if(updateCount<=0){
			//没有更新到记录，秒杀结束
			throw new SecKillException("秒杀结束！");
		}else{
			SuccessKilled successKilled = new SuccessKilled(sid,user.getUid(),-1,new Date());
			String hql = "from SuccessKilled where sid = ? and uid = ?";
			if(getBaseDao().getOne(hql, sid,user.getUid())!=null){
				throw new RepeatKillException("重复秒杀！");
			}else{
				getBaseDao().save(successKilled);
				
			}
		}
	}

	@Override
	public void successKilled() throws Exception{
		SuccessKilled successKilled = new SuccessKilled(1,2,-1,new Date());
		String hql = "from SuccessKilled where sid = ? and uid = ?";
		if(getBaseDao().getOne(hql, 1,2)!=null){
			System.out.println("不能重复秒杀");
		}else{
			getBaseDao().save(successKilled);
		}
	}

}
