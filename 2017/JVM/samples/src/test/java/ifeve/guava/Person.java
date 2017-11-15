package ifeve.guava;

import com.google.common.collect.ComparisonChain;

class Person implements Comparable<Person> {
	private String lastName;
	private String firstName;
	private int zipCode;

//	public int compareTo(Person other) {
//		int cmp = lastName.compareTo(other.lastName);
//		if (cmp != 0) {
//			return cmp;
//		}
//		cmp = firstName.compareTo(other.firstName);
//		if (cmp != 0) {
//			return cmp;
//		}
//		return Integer.compare(zipCode, other.zipCode);
//	}

	public int compareTo(Person that) {
		return ComparisonChain.start() // 
				.compare(this.lastName, that.lastName) // 
				.compare(this.zipCode, that.zipCode) // 
				// .compare(this.anEnum, that.anEnum, Ordering.natural().nullsLast()) // 
				.result();
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public int getZipCode() {
		return zipCode;
	}

	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}
}
