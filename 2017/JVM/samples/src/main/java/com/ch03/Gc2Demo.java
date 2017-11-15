package com.ch03;

/**
 * -XX:+PrintGCDetails
 */
public class Gc2Demo {
	public static void main(String[] args) {
		Object obj = new Object();
		System.gc();
		System.out.println();
		obj = new Object();
		obj = new Object();
		System.gc();
		System.out.println();
	}
}
