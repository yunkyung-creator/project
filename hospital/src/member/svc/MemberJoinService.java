package member.svc;

import vo.MemberBean;
import static db.JdbcUtil.*;
import java.sql.Connection;
import dao.MemberDAO;

public class MemberJoinService {

	public boolean joinMember(MemberBean member) {

		boolean joinSuccess = false; // 회원 가입 성공 여부를 저장할 변수
		MemberDAO memberDAO = MemberDAO.getInstance();
		Connection con = getConnection();
		memberDAO.setConnection(con);
		int insertCount = memberDAO.insertMember(member); // 새로운 회원 정보 하나를 DB에 삽입하는 insertMember 메서드를 호출
		if (insertCount > 0) { // 삽입된 레코드 개수가 1개 이상이면 joinSuccess 변수 값을 true로 변경하고 트랜잭션을 commit 시킴
			joinSuccess = true;
			commit(con);
		} else { // 삽입된 레코드가 없으면 트랜잭션 작업을 rollback 시킴
			rollback(con);
		}
		close(con);
		return joinSuccess;
	}

}