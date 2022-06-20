package com.cnote.mvc.member.model.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class Member {
	
	private String memberId;
	private String password;
	private String memberName;
	private MemberRole memberRole;
	private String memberEmail;
	private int uid;
	private Timestamp enrollDate;
	
	public Member() {

	}

	public Member(String memberId, String password, String memberName, MemberRole memberRole, String memberEmail,
			int uid, Timestamp enrollDate) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.memberName = memberName;
		this.memberRole = memberRole;
		this.memberEmail = memberEmail;
		this.uid = uid;
		this.enrollDate = enrollDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public MemberRole getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(MemberRole memberRole) {
		this.memberRole = memberRole;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public Timestamp getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Timestamp enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", password=" + password + ", memberName=" + memberName
				+ ", memberRole=" + memberRole + ", memberEmail=" + memberEmail + ", uid=" + uid + ", enrollDate="
				+ enrollDate + "]";
	}
	
	
	
}
