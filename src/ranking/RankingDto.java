package ranking;

public class RankingDto {
	private int idx;
	private String image;
	private int review;
	private String name;
	private int discount;
	private int sell_price;
	private int normal_price;
	private String each;
	private int sales;
	private String delivery;
	private String benefit;
	private String components;
	private String notice;
	private String option;
	private String plus;
	private String detail_image;
	private int price_per_100;
	private int calories;
	private int protein;
	private int sodium;
	private int carbohydrate;
	private int fat;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getReview() {
		return review;
	}

	public void setReview(int review) {
		this.review = review;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public int getNormal_price() {
		return normal_price;
	}

	public void setNormal_price(int normal_price) {
		this.normal_price = normal_price;
	}

	public String getEach() {
		return each;
	}

	public void setEach(String each) {
		this.each = each;
	}

	public int getSales() {
		return sales;
	}

	public void setSales(int sales) {
		this.sales = sales;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public String getBenefit() {
		return benefit;
	}

	public void setBenefit(String benefit) {
		this.benefit = benefit;
	}

	public String getComponents() {
		return components;
	}

	public void setComponents(String components) {
		this.components = components;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public String getPlus() {
		return plus;
	}

	public void setPlus(String plus) {
		this.plus = plus;
	}

	public String getDetail_image() {
		return detail_image;
	}

	public void setDetail_image(String detail_image) {
		this.detail_image = detail_image;
	}

	public int getPrice_per_100() {
		return price_per_100;
	}

	public void setPrice_per_100(int price_per_100) {
		this.price_per_100 = price_per_100;
	}

	public int getCalories() {
		return calories;
	}

	public void setCalories(int calories) {
		this.calories = calories;
	}

	public int getProtein() {
		return protein;
	}

	public void setProtein(int protein) {
		this.protein = protein;
	}

	public int getSodium() {
		return sodium;
	}

	public void setSodium(int sodium) {
		this.sodium = sodium;
	}

	public int getCarbohydrate() {
		return carbohydrate;
	}

	public void setCarbohydrate(int carbohydrate) {
		this.carbohydrate = carbohydrate;
	}

	public int getFat() {
		return fat;
	}

	public void setFat(int fat) {
		this.fat = fat;
	}

	public RankingDto(String image, int review, String name, int sales, int sell_price, String delivery) {
		this.image = image;
		this.review = review;
		this.name = name;
		this.sales = sales;
		this.sell_price = sell_price;
		this.delivery = delivery;
	}

	public RankingDto(int idx, String image, int review, String name, int discount, int sell_price, int normal_price,
			String each, int sales, String delivery, String benefit, String components, String notice, String option,
			String plus, String detail_image, int price_per_100, int calories, int protein, int sodium,
			int carbohydrate, int fat) {
		this.idx = idx;
		this.image = image;
		this.review = review;
		this.name = name;
		this.discount = discount;
		this.sell_price = sell_price;
		this.normal_price = normal_price;
		this.each = each;
		this.sales = sales;
		this.delivery = delivery;
		this.benefit = benefit;
		this.components = components;
		this.notice = notice;
		this.option = option;
		this.plus = plus;
		this.detail_image = detail_image;
		this.price_per_100 = price_per_100;
		this.calories = calories;
		this.protein = protein;
		this.sodium = sodium;
		this.carbohydrate = carbohydrate;
		this.fat = fat;
	}

}
