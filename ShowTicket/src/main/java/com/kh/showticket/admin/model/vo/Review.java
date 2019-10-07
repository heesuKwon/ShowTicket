package com.kh.showticket.admin.model.vo;

public class Review {

	private int reviewNo;
	private String reviewShowId;
	private String reviewWriter;
	private String reviewTitle;
	private String reviewContent;
	private int reviewLike;
	private int reviewStar;
	
	public Review() {
		super();
	}

	public Review(int reviewNo, String reviewShowId, String reviewWriter, String reviewTitle, String reviewContent,
			int reviewLike, int reviewStar) {
		super();
		this.reviewNo = reviewNo;
		this.reviewShowId = reviewShowId;
		this.reviewWriter = reviewWriter;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewLike = reviewLike;
		this.reviewStar = reviewStar;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewShowId() {
		return reviewShowId;
	}

	public void setReviewShowId(String reviewShowId) {
		this.reviewShowId = reviewShowId;
	}

	public String getReviewWriter() {
		return reviewWriter;
	}

	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public int getReviewLike() {
		return reviewLike;
	}

	public void setReviewLike(int reviewLike) {
		this.reviewLike = reviewLike;
	}

	public int getReviewStar() {
		return reviewStar;
	}

	public void setReviewStar(int reviewStar) {
		this.reviewStar = reviewStar;
	}

	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", reviewShowId=" + reviewShowId + ", reviewWriter=" + reviewWriter
				+ ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent + ", reviewLike=" + reviewLike
				+ ", reviewStar=" + reviewStar + "]";
	}
	
	
}
