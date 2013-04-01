package dao.utils;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class LogoUpload {

	public boolean update(HttpServletRequest request, ServletContext context,
			String filepath) throws Exception {

		// 为文件对象产生工厂对象。
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(1024 * 4); // 设置缓冲区的大小，此处为4kb
		factory.setRepository(new File(filepath)); // 设置上传文件的目的地

		// 产生servlet上传对象
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setSizeMax(4 * 1024 * 1024); // 设置上传文件的大小，此处为4M

		String fileName = null;

		try {

			Random rd = new Random();
			int tId = rd.nextInt(9999999);
			System.out.println("tid:" + tId);
			@SuppressWarnings("unchecked")
			List<FileItem> list = upload.parseRequest(request); // 取得所有的上传文件信息
			Iterator<FileItem> it = list.iterator();

			while (it.hasNext()) {

				FileItem item = it.next();
				if (item.isFormField() == true) { // 不是一个普通的表单对象
					String fieldName = item.getFieldName();
					fileName = item.getName(); // 文件名
					// String contentType = item.getContentType(); // 文件类型
					System.out.println(fieldName);
					// boolean isInMemory = item.isInMemory(); // 是否是保存在内存中
					// long sizeInBytes = item.getSize();

					if (!"".equals(fileName) && !(fileName == null)) {// 如果fileName为null，即没有上传文件
						System.out.println(item);
						// 取文件名
						fileName = fileName.substring(
								fileName.lastIndexOf("\\") + 1,
								fileName.length());
						File uploadedFile = new File(filepath, fileName);
						try {
							item.write(uploadedFile);
						} catch (Exception e) {
							e.printStackTrace();
						}
					} else {
						return false;
					}

					return true;

				} else { // 取得普通的对象[对于像文本框这种类型的使用]}
					File file = new File(filepath);
					file.mkdir();

					System.out.println(item);

					String fileName1 = tId + ".jpg";
					System.out.println(fileName1);
					String fileName2 = fileName1.substring(fileName1
							.lastIndexOf("\\") + 1);
					System.out.println(fileName2);
					file = new File(filepath + fileName2);

					item.write(file);

					return true;
				}

			}

		} catch (FileUploadException e) {
			e.printStackTrace();
		}

		// 读取文件内容
		/*
		 * try { FileReader fr = new FileReader(request.getContextPath() +
		 * "/Lolit/images/" + fileName); BufferedReader reader = new
		 * BufferedReader(fr); String line = "";
		 * 
		 * // 插入数据库
		 * 
		 * String strDriverName = "com.mysql.jdbc.Driver"; String strUrl =
		 * "jdbc:mysql://localhost:3306/costdb"; String strUser = "root"; String
		 * strPwd = "laopoaini";
		 * 
		 * try { Class.forName(strDriverName); } catch (ClassNotFoundException
		 * e) { e.printStackTrace(); }
		 * 
		 * Connection connection = null; Statement st = null; ResultSet rs =
		 * null;
		 * 
		 * try { connection = DriverManager.getConnection(strUrl, strUser,
		 * strPwd); st = connection.createStatement();
		 * 
		 * while ((line = reader.readLine()) != null) {
		 * System.out.println(line); System.out.println(cardType); int inta = st
		 * .executeUpdate(
		 * "insert into phonesource (phoneCardId,phoneCardType) values (" + line
		 * + ",'" + cardType + "')");
		 * 
		 * if (inta > 0) { System.out.println("up添加成功phone。"); } }
		 * 
		 * } catch (Exception e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 * 
		 * } catch (FileNotFoundException e) { e.printStackTrace(); } catch
		 * (IOException e) { e.printStackTrace(); }
		 */
		return false;
	}
}
