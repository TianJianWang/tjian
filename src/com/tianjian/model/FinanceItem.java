package com.tianjian.model;

public class FinanceItem {
	private int item_id;
	private int finance_id;
	private String item_thing;
	private String item_type;
	private int item_money;
	private String item_time;
	private String item_person;
	private String invoice_pic;
	public FinanceItem() {
		// TODO Auto-generated constructor stub
	}

	public FinanceItem(int item_id, int finance_id, String item_thing,
			String item_type, int item_money, String item_time,
			String item_person, String invoice_pic) {
		super();
		this.item_id = item_id;
		this.finance_id = finance_id;
		this.item_thing = item_thing;
		this.item_type = item_type;
		this.item_money = item_money;
		this.item_time = item_time;
		this.item_person = item_person;
		this.invoice_pic = invoice_pic;
	}

	public int getItem_id() {
		return item_id;
	}

	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}

	public int getFinance_id() {
		return finance_id;
	}

	public void setFinance_id(int finance_id) {
		this.finance_id = finance_id;
	}

	public String getItem_thing() {
		return item_thing;
	}

	public void setItem_thing(String item_thing) {
		this.item_thing = item_thing;
	}

	public String getItem_type() {
		return item_type;
	}

	public void setItem_type(String item_type) {
		this.item_type = item_type;
	}

	public int getItem_money() {
		return item_money;
	}

	public void setItem_money(int item_money) {
		this.item_money = item_money;
	}

	public String getItem_time() {
		return item_time;
	}

	public void setItem_time(String item_time) {
		this.item_time = item_time;
	}

	public String getItem_person() {
		return item_person;
	}

	public void setItem_person(String item_person) {
		this.item_person = item_person;
	}

	public String getInvoice_pic() {
		return invoice_pic;
	}

	public void setInvoice_pic(String invoice_pic) {
		this.invoice_pic = invoice_pic;
	}

	@Override
	public String toString() {
		return "FinanceItem [item_id=" + item_id + ", finance_id=" + finance_id
				+ ", item_thing=" + item_thing + ", item_type=" + item_type
				+ ", item_money=" + item_money + ", item_time=" + item_time
				+ ", item_person=" + item_person + ", invoice_pic="
				+ invoice_pic + "]";
	}


}
