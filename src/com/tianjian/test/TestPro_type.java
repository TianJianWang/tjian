package com.tianjian.test;

import com.tianjian.dao.ProjectDao;

public class TestPro_type {

	
	public static void main(String[] args) {

		ProjectDao prod=new ProjectDao();
		prod.listprojectbypro_type("其他");
		
	
	}

}
