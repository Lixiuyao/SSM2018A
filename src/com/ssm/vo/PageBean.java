package com.ssm.vo;

import java.util.List;

public class PageBean<T> {
	//当前是第几页
	private Integer pageNo;
	//当前页显示多少条数据
	private Integer pageSize;
	//总记录
	private Integer totalCount;
	//一共多少页
	private Integer totalPage;
	//当前页的数据
	private List<T> list;
	public PageBean() {
		super();
	}
	public PageBean(Integer pageNo, Integer pageSize, Integer totalCount, Integer totalPage, List<T> list) {
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
		this.totalPage = totalPage;
		this.list = list;
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "PageBean [pageNo=" + pageNo + ", pageSize=" + pageSize + ", totalCount=" + totalCount + ", totalPage="
				+ totalPage + ", list=" + list + "]";
	}
	

}
