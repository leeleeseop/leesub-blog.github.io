package org.zerock.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.zerock.notice.vo.NoticeVO;

import com.webjjang.util.page.PageObject;

@Repository
public interface NoticeMapper {

	// 공지사항 리스트
	public List<NoticeVO> list(PageObject pageObject);
	
	// 공지사항 리스트 페이지 처리를 위한 전체 데이터 개수
	public Long getTotalRow(PageObject pageObject);
	
	// 글보기
	public NoticeVO view(Long no);

	// 글등록
	public Integer write(NoticeVO vo);
	// 글등록 트랜젝션 처리 테스트
	// public Integer writeTx(NoticeVO vo);
	
	// 글수정
	public Integer update(NoticeVO vo);
	
	// 글삭제
	public Integer delete(@Param("no") Long no);
	
}
