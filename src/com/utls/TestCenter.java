package com.utls;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * ����Ĺ��ܡ�:������������Թ��������ȷ��
 * @author xiaobai
 * 2017��9��23��
 */
public class TestCenter
{

	public static void main(String[] args)
	{
		Date dateAdd = CommonUtils.DateAndeTime.DateUtil.dateAdd(CommonUtils.DateAndeTime.DateUtil.INTERVAL_WEEK, Calendar.getInstance().getTime(), 1);
		System.out.println(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(dateAdd));
	}

}
