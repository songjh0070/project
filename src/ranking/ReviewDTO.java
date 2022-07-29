package ranking;

public class ReviewDTO {
	
	String idx,class1,point,nickname,date_1,contents,img,
	option_goods,as_nick,as_date,as_contents,img2;
	
	int count;
	
	public ReviewDTO(String idx, String class1, String point, String nickname, String date_1, String contents,
			String img, String option_goods, String as_nick, String as_date, String as_contents, String img2) {
		this.idx = idx;
		this.class1 = class1;
		this.point = point;
		this.nickname = nickname;
		this.date_1 = date_1;
		this.contents = contents;
		this.img = img;
		this.option_goods = option_goods;
		this.as_nick = as_nick;
		this.as_date = as_date;
		this.as_contents = as_contents;
		this.img2 = img2;
	}
	
	public ReviewDTO(int count) {
		this.count = count;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getIdx() {
		return idx;
	}
	
	public void setIdx(String idx) {
		this.idx = idx;
	}
	
	public String getClass1() {
		return class1;
	}
	
	public void setClass1(String class1) {
		this.class1 = class1;
	}
	
	public String getPoint() {
		return point;
	}
	
	public void setPoint(String point) {
		this.point = point;
	}
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getDate_1() {
		return date_1;
	}
	
	public void setDate_1(String date_1) {
		this.date_1 = date_1;
	}
	
	public String getContents() {
		return contents;
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public String getImg() {
		return img;
	}
	
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getOption_goods() {
		return option_goods;
	}
	
	public void setOption_goods(String option_goods) {
		this.option_goods = option_goods;
	}
	
	public String getAs_nick() {
		return as_nick;
	}
	
	public void setAs_nick(String as_nick) {
		this.as_nick = as_nick;
	}
	
	public String getAs_date() {
		return as_date;
	}
	
	public void setAs_date(String as_date) {
		this.as_date = as_date;
	}
	
	public String getAs_contents() {
		return as_contents;
	}
	
	public void setAs_contents(String as_contents) {
		this.as_contents = as_contents;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}
	
}
