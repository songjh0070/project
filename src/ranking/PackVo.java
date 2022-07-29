package ranking;

public class PackVo {
	private int idx, rating_point, review_count, discount, sell_price;
	private String image, name;
	
	public PackVo(int idx, int rating_point, int review_count, int discount, int sell_price, String image,
			String name) {
		this.idx = idx;
		this.rating_point = rating_point;
		this.review_count = review_count;
		this.discount = discount;
		this.sell_price = sell_price;
		this.image = image;
		this.name = name;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getRating_point() {
		return rating_point;
	}
	public void setRating_point(int rating_point) {
		this.rating_point = rating_point;
	}
	public int getReview_count() {
		return review_count;
	}
	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getSell_price() {
		return sell_price;
	}
	public void setSell_price(int sell_price) {
		this.sell_price = sell_price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
