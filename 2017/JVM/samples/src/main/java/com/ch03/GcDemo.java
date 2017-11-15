package com.ch03;

public class GcDemo {
	public static void main(String[] args) {
		GcObject obj1 = new GcObject(); // step 1
		GcObject obj2 = new GcObject(); // step 2 
		
		obj1.instance = obj2; // step 3
		obj2.instance = obj1; // step 4
		
		obj1 = null; // step 5
		obj2 = null; // step 6
	}
}

class GcObject {
	public GcObject instance = null;
}
