package com.utls;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 【类的功能】:这个类用来测试工具类的正确性
 * @author xiaobai
 * 2017年9月23日
 */
public class TestCenter
{

	public static void main(String[] args)
	{
		Date dateAdd = CommonUtils.DateAndeTime.DateUtil.dateAdd(CommonUtils.DateAndeTime.DateUtil.INTERVAL_WEEK, Calendar.getInstance().getTime(), 1);
		System.out.println(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(dateAdd));
	}

}
