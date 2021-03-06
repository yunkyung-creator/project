package member.svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import dao.MemberDAO;

public class MemberDeleteService {

	public boolean deleteMember(String deleteId) {

		boolean deleteResult = false;
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		int deleteCount = memberDAO.deleteMember(deleteId); // MemberDAO 클래스에 정의되어있는 deleteMember 메서드를 호출하여 인자로 지정된 아이디를
															// 가지고있는 회원 정보를 삭제
		if (deleteCount > 0) { // 회원 정보 삭제 요청이 성공했을 때 트랜잭션을 commit 한다
			commit(con);
			deleteResult = true;
		} else { // 회원 정보 삭제 요청이 실패했을 때 트랜잭션 작업을 rollback 한다
			rollback(con);
		}
		close(con);
		return deleteResult;
	}

}