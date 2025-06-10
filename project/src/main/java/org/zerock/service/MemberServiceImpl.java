package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.dto.MemberDTO;
import org.zerock.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public MemberDTO login(MemberDTO member) {
        return memberMapper.login(member);  // DB에 id, pw로 사용자 있는지 확인
    }
}
