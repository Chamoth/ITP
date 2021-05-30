package food_management;

public class FoodModel {
	
	private int foodCode;
	private String foodName;
	private String intro;
	private float unitPrice;
	private String category;
	private String size;
	
	
	public FoodModel(int foodCode, String foodName, String intro, float unitPrice, String category, String size) {
		super();
		this.foodCode = foodCode;
		this.foodName = foodName;
		this.intro = intro;
		this.unitPrice = unitPrice;
		this.category = category;
		this.size = size;
	}


	public FoodModel() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getFoodCode() {
		return foodCode;
	}


	public void setFoodCode(int foodCode) {
		this.foodCode = foodCode;
	}


	public String getFoodName() {
		return foodName;
	}


	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}


	public String getIntro() {
		return intro;
	}


	public void setIntro(String intro) {
		this.intro = intro;
	}


	public float getUnitPrice() {
		return unitPrice;
	}


	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getSize() {
		return size;
	}


	public void setSize(String size) {
		this.size = size;
	}


	@Override
	public String toString() {
		return "FoodModel [foodCode=" + foodCode + ", foodName=" + foodName + ", intro=" + intro + ", unitPrice="
				+ unitPrice + ", category=" + category + ", size=" + size + "]";
	}
	
	
	
}
