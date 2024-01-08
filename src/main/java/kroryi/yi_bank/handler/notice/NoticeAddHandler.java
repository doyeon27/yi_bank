package kroryi.yi_bank.handler.notice;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kroryi.yi_bank.dto.Notice;
import kroryi.yi_bank.service.NoticeService;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;

@WebServlet("/main/addNotice.do")
public class NoticeAddHandler extends HttpServlet {

    private NoticeService noticeService = new NoticeService();
    private Gson gson = new Gson();

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            process(req, res);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException, SQLException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(req.getInputStream()));
        StringBuilder jsonInput = new StringBuilder();
        String line;

        while ((line = reader.readLine()) != null) {
            jsonInput.append(line);
        }

        Notice newNotice = gson.fromJson(jsonInput.toString(), Notice.class);

        // NoticeService를 통해 공지사항 추가
        int result = noticeService.addNotice(newNotice);

        if (result > 0) {
            // 추가 성공 하면
            res.setContentType("application/json");
            res.setCharacterEncoding("utf-8");
            PrintWriter out = res.getWriter();
            out.print(gson.toJson("공지사항 추가가 완료되었습니다."));
            out.flush();
        } else {
            // 추가 실패 하면
            res.setContentType("application/json");
            res.setCharacterEncoding("utf-8");
            PrintWriter out = res.getWriter();
            out.print(gson.toJson("공지사항 추가에 실패했습니다."));
            out.flush();
        }
    }
}

