package demo;

import java.util.Vector;

public class TestVector {
	public static void main(String[] args) {
		Vector<Integer> vector = new Vector<Integer>();
		for (int i = 0; i < 10; i++) {
			vector.add(i);
		}
		for (int i=0; i<vector.size(); i++) {
			System.out.println(i + "\t" + vector.size());
			vector.remove(i);
		}
		System.out.println("size:" + vector.size());
	}
}
