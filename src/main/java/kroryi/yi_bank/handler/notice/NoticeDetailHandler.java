package kroryi.yi_bank.handler.notice;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kroryi.yi_bank.dto.Notice;
import kroryi.yi_bank.service.NoticeService;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/main/noticeDetail.do")
public class NoticeDetailHandler extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));

        NoticeService noticeService = new NoticeService();
        Notice notice = null;
        try {
            notice = noticeService.showNoticeByNo(noticeNo);
        } catch (SQLException e) {
            e.printStackTrace();
            // 오류 처리 로직 추가 가능
        }

        // Gson을 사용하여 Notice 객체를 JSON 문자열로 변환
        Gson gson = new Gson();
        String noticeJson = gson.toJson(notice);

        // JSON 데이터를 응답으로 전송
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.print(noticeJson);
        out.flush();
    }
}
