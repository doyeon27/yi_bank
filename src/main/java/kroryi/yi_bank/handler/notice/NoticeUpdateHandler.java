package kroryi.yi_bank.handler.notice;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kroryi.yi_bank.dao.NoticeDao;
import kroryi.yi_bank.dao.impl.NoticeDaoImpl;
import kroryi.yi_bank.dto.Notice;
import kroryi.yi_bank.service.NoticeService;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.SQLOutput;

@WebServlet("/main/updateNotice.do")
public class NoticeUpdateHandler extends HttpServlet {
    private NoticeService noticeService = new NoticeService();
    private Gson gson = new Gson();

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            process(req, res);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    protected void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException, SQLException {


        BufferedReader reader = req.getReader();
        StringBuilder jsonInput = new StringBuilder();
        String line;

        while ((line = reader.readLine()) != null) {
            jsonInput.append(line);
        }

        System.out.println(jsonInput);



        Notice notice = gson.fromJson(jsonInput.toString(), Notice.class);

        // 공지사항 수정 메서드 호출
        int result = noticeService.modifyNotice(notice);

        // 결과에 따라 응답
        res.setContentType("application/json");
        res.setCharacterEncoding("utf-8");
        PrintWriter out = res.getWriter();

        if (result > 0) {
            out.print(gson.toJson("수정완료"));
        } else {
            out.print(gson.toJson("수정실패"));
        }

        out.flush();
    }

}