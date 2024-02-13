import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

class MailSender {
	public void send(String toEmail, String title, String content) { 
		try {
			String id = "javaemailtest@naver.com";  //네이버 이메일 아이디
			String pw = "!javatest123";        		//네이버 비밀번호
			
			// 메일 관련 정보
			String host = "smtp.naver.com";
			int port = 465;
			final String username = id;  //네이버 이메일 주소중 @ naver.com앞주소만 기재합니다.
			final String password = pw;   			//네이버 이메일 비밀번호를 기재합니다.
			
			// 메일 내용
			Properties props = System.getProperties();
			
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", port);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.trust", host);
			
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				String un = username;
				String pw = password;
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(un, pw);
				}
			});
			session.setDebug(true); // for debug
			
			Message mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(username));
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
			mimeMessage.setSubject(title);
			mimeMessage.setText(content);
			Transport.send(mimeMessage);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}

public class TestMail {
	public static void main(String[] args) {
		String toEmail = "회원가입 창에서 받아온 이메일";
		String title = "제목"; // 이메일 제목
		String content = "내용"; // 이메일 내용(여기에 인증번호 난수발생해서 보내기)
		
		// 메일 객체 생성
		MailSender obj = new MailSender();
		obj.send(toEmail, title, content);
	}
}
