package com.ustc.sse.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.sql.SQLException;
import java.util.RandomAccess;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.InputBuffer;

import com.ustc.sse.db.*;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**
 * Servlet implementation class UplodeServlet
 */
@WebServlet("/UplodeUserImagesServlet")
public class UplodeUserImagesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UplodeUserImagesServlet() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String filePath = "userimages";
		String filename="";
		String result="上传成功";
		boolean flag=true;
		File file = new File(filePath);
		if(file.exists()){
			file.mkdir();
		}
		SmartUpload smartupload = new SmartUpload();
		smartupload.initialize(getServletConfig(), req,resp);
		smartupload.setMaxFileSize(1024*100);
		smartupload.setAllowedFilesList("jpg,png,gif");
		try {
			smartupload.upload();
			int count = smartupload.save(filePath);
			for(int i =0; i < smartupload.getFiles().getCount(); i++){
				com.jspsmart.upload.File tempFile = smartupload.getFiles().getFile(i);
				filename=tempFile.getFileName();
			}
		}
		catch (Exception e1) {
			// TODO Auto-generated catch block
			flag=false;
			if(e1.getMessage().indexOf("1105")!=-1){
				result=	"上传失败！！！文件过大，超过100Kb！！！";
			}
			if(e1.getMessage().indexOf("1010")!=-1){
				result=	"上传失败！！！文件类型不正确！！";
			}
			e1.printStackTrace();
		}
		if(flag){
			String sql= "update StudentInform set images="+"'"+filename+"'"+" where name="+"'"+req.getSession().getAttribute("Username").toString().trim()+"'";
			try {
				Dbhelper.ExecUpdate(sql);
				result = "上传成功";
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				result = "数据库上传失败";
				e.printStackTrace();
			}
		}
		req.setAttribute("result", result);
		RequestDispatcher dispatcher = req.getRequestDispatcher("CompleteInform.jsp");
		dispatcher.forward(req, resp);
	}
}
