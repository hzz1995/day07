package com.itheima.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itheima.domain.Product;
import com.itheima.service.ProductService;

/**
 * 商品管理的Servlet
 */
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * 调用业务层处理数据:
		 * 显示到页面
		 */
		try{
			// 调用业务层:
			ProductService productService = new ProductService();
			List<Product> list = productService.findAll();
			
			request.setAttribute("list", list);
			request.getRequestDispatcher("/demo4-product/list.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
