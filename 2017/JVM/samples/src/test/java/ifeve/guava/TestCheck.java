package ifeve.guava;

import static com.google.common.base.Preconditions.checkArgument;

import java.util.List;

public class TestCheck {
	public void doSth(List<Integer> list) {
		checkArgument( list != null, "List must not be null" );
	}
}
