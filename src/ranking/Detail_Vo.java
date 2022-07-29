package ranking;

public class Detail_Vo {
	
	int idx,discount,sell_price,normal_price,sales,price_per_100,calories,protein,sodium,carbohydrate,fat;
	double review;
	String image,name,each,delivery,benefit,components,notice,options,plus,detail_image;
	public Detail_Vo(int idx, double review, int discount, int sell_price, int normal_price, int sales, int price_per_100,
			int calories, int protein, int sodium, int carbohydrate, int fat, String image, String name, String each,
			String delivery, String benefit, String components, String notice, String options, String plus,
			String detail_image) {
		
		this.idx = idx;
		this.review = review;
		this.discount = discount;
		this.sell_price = sell_price;
		this.normal_price = normal_price;
		this.sales = sales;
		this.price_per_100 = price_per_100;
		this.calories = calories;
		this.protein = protein;
		this.sodium = sodium;
		this.carbohydrate = carbohydrate;
		this.fat = fat;
		this.image = image;
		this.name = name;
		this.each = each;
		this.delivery = delivery;
		this.benefit = benefit;
		this.components = components;
		this.notice = notice;
		this.options = options;
		this.plus = plus;
		this.detail_image = detail_image;
	}
	
	public Detail_Vo(int idx) {
		this.idx = idx;
	}

	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public double getReview() {
		return review;
	}
	public void setReview(double review) {
		this.review = review;
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
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
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
	public String getEach() {
		return each;
	}
	public void setEach(String each) {
		this.each = each;
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
	public String getOptions() {
		return options;
	}
	public void setOptions(String options) {
		this.options = options;
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
	
	
	
}
