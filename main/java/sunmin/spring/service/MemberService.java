package sunmin.spring.service;

import sunmin.spring.vo.Member;

public interface MemberService {
	
	int newMember(Member m);
	int loginMember(Member m);
	Member readOneMember(String mno);

}
