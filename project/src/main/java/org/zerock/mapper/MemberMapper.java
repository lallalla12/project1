package org.zerock.mapper;

import org.zerock.dto.MemberDTO;

public interface MemberMapper {
	
    MemberDTO login(MemberDTO member);
    
}
