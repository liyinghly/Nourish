package com.dvops.maven.eclipse;

public class Comment {
	
	public Comment(int id, int recipeId, String recipeName, int userId, String username, String review,
			String dateposted) {
		super();
		this.id = id;
		this.recipeId = recipeId;
		this.recipeName = recipeName;
		this.userId = userId;
		this.username = username;
		this.review = review;
		this.dateposted = dateposted;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRecipeId() {
		return recipeId;
	}
	public void setRecipeId(int recipeId) {
		this.recipeId = recipeId;
	}
	public String getRecipeName() {
		return recipeName;
	}
	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getDateposted() {
		return dateposted;
	}
	public void setDateposted(String dateposted) {
		this.dateposted = dateposted;
	}
	
	protected int id;
	protected int recipeId;
	protected String recipeName;
	protected int userId;
	protected String username;
	protected String review;
	protected String dateposted;

}
