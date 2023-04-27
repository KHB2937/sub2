//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//public class BoardDAO {
//    private Connection conn = null;
//
//    public BoardDAO() {
//        conn = DBManager.getConnection();
//    }
//
//    public List<BoardVO> selectAll() {
//        String sql = "SELECT * FROM board ORDER BY id DESC";
//        List<BoardVO> list = new ArrayList<>();
//
//        try {
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//
//            while (rs.next()) {
//                BoardVO board = new BoardVO();
//
//                board.setId(rs.getInt("id"));
//                board.setTitle(rs.getString("title"));
//                board.setContent(rs.getString("content"));
//                board.setWriter(rs.getString("writer"));
//                board.setRegdate(rs.getTimestamp("regdate"));
//
//                list.add(board);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    public BoardVO selectOne(int id) {
//        String sql = "SELECT * FROM board WHERE id = ?";
//        BoardVO board = null;
//
//        try {
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//            pstmt.setInt(1, id);
//
//            ResultSet rs = pstmt.executeQuery();
//
//            if (rs.next()) {
//                board = new BoardVO();
//
//                board.setId(rs.getInt("id"));
//                board.setTitle(rs.getString("title"));
//                board.setContent(rs.getString("content"));
//                board.setWriter(rs.getString("writer"));
//                board.setRegdate(rs.getTimestamp("regdate"));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return board;
//    }
//
//    public void insert(BoardVO board) {
//        String sql = "INSERT INTO board (title, content, writer, regdate) VALUES (?, ?, ?, NOW())";
//
//        try {
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//
//            pstmt.setString(1, board.getTitle());
//            pstmt.setString(2, board.getContent());
//            pstmt.setString(3, board.getWriter());
//
//            pstmt.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public void update(BoardVO board) {
//        String sql = "UPDATE board SET title = ?, content = ? WHERE id = ?";
//
//        try {
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//
//            pstmt.setString(1, board.getTitle());
//            pstmt.setString(2, board.getContent());
//            pstmt.setInt(3, board.getId());
//
//            pstmt.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public void delete(int id) {
//        String sql = "DELETE FROM board WHERE id = ?";
//
//        try {
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//
//            pstmt.setInt(1, id);
//
//            pstmt.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}