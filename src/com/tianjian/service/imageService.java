package com.tianjian.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

public class imageService {
	private File image;
	private String imageFileName;
	private String imageContentType;
	private String reimageFileName;

	public String upload() {
	 
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/images");
		 
		if (image != null) {
			 
			InputStream in = null;
			try {
				in = new FileInputStream(image);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}

			OutputStream out = null;
			try {reimageFileName= Math.random()
					+ imageFileName;
		 
				out = new FileOutputStream(realpath + "/" +reimageFileName);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
			byte[] b = new byte[1024 * 2048];
			int count = 0;
			try {
				while ((count = in.read(b)) > 0) {
					out.write(b, 0, count);

				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				out.close();
				in.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

			return "success";

		} else
			return "fail";
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public String getReimageFileName() {
		return reimageFileName;
	}

	public void setReimageFileName(String reimageFileName) {
		this.reimageFileName = reimageFileName;
	}
}
