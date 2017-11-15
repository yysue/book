package com.ch04;

// javac -encoding UTF-8 com/ch04/Bar.java
// java -XX:+PrintAssembly -Xcomp -XX:CompileCommand=dontinline,*Bar.sum -XX:CompileCommand=compileonly,*Bar.sum com.ch04.Bar
// 参数-Xcomp是让虚拟机以编译模式执行代码
// 两个-XX:CompileCommand意思是让编译器不要内联sum()并且只编译sum()
// -XX:+PrintAssembly就是输出反汇编内容

// java -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -Xcomp -XX:CompileCommand=dontinline,*Bar.sum -XX:CompileCommand=compileonly,*Bar.sum test.Bar
public class Bar {
	int a = 1;
	static int b = 2;
	
	public int sum(int c) {
		return a + b + c;
	}
	
	public static void main(String[] args) {
		new Bar().sum(3);
	}
}
