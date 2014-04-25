package com.ttt.dto;

import org.apache.commons.lang.StringUtils;

public class GameStateDTO {
	
	private String game;
//	private String startPlayer;
	private String player1;
	private String player2;
	private String startPlayerWins = "";
	private Integer turn = 1;
	
	public String a1 = "";
	private String b1 = "";
	private String c1 = "";
	
	private String a2 = "";
	private String b2 = "";
	private String c2 = "";
	
	private String a3 = "";
	private String b3 = "";
	private String c3 = "";

	public GameStateDTO() {
		startPlayerWins = "";
	}		

	public String getGame() {
		return game;
	}

	public void setGame(String game) {
		this.game = game;
	}
		
	public String getStartPlayerWins() {
		return startPlayerWins;
	}

	public void setStartPlayerWins(String startPlayerWins) {
		this.startPlayerWins = startPlayerWins;
	}

	public String getPlayer1() {
		return player1;
	}

	public void setPlayer1(String player1) {
		this.player1 = player1;
	}

	public String getPlayer2() {
		return player2;
	}

	public void setPlayer2(String player2) {
		this.player2 = player2;
	}

	public Integer getTurn() {
		return turn;
	}

	public void setTurn(Integer turn) {
		this.turn = turn;
	}

	public String getA1() {
		return a1;
	}

	public void setA1(String a1) {
		this.a1 = a1;
	}

	public String getB1() {
		return b1;
	}

	public void setB1(String b1) {
		this.b1 = b1;
	}

	public String getC1() {
		return c1;
	}

	public void setC1(String c1) {
		this.c1 = c1;
	}

	public String getA2() {
		return a2;
	}

	public void setA2(String a2) {
		this.a2 = a2;
	}

	public String getB2() {
		return b2;
	}

	public void setB2(String b2) {
		this.b2 = b2;
	}

	public String getC2() {
		return c2;
	}

	public void setC2(String c2) {
		this.c2 = c2;
	}

	public String getA3() {
		return a3;
	}

	public void setA3(String a3) {
		this.a3 = a3;
	}

	public String getB3() {
		return b3;
	}

	public void setB3(String b3) {
		this.b3 = b3;
	}

	public String getC3() {
		return c3;
	}

	public void setC3(String c3) {
		this.c3 = c3;
	}
	
	public void incrementTurn(){
		turn++;
	}
	
	public void checkForWin(){
		if(StringUtils.isNotBlank(a1) && a1.equalsIgnoreCase(a2) && a2.equalsIgnoreCase(a3)){
			if(a1.equalsIgnoreCase("X"))
				startPlayerWins = "true";
			else
				startPlayerWins = "false";
			return;
		}
		if(StringUtils.isNotBlank(b1) && b1.equalsIgnoreCase(b2) && b2.equalsIgnoreCase(b3)){
			if(b1.equalsIgnoreCase("X"))
				startPlayerWins = "true";
			else
				startPlayerWins = "false";
			return;
		}
		if(StringUtils.isNotBlank(c1) && c1.equalsIgnoreCase(c2) && c2.equalsIgnoreCase(c3)){
			if(c1.equalsIgnoreCase("X"))
				startPlayerWins = "true";
			else
				startPlayerWins = "false";
			return;
		}
		if(StringUtils.isNotBlank(a1) && a1.equalsIgnoreCase(b1) && b1.equalsIgnoreCase(c1)){
			if(a1.equalsIgnoreCase("X"))
				startPlayerWins = "true";
			else
				startPlayerWins = "false";
			return;
		}
		if(StringUtils.isNotBlank(a2) && a2.equalsIgnoreCase(b2) && b2.equalsIgnoreCase(c2)){
			if(a2.equalsIgnoreCase("X"))
				startPlayerWins = "true";
			else
				startPlayerWins = "false";
			return;
		}
		if(StringUtils.isNotBlank(a3) && a3.equalsIgnoreCase(b3) && b3.equalsIgnoreCase(c3)){
			if(a3.equalsIgnoreCase("X"))
				startPlayerWins = "true";
			else
				startPlayerWins = "false";
			return;
		}
		if(StringUtils.isNotBlank(a1) && a1.equalsIgnoreCase(b2) && b2.equalsIgnoreCase(c3)){
			if(a1.equalsIgnoreCase("X"))
				startPlayerWins = "true";
			else
				startPlayerWins = "false";
			return;
		}
		if(StringUtils.isNotBlank(a3) && a3.equalsIgnoreCase(b2) && b2.equalsIgnoreCase(c1)){
			if(a3.equalsIgnoreCase("X"))
				startPlayerWins = "true";
			else
				startPlayerWins = "false";
			return;
		}
	}
		
}
