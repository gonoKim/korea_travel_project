package com.project.travel.utility;

public class Utilities {
	private static Utilities instance = new Utilities();
	
	public static Utilities getInstance() {
		return instance;
	}
	
	private Utilities() {
		
	}

	public String makeSha256BCrypt(String inputString) throws Exception {
		SHA256 sha = SHA256.getInsatnce();
		String shaString = sha.getSha256(inputString.getBytes());
		return BCrypt.hashpw(shaString, BCrypt.gensalt());
	}
	
	public boolean checkSha256BCrypt(String inputValue, String dbValue) throws Exception {
		SHA256 sha = SHA256.getInsatnce();
		String shaValue = sha.getSha256(inputValue.getBytes());
		return BCrypt.checkpw(shaValue, dbValue);
	}
}
