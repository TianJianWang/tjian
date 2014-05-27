package com.tianjian.test;

import com.tianjian.dao.ProjectDao;

public class TestFenye {

	
	public static void main(String[] args) {
		
		
		
		
		ProjectDao prod=new ProjectDao();
		prod.listprojectbypage(2, 10);
	

	}

}
