package ch04;

import java.io.*;
import java.net.Socket;

public class Client {
	public static void main(String args[]) {
		// String msg = "Client Data";
		String msg = getHeader();
		try {
			//创建一个Socket，跟本机的8080端口连接
			// Socket socket = new Socket("127.0.0.1", 8080);
			// Socket socket = new Socket("192.168.50.196", 8082);
			Socket socket = new Socket("43.248.79.31", 80);
			//使用Socket创建PrintWriter和BufferedReader进行读写数据
			PrintWriter pw = new PrintWriter(socket.getOutputStream());
			BufferedReader is = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			//发送数据
			pw.println(msg);
			pw.flush();
			//接收数据
			String line = is.readLine();
			while (line != null) {
				line = is.readLine();
				System.out.println("received from server: " + line);
			}
			//关闭资源
			pw.close();
			is.close();
			socket.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static String getHeader() {
		StringBuilder sb = new StringBuilder();
		sb.append("GET / HTTP/1.1");
		sb.append("Host: localhost:8080");
		sb.append("Connection: keep-alive");
		sb.append("Cache-Control: max-age=0");
		sb.append("Upgrade-Insecure-Requests: 1");
		sb.append("User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36");
		sb.append("Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8");
		sb.append("Accept-Encoding: gzip, deflate, br");
		sb.append("Accept-Language: zh-CN,zh;q=0.8");
		sb.append("Cookie: JSESSIONID=05599CB25E32D30A0698F08E8C5883C3");
		return sb.toString();
	} 
}
