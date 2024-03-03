package human.dto;

import java.util.Date;

public class BoardDTO {
	private int b_idx;
	private int m_idx;
	private String writer;
	private String title;
	private String content;
	private String originfile_name;
	private String savefile_name;
	private int read_cnt;
	private Date post_date;
	private Date update_date;
	private int del_or_not;
	
	public int getB_idx() {
		return b_idx;
	}
	public void setB_idx(int b_idx) {
		this.b_idx = b_idx;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOriginfile_name() {
		return originfile_name;
	}
	public void setOriginfile_name(String originfile_name) {
		this.originfile_name = originfile_name;
	}
	public String getSavefile_name() {
		return savefile_name;
	}
	public void setSavefile_name(String savefile_name) {
		this.savefile_name = savefile_name;
	}
	public int getRead_cnt() {
		return read_cnt;
	}
	public void setRead_cnt(int read_cnt) {
		this.read_cnt = read_cnt;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public int getDel_or_not() {
		return del_or_not;
	}
	public void setDel_or_not(int del_or_not) {
		this.del_or_not = del_or_not;
	}
	
}
