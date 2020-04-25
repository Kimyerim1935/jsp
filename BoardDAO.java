package board.model;

import java.sql.*;
import java.util.ArrayList;
import javax.naming.*;
import javax.sql.DataSource;

public class BoardDAO {
	
	DataSource ds;
	public static final int WRITING_PER_PAGE = 10;
	
	public BoardDAO(){
		try{
			Context initContext = (Context) new IntialContext().lookup("java:comp/env/");
			ds = (DataSource)initContext.lookup("jdbc/mysql");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//게시판 목록 조회 기능 수행
	public ArrayList<BoardDTO> boardList(String curPage){
		
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = ds.getConnection();
			String sql = "SELECT num,name,password,subject,contect,write_date,write_time,ref,step,lev,read_cnt,child_cnt";
			sql += "FROM BOARD ORDER BY ref desc,step asc";
			sql += "LIMIT ?,?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,WRITING_PER_PAGE * (Integer.parseInt(curPage)-1));
			pstmt.setInt(2, WRITING_PER_PAGE);
			
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				 int num = rs.getInt("num");
				 String name = rs.getString("name");
				 String password = rs.getString("password");
				 String subject = rs.getString("subject");
				 String content = rs.getString("content");
				 Date writeDate = rs.getDate("write_date");
				 Time writeTime = rs.getTime("write_time");
				 int ref = rs.getInt("ref");
				 int step = rs.getInt("step");
				 int lev = rs.getInt("lev");
				 int readCnt= rs.getInt("read_cnt");
				 int childCnt = rs.getInt("child_Cnt");
				 		
				 BoardDTO writing = new BoardDTO();
				 writing.setNum(num);
				 writing.setName(name);
				 writing.setPassword(password);
				 writing.setsubject(subject);
				 writing.setContent(content);
				 writing.setWriteDate(writedate);
				 writing.setWriteTime(writetime);
				 writing.setRef(ref);
				 writing.setStep(step);
				 writing.setLev(lev);
				 writing.setReadCnt(readcnt);
				 writing.setChildCnt(childcnt);
				 
				 list.add(writing);
			}
			catch (Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs !=null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null)conn.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
			return list;
		}
		//게시판의 페이징 처리를 위한 기능 수행
		public int boardPageCnt(){
			int pageCnt = 0;
			
			Connection conn = null;
			PreparedStament pstmt = null;
			ResultSet rs = null;
			
			try{
				conn = ds.getConnection();
				String sql = "SELECT COUNT(*) AS num FROM BOARD";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				if (rs.next()){
					pageCnt = rs.getInt("num")/WRITING_PER_PAGE +1;
				}
			}catch (Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs != null)rs.close();
					if(pstmt != null)pstmt.close();
					if(conn != null)conn.close();
				}catch (SQLException e){
					e.printStackTrace();
				}
			}
			return pageCnt;
		
	}
}
