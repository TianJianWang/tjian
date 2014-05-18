package com.tianjian.model;

public class Finance {
	private int finance_id;
	private int pro_id;

	private int inCome;
	private int outCome;
	private int bonus;

	public Finance() {
		// TODO Auto-generated constructor stub
	}

	public Finance(int finance_id, int pro_id,  int inCome,
			int outCome, int bonus) {
		super();
		this.finance_id = finance_id;
		this.pro_id = pro_id;
		
		this.inCome = inCome;
		this.outCome = outCome;
		this.bonus = bonus;
	}

	public int getFinance_id() {
		return finance_id;
	}

	public void setFinance_id(int finance_id) {
		this.finance_id = finance_id;
	}

	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public int getInCome() {
		return inCome;
	}
	public void setInCome(int inCome) {
		this.inCome = inCome;
	}
	public int getOutCome() {
		return outCome;
	}

	public void setOutCome(int outCome) {
		this.outCome = outCome;
	}

	public int getBonus() {
		return bonus;
	}

	public void setBonus(int bonus) {
		this.bonus = bonus;
	}

	@Override
	public String toString() {
		return "Finance [finance_id=" + finance_id + ", pro_id=" + pro_id
				+ ", finance_type=" + ", inCome=" + inCome
				+ ", outCome=" + outCome + ", bonus=" + bonus + "]";
	}
}
