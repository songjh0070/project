package ranking;

public class Ranking_member_Dto {
	private String id;
	private String password;
	private String name;
	private String nick;
	private String p_number;
	private String email;
	private String birth;
	private String gender;
	private String consent;
	private String accumulative_amount;
	private int m_rating;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getP_number() {
		return p_number;
	}

	public void setP_number(String p_number) {
		this.p_number = p_number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getConsent() {
		return consent;
	}

	public void setConsent(String consent) {
		this.consent = consent;
	}

	public String getAccumulative_amount() {
		return accumulative_amount;
	}

	public void setAccumulative_amount(String accumulative_amount) {
		this.accumulative_amount = accumulative_amount;
	}

	public int getM_rating() {
		return m_rating;
	}

	public void setM_rating(int m_rating) {
		this.m_rating = m_rating;
	}

	public Ranking_member_Dto(String id, String password, String name, String nick, String p_number, String email,
			String birth, String gender, String consent, String accumulative_amount, int m_rating) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.nick = nick;
		this.p_number = p_number;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
		this.consent = consent;
		this.accumulative_amount = accumulative_amount;
		this.m_rating = m_rating;
	}

}
