
public class test {
	public static void main(String[] args) {
		int randomNumber = (int)(Math.random() * 10000);
		String authenticationNumber = "";
		if(randomNumber < 10) {
			authenticationNumber = "000" + randomNumber;
		} else if(randomNumber < 100) {
			authenticationNumber = "00" + randomNumber;
		} else if(randomNumber < 1000) {
			authenticationNumber = "0" + randomNumber;
		} else {
			authenticationNumber = "" + randomNumber;
		}
		System.out.println(authenticationNumber);
	}
}
