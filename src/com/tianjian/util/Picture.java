package com.tianjian.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

import com.opensymphony.xwork2.ActionSupport;

public class Picture extends ActionSupport{
	private File picture;
	private String pictureFileName;
	private String pictureContentType;
	private String fileName;
    private File newFile;
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public File getNewFile() {
		return newFile;
	}

	public void setNewFile(File newFile) {
		this.newFile = newFile;
	}

	public String getPictureFileName() {
		return pictureFileName;
	}

	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}

	public String getPictureContentType() {
		return pictureContentType;
	}

	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}

	public File getPicture() {
		return picture;
	}
	public void setPicture(File picture) {
		this.picture = picture;
	}
	public String addPicture(File picture,String pictureFileName, String pictureContentType) {
		System.out.println("进入函数");
		// TODO Auto-generated method stub
	    InputStream in = null;
		try {
			in = new FileInputStream(picture);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		String root=request.getRealPath("/myimages");
		newFile=new File(root,picture.getName());
		 fileName=newFile.getName();
		try {
			OutputStream out=new FileOutputStream(newFile);
			byte buffer[]=new byte[4000];
			int n;
			try {
				while((n=in.read(buffer))>0){
					out.write(buffer);
				}
				in.close();
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fileName;
	}
}
