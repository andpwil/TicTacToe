<%@page
	import="com.ttt.dto.GameStateDTO, org.apache.commons.lang.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>






<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TicTacToe</title>





</head>
<body>

	<%
		String winMsg = "";
		String errMsg = "";
		String game = "";//request.getParameter("game");
		String name = "";//request.getParameter("playerName");
		//GameStateDTO gameState = new GameStateDTO(); //(GameStateDTO) request.getSession().getAttribute(game);

//		if (null == gameState)
//			gameState = new GameStateDTO();

		if (request.getParameter("refreshButton") != null) {
			
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			

			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			}else{
												
				GameStateDTO gameState = (GameStateDTO) request.getSession().getAttribute(game);
				
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}	
				display(gameState, request);
			}
			

		} else if (request.getParameter("a1Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}				
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setA1("X");
					request.setAttribute("a1", "X");
				} else {
					gameState.setA1("O");
					request.setAttribute("a1", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		} else if (request.getParameter("a2Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}		
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setA2("X");
					request.setAttribute("a2", "X");
				} else {
					gameState.setA2("O");
					request.setAttribute("a2", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		} else if (request.getParameter("a3Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}		
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setA3("X");
					request.setAttribute("a3", "X");
				} else {
					gameState.setA3("O");
					request.setAttribute("a3", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		} else if (request.getParameter("b1Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}		
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setB1("X");
					request.setAttribute("b1", "X");
				} else {
					gameState.setB1("O");
					request.setAttribute("b1", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		} else if (request.getParameter("b2Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}		
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setB2("X");
					request.setAttribute("b2", "X");
				} else {
					gameState.setB2("O");
					request.setAttribute("b2", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		} else if (request.getParameter("b3Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}		
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setB3("X");
					request.setAttribute("b3", "X");
				} else {
					gameState.setB3("O");
					request.setAttribute("b3", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		} else if (request.getParameter("c1Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}		
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setC1("X");
					request.setAttribute("c1", "X");
				} else {
					gameState.setC1("O");
					request.setAttribute("c1", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		} else if (request.getParameter("c2Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}		
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setC2("X");
					request.setAttribute("c2", "X");
				} else {
					gameState.setC2("O");
					request.setAttribute("c2", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		} else if (request.getParameter("c3Click") != null) {
			game = request.getParameter("gameBoard");
			name = request.getParameter("playerName");
			if (StringUtils.isBlank(name) || StringUtils.isBlank(game)) {
				errMsg = "Enter name of player and game";
			} else {
				GameStateDTO gameState = (GameStateDTO) request.getSession()
						.getAttribute(game);
				if (null == gameState) {
					gameState = new GameStateDTO();
					gameState.setPlayer1(name);
					gameState.setGame(game);
				}else if(StringUtils.isBlank(gameState.getPlayer2())){
					gameState.setPlayer2(name);
				}		
				if ((gameState.getTurn() % 2) != 0) {
					gameState.setC3("X");
					request.setAttribute("c3", "X");
				} else {
					gameState.setC3("O");
					request.setAttribute("c3", "O");
				}
				gameState.incrementTurn();
				request.getSession().setAttribute(game, gameState);
				display(gameState, request);
			}
		}
	%>


	<%!
	void display(GameStateDTO gameState, HttpServletRequest request) {
		request.setAttribute("a1", gameState.getA1());
		request.setAttribute("b1", gameState.getB1());
		request.setAttribute("c1", gameState.getC1());

		request.setAttribute("a2", gameState.getA2());
		request.setAttribute("b2", gameState.getB2());
		request.setAttribute("c2", gameState.getC2());

		request.setAttribute("a3", gameState.getA3());
		request.setAttribute("b3", gameState.getB3());
		request.setAttribute("c3", gameState.getC3());

		String displayName = request.getParameter("playerName");
		System.err.println("DISPLAYNAME: " + displayName);
		
		if(displayName.equalsIgnoreCase(gameState.getPlayer1())){
			request.setAttribute("playerName", gameState.getPlayer1());
		}else if(displayName.equalsIgnoreCase(gameState.getPlayer2())){
			request.setAttribute("playerName", gameState.getPlayer2());
		}
		request.setAttribute("gameBoard", gameState.getGame());
		
		checkForWin(gameState, request);

	}%>

	<%!
	void checkForWin(GameStateDTO gameState, HttpServletRequest request) {
		gameState.checkForWin();
		if(StringUtils.isNotBlank(gameState.getStartPlayerWins())){
			String winMsg = "";
			String winName = request.getParameter("playerName");
			if(gameState.getStartPlayerWins().equals("true")){				
				if(winName.equalsIgnoreCase(gameState.getPlayer1()))
					winMsg = "You Win!";
				else
					winMsg = "You lose!";
			}else{
				if(winName.equalsIgnoreCase(gameState.getPlayer1()))
					winMsg = "You Lose!";
				else
					winMsg = "You Win!";
			}
			request.setAttribute("winMsg", winMsg);
		}
		

	}%>

	<form action="board.jsp" method="post">
		<h2>Hello Tic-Tac-Toe</h2>
		<div id="details">
			<table>
				<tr>
					<td><label>Name: </label><input type="text" name="playerName"
						value="${playerName}" /></td>
				</tr>
				<tr>
					<td><label>Game: </label><input type="text" name="gameBoard"
						value="${gameBoard}" /></td>
				</tr>
				<tr>
					<td><input value="Refresh" id="refresh" name="refreshButton"
						type="submit" /></td>
				</tr>
			</table>
		</div>
		<div id="board" style="padding-top: 50px">
			<table>
				<tr>
					<td><input id="a1" value="${a1}" name="a1Click" type="submit" /></td>
					<td><input id="b1" value="${b1}" name="b1Click" type="submit" /></td>
					<td><input id="c1" value="${c1}" name="c1Click" type="submit" /></td>
				</tr>
				<tr>
					<td><input id="a2" value="${a2}" name="a2Click" type="submit" /></td>
					<td><input id="b2" value="${b2}" name="b2Click" type="submit" /></td>
					<td><input id="c2" value="${c2}" name="c2Click" type="submit" /></td>
				</tr>
				<tr>
					<td><input id="a3" value="${a3}" name="a3Click" type="submit" /></td>
					<td><input id="b3" value="${b3}" name="b3Click" type="submit" /></td>
					<td><input id="c3" value="${c3}" name="c3Click" type="submit" /></td>
				</tr>
				<tr>
					<td><input type="hidden" id="alreadyPlayed" /></td>
				</tr>
			</table>
		</div>
		<div id="winner" style="padding-top: 50px">
			<input type="text" name="winMsg" value="${winMsg}" readonly="true"/>
			<%
				if (StringUtils.isNotBlank(errMsg)) {
			%>
			<div class="alert alert-danger"><%=errMsg%></div>
			<%
				}
			%>
		</div>

	</form>
</body>
</html>