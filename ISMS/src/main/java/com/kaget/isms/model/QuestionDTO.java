package com.kaget.isms.model;

public class QuestionDTO {
	private int no, section_num, field_num, item_num, check_list_num;
	private String section, field, item, detail, check_list, num;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getSection_num() {
		return section_num;
	}
	public void setSection_num(int section_num) {
		this.section_num = section_num;
	}
	public int getField_num() {
		return field_num;
	}
	public void setField_num(int field_num) {
		this.field_num = field_num;
	}
	public int getItem_num() {
		return item_num;
	}
	public void setItem_num(int item_num) {
		this.item_num = item_num;
	}
	public int getCheck_list_num() {
		return check_list_num;
	}
	public void setCheck_list_num(int check_list_num) {
		this.check_list_num = check_list_num;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getCheck_list() {
		return check_list;
	}
	public void setCheck_list(String check_list) {
		this.check_list = check_list;
	}
	public String getNum() {
		num = section_num + "." + field_num + "." + item_num;
		return num;
	}
}
