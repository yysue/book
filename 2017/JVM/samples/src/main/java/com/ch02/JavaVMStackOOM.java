package com.ch02;

/** 创建线程导致内存溢出 VM Args: -Xss2M */
public class JavaVMStackOOM {
	private void dontStop() {
		while (true) {}
	}
	public void stackLeakByThread() {
		while (true) {
			new Thread(new Runnable() {
				@Override
				public void run() {dontStop();}
			}).start();
		}
	}
	public static void main(String[] args) throws Throwable {
		JavaVMStackOOM oom = new JavaVMStackOOM();
		oom.stackLeakByThread();
	}
}
