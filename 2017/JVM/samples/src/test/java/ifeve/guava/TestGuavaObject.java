package ifeve.guava;

import java.util.Objects;

import org.junit.Test;

// import com.google.common.base.Objects;

public class TestGuavaObject {
	public static void main(String[] args) {
		System.out.println("abcd");
	}
	
	@Test
	public void testEquals() {
		// com.google.common.base.Objects.equal()
		// java.util.Objects.equals() JDK7引入
		System.out.println("abc");
		System.out.println("a".equals("a"));
		System.out.println("a".equals(null));
		System.out.println("==================>");
		System.out.println(Objects.equals("a", "a")); // true
		System.out.println(Objects.equals(null, "a")); // false
		System.out.println(Objects.equals("a", null)); // false
		System.out.println(Objects.equals(null, null)); // true
		System.out.println("==================>");
		System.out.println(com.google.common.base.Objects.equal("a", "a")); // true
		System.out.println(com.google.common.base.Objects.equal(null, "a")); // false
		System.out.println(com.google.common.base.Objects.equal("a", null)); // false
		System.out.println(com.google.common.base.Objects.equal(null, null)); // true
	}
	
	@Test
	public void testHashCode() {
		// com.google.common.base.Objects.hasCode()
		// java.util.Objects.hash() JDK7引入
		System.out.println(Objects.hash(11, 12, 14)); // 40748
		System.out.println(com.google.common.base.Objects.hashCode(11, 12, 14)); // 40748
	}
	
	@Test
	public void testToString() {
		// 这个方法是帮助你重写toString()方法的
		System.out.println(new User(1, "a", 20));
	}
}
