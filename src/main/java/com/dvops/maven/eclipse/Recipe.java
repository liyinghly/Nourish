package com.dvops.maven.eclipse;

public class Recipe 
{
	private static String id;
	private static String name;
	private static String ingredients;
	private static String image;
	private static String wRecipe;
	private static String vRecipe;
	
	public Recipe(String id, String name, String ingredients, String image, String wRecipe, String vRecipe) {
		this.id = id;
		this.name = name;
		this.ingredients = ingredients;
		this.image = image;
		this.wRecipe = wRecipe;
		this.vRecipe = vRecipe;
	}
	
	public static String getId() {
		return id;
	}
	
	public static String getName() {
		return name;
	}
	
	public static String getIngredients() {
		return ingredients;
	}
	
	public static String getImage() {
		return image;
	}
	
	public static String getWRecipe() {
		return wRecipe;
	}
	
	public static String getVRecipe() {
		return vRecipe;
	}
}


