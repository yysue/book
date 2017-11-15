package com.ch02;

import java.util.ArrayList;
import java.util.List;

/**
 * Java堆内存溢出
 * VM Args: -Xms20m -Xmx20m -XX:+HeapDumpOnOutOfMemoryError
 * -Xms20m 堆最小值<br/>
 * -Xmx20m 堆最大值<br/>
 * -XX:+HeapDumpOnOutOfMemoryError 
 * 默认关闭，在发生内在溢出异常时是否生成堆转储快照，关闭则不生成
 */
public class HeapOOM {
	static class OOMObject {
	}

	public static void main(String[] args) {
		List<OOMObject> list = new ArrayList<OOMObject>();
		while (true) {
			list.add(new OOMObject());
		}
	}
}
