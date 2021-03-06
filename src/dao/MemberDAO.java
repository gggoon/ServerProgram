package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import dto.MemberDTO;
import mybatis.config.DBService;

public class MemberDAO {
   
	private SqlSessionFactory factory;
	
	private static MemberDAO instance;
	private MemberDAO() {
		factory = DBService.getInstance().getFactory();
	}
	public static MemberDAO getinstance() {
		if (instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	
	// 1. 회원 목록
	public List<MemberDTO> selectAllMember() {
		SqlSession ss = factory.openSession();
		List<MemberDTO> list = ss.selectList("dao.members.selectAllMember");
		ss.close();
		return list;
	}
	
	
	
	
	
	
}
