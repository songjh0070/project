package ranking;

public class PackDTO {
	
	String image, name;
	int rating_point;
	int review_count;
	int sell_price;
	int idx;
	int discount;

	public PackDTO(int idx, String name, String image, int rating_point ,int review_count, int sell_price) {
		this.idx = idx;
		this.image=image;
		this.name=name;
		this.rating_point=rating_point;
		this.review_count=review_count;
		this.sell_price=sell_price;
	}
	
	

	public PackDTO(String image, String name, int rating_point, int review_count, int sell_price, int idx,
			int discount) {
		this.image = image;
		this.name = name;
		this.rating_point = rating_point;
		this.review_count = review_count;
		this.sell_price = sell_price;
		this.idx = idx;
		this.discount = discount;
	}
	
	


	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public int getDiscount() {
		return discount;
	}
	
	public void setDiscount(int discount) {
		this.discount = discount;
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

	public int getSell_price() {
		return sell_price;
	}

	public void setSell_price(int sell_price) {
		this.sell_price = sell_price;
	}
	
	
	
}
