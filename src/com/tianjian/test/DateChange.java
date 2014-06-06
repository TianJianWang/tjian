package com.tianjian.test;

import java.text.DateFormat;
import java.util.Date;

public class DateChange {
/*
 * 将日期格式为yyyy-mm-dd转化为yyyy/mm/dd形式
 * 
 * 
 * 
 * */
	
	public static void main(Date enddate) {
		
    

		//Date date=new Date();
		String today=enddate.toLocaleString();
		System.out.println(today);
		
		
		System.out.println(today.substring(2, 4));
//	System.out.println(date.getYear()+1900);
		
		System.out.println("*****");
		
		System.out.println(enddate.getMonth()+1);

		System.out.println(enddate.getDate());
	//	System.out.println(today.toString());
		
System.out.println(today.substring(2, 4)+'/'+(enddate.getMonth()+1)+'/'+enddate.getDate());
		
	String	newdate=today.substring(2, 4)+'/'+(enddate.getMonth()+1)+'/'+enddate.getDate();
		
		
	
	}

	}


