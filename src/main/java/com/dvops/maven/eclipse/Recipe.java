package com.dvops.maven.eclipse;

public class Recipe 
{
	
	public Recipe(int id, String name, String ingredients, String image, String wRecipe, String vRecipe) {
		super();
		this.id = id;
		this.name = name;
		this.ingredients = ingredients;
		this.image = image;
		this.wRecipe = wRecipe;
		this.vRecipe = vRecipe;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIngredients() {
		return ingredients;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getwRecipe() {
		return wRecipe;
	}
	public void setwRecipe(String wRecipe) {
		this.wRecipe = wRecipe;
	}
	public String getvRecipe() {
		return vRecipe;
	}
	public void setvRecipe(String vRecipe) {
		this.vRecipe = vRecipe;
	}
	
	protected int id;
	protected String name;
	protected String ingredients;
	protected String image;
	protected String wRecipe;
	protected String vRecipe;
		
}


