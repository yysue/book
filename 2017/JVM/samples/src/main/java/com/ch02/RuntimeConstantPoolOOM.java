package com.ch02;

import java.util.ArrayList;
import java.util.List;

/**
 * 运行时常量池溢出
 * 
 * VM Args: -XX:PermSize=10M -XX:MaxPermSize=10M
 */
public class RuntimeConstantPoolOOM {
	public static void main(String[] args) {
//		List<String> list = new ArrayList<String>();
//		int i = 0;
//		while (true) {
//			list.add(String.valueOf(i++).intern());
//		}
		new RuntimeConstantPoolOOM().testIntern();
	}

	void testIntern() {
		String str1 = new StringBuilder("计算机").append("软件").toString();
		System.out.println(str1.intern() == str1);

		String str2 = new StringBuilder("ja").append("va").toString();
		System.out.println(str2.intern() == str2);

		String str3 = "hello";
		String str4 = "hello";
		System.out.println(str3.intern() == str3);
		System.out.println(str3 == str4);
	}
}
