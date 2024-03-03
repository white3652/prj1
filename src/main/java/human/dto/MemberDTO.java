package human.dto;


import java.util.Objects;



//DTO(Data Transfer Object): 데이터를 저장하고 전달하는 역할을 하는 자바클래스
//회원DTO는 tb_member테이블의 컬럼명 개수와 같이 필드 선언
public class MemberDTO {
	private int m_idx;
	private String member_name;
	private String member_id;
	private String member_pw;
	private String email;
	private String handphone;
	private int cancel_or_not;
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHandphone() {
		return handphone;
	}
	public void setHandphone(String handphone) {
		this.handphone = handphone;
	}
	public int getCancel_or_not() {
		return cancel_or_not;
	}
	public void setCancel_or_not(int cancel_or_not) {
		this.cancel_or_not = cancel_or_not;
	}
	@Override
	public int hashCode() {
		return Objects.hash(cancel_or_not, email, handphone, m_idx, member_id, member_name, member_pw);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberDTO other = (MemberDTO) obj;
		return cancel_or_not == other.cancel_or_not && Objects.equals(email, other.email)
				&& Objects.equals(handphone, other.handphone) && m_idx == other.m_idx
				&& Objects.equals(member_id, other.member_id) && Objects.equals(member_name, other.member_name)
				&& Objects.equals(member_pw, other.member_pw);
	}
	



}
