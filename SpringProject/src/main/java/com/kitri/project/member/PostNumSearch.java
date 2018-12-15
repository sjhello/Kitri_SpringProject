package com.kitri.project.member;

public class PostNumSearch {
	private String zipNo;
	private String lnmAdres;
	private String rnAdres;
	public PostNumSearch() {}
	public PostNumSearch(String zipNo, String lnmAdres, String rnAdres) {
		this.zipNo = zipNo;
		this.lnmAdres = lnmAdres;
		this.rnAdres = rnAdres;
	}
	public String getZipNo() {
		return zipNo;
	}
	public void setZipNo(String zipNo) {
		this.zipNo = zipNo;
	}
	public String getLnmAdres() {
		return lnmAdres;
	}
	public void setLnmAdres(String lnmAdres) {
		this.lnmAdres = lnmAdres;
	}
	public String getRnAdres() {
		return rnAdres;
	}
	public void setRnAdres(String rnAdres) {
		this.rnAdres = rnAdres;
	}
	@Override
	public String toString() {
		return "postNumSearch [zipNo=" + zipNo + ", lnAdres=" + lnmAdres + ", rnAdres=" + rnAdres + "]";
	}
}
