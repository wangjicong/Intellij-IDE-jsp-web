package com.wjc.main;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 上传文件存储目录
    private static final String UPLOAD_DIRECTORY = "upload";
    // 上传配置
    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doGet(req, resp);
        PrintWriter out = resp.getWriter();
        out.print("hello word from uploadServlet");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // super.doPost(req, resp);
        System.out.println("start");
        //检测是否为多媒体上传
        if (!ServletFileUpload.isMultipartContent(req)) {
            //如果不是则停止
            PrintWriter writer = resp.getWriter();
            writer.println("Error:表单必须包含enctype=multipart/form-data");
            writer.flush();
            return;
        }

        //配置上传参数
        DiskFileItemFactory factory = new DiskFileItemFactory();
        System.out.println("配置上传参数");
        //设置内存临界值，超过后将产生临时文件并储存于临时文件目录中
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        //设置临时存储目录
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);

        //设置文件最大上传值
        upload.setFileSizeMax(MAX_FILE_SIZE);

        //设置最大请求值 包含文件和表单数据
        upload.setSizeMax(MAX_REQUEST_SIZE);

        //中文处理
        upload.setHeaderEncoding("UTF-8");

        //构造临时路径来存储上传的文件
        //这个路径相对当前应用的目录
        String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;

        //如果目录不存在，则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()){
            uploadDir.mkdir();
        }

        //上传文件
        try {
            System.out.println("上传文件");
            List<FileItem> formItems  = upload.parseRequest(req);

            if (formItems!=null && formItems.size()>0){
                //迭代表单数据
                for (FileItem item:formItems){
                    // 处理不在表单中的字段
                    if (!item.isFormField()){
                        System.out.println("开始上传文件");
                        String fileName = new File(item.getName()).getName();
                        String filePath = uploadPath+File.separator+fileName;
                        File storeFile = new File(filePath);
                        //在控制台输出文件的上传路径
                        //保存文件到硬盘
                        item.write(storeFile);
                        System.out.println("file path is "+filePath);
                        req.setAttribute("message","文件上传成功");
                        //return;
                    }
                }
            }
        }catch ( Exception e){
            e.printStackTrace();
            req.setAttribute("message","错误信息："+e.getMessage());
        }

        //挑战到messages.jsp
        getServletContext().getRequestDispatcher("/jsp/message.jsp").forward(req,resp);
    }
}
