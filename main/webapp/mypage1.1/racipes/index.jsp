<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Recipe</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String food = request.getParameter("food");
	if (food == null)
		food = "pasta";
	String src = "";
	String title = "";
	String[][] ingredients = {};
	String[] steps = {};

	if (food.equals("pasta")) {
		src = "https://player.vimeo.com/external/446097562.sd.mp4?s=6af0ccf5d4fe2e30dc055508dca1460c9652a81e&profile_id=165&oauth2_token_id=57447761";
		title = "๐ํ์คํ";
		String[][] ing = {
				{ "์คํ๊ฒํฐ", "170g" },
				{ "๋ง๋", "6์ชฝ" },
				{ "ํฐ๋ค๋ฆฌ์์ฐ", "5๋ง๋ฆฌ" },
				{ "ํํผ๋ก ์น๋ธ", "3๊ฐ" },
				{ "์ฌ๋ฆฌ๋ธ์ค์ผ", "5ํฐ์ " },
				{ "์นํจ์คํก(๊ณ ํ)", "1/4์กฐ๊ฐ" },
				{ "์๊ธ", "์ฝ๊ฐ" },
				{ "ํ์ถ", "์ฝ๊ฐ" }
		};
		String[] step = { "๋ง๋์ ํธ์ผ๋ก ์ฐ๊ณ  ํํ๋ก ์น๋ธ์ ์ดํ๋ฆฌํ์ฌ๋ฆฌ๋ ๊ตต๊ฒ ๋ค์ ธ์ฃผ์ธ์. ์์ฐ๋ ๋จธ๋ฆฌ๋ฅผ ๋ผ์ด๋ด๊ณ  ๊ผฌ๋ฆฌ๋ง ๋จ๊ฒจ ๊ป์ง์ ์ ๊ฑฐํด ์ฃผ์ธ์.",
		"๋ฌผ 8์ปต์ ์๊ธ 1ํฐ์ ์ ๋ฃ๊ณ  ์คํ๊ฒํฐ ๋ฉด์ 6๋ถ ์ ๋ ์ถ๊ณ  ๋์ ๊ทธ๋ฆ์ ํผ์น ํ ์ฌ๋ฆฌ๋ธ์ค์ผ์ ๋ฟ๋ ค์ฃผ์ธ์. (๋ฉด ์ถ์ ๋ฌผ โ์ปต์ ๋จ๊ฒจ์ฃผ์ธ์)",
		"ํฌ์ ์ฌ๋ฆฌ๋ธ์ค์ผ์ ๋๋ฅด๊ณ  ๋ง๋ ํธ๊ณผ ํํ๋ก ์น๋ธ๋ฅผ ๋ฃ์ด ์ฝ๊ฐ์ ์๊ธ๊ณผ ํ์ถ๋ก ๋ฐ๊ฐํ์ฌ ๋ณถ์์ฃผ์ธ์. ์์งํ ์์ฐ๋ฅผ ๋ฃ์ด ๋ง๋์ด ๋ธ๋ฆํด์ง ๋๊น์ง ๋ณถ์์ฃผ์ธ์.",
		"์ถ์ ์คํ๊ฒํฐ ๋ฉด์ ๋ฃ๊ณ  ์ฝ๊ฐ์ ์๊ธ๊ณผ ํ์ถ๋ก ๊ฐ์ ํ๊ณ  ๋ฉด๊ณผ ์์ค๊ฐ ๊ฒ๋์ง ์๊ฒ ๋ฉด์, ์นํจ์คํก์ ๋ฃ์ด์ฃผ๋ฉด์ ๋ณถ์์ฃผ์ธ์. ๋ง์ง๋ง์ ์ฝ๊ฐ์ ์ฌ๋ฆฌ๋ธ์ค์ผ๊ณผ ์ดํ๋ฆฌํ์ฌ๋ฆฌ๋ฅผ ๋ฟ๋ฆฌ๊ณ  ๋ถ์ ๊บผ์ฃผ์ธ์.",
		"๊ทธ๋ฆ์ ๋ด์ ๋ง์๊ฒ ์ฆ๊ฒจ์ฃผ์ธ์." };
		ingredients = ing;
		steps = step;
	} else if (food.equals("steak")) {
		src = "https://player.vimeo.com/external/540319023.sd.mp4?s=b150bb85a968d79bc66e5551e29f39f5ad2fdabe&profile_id=165&oauth2_token_id=57447761";
		title = "๐ฅฉ์ฑ๋ ์คํ์ดํฌ";
		String[][] ing = {
                {"์ฑ๋์ด", "300g"},
                {"์ ์ํ", "1/4๊ฐ"},
                {"๋ง๋์ซ", "2๊ฐ"},
                {"๋จํธ๋ฐ", "1/6๊ฐ"},
                {"๋ฐฉ์ธํ ๋งํ ", "2๊ฐ"},
                {"๋ฏธ๋ ์์ก์ด ๋ฒ์ฏ", "10๊ฐ"},
                {"์คํ์ดํฌ ์์ค", "4ํฐ์ "},
                {"์๊ธ", "์ฝ๊ฐ"},
                {"ํ์ถ", "์ฝ๊ฐ"}
        };
		String[] step = { "์ ๊ณ ๊ธฐ๋ ํค์นํ์ฌ์ ์ฌ๋ ค ํ๋ฌผ์ ์ ๊ฑฐํ๊ณ , ์ฌ๋ฆฌ๋ธ์ ์ ์๊ธ, ํ์ถง๊ฐ๋ฃจ๋ฅผ ๋ฟ๋ ค 5๋ถ ์ ๋ ์ฌ์์ฃผ์ธ์.",
		"์ ์ํ๋ ๊ป์ง์ ๋ฒ๊ธด ํ 2์ผ์น ๋๊ป์ ๋ง์ผ๋ก ํผ์ง๋งํ๊ฒ ์ฐ๊ณ , ๋ง๋์ซ์ 6์ผ์น ๊ธธ์ด๋ก ์ฐ์ด์ฃผ์ธ์. ๋จํธ๋ฐ์ ํ ์ํฌ๊ธฐ๋ก ์ฐ์ด์ฃผ์ธ์. ๋ณผ์ ์์ค ์ฌ๋ฃ๋ฅผ ๋ฃ์ด ์์ด์ฃผ์ธ์.",
		"๋ฌ๊ตฐ ํฌ์ ๋ฒํฐ๋ฅผ ๋๋ฅด๊ณ  ๊ณ ๊ธฐ๋ฅผ ๋ฃ์ด ๊ฒ๋ฉด์ ์ตํ๋ค๊ฐ ์์งํ ์ผ์ฑ๋ฅผ ๋ฃ๊ณ  1๋ถ ์ ๋ ๋ณถ์ ํ ์๊ธ, ํ์ถง๊ฐ๋ฃจ๋ก ๊ฐ์ ํด์ฃผ์ธ์.",
		"์ ์์ ์ฑ๋์ด ์คํ์ดํฌ๋ฅผ ๋ด๊ณ  ์์ค๋ฅผ ๊ณ๋ค์ฌ ์์ฑํด์ฃผ์ธ์." };
		ingredients = ing;
		steps = step;
	} else if (food.equals("friedEgg")) {
		src = "https://player.vimeo.com/external/317452989.sd.mp4?s=8246326ee4b4108898f00d868ddfd1fa57d85a77&profile_id=165&oauth2_token_id=57447761";
        title = "๐ณ์จ๋ ์ฌ์ด๋์";
		String[][] ing = {
                {"๋ฌ๊ฑ", "2๊ฐ"},
                {"๋ฒํฐ", "15g"},
                {"์๊ธ", "1๊ฐ"},
                {"ํ์ถ", "1๊ฐ"}
        };
		String[] step = { "ํ๋ผ์ดํฌ์ ์ฝ 120๋๊น์ง ๊ฐ์ดํ ๋ค ๋ฒํฐ๋ฅผ ๋๋ฌ์ฃผ์ธ์.",
                "๋ฌ๊ฑ์ ๊นจ์ ๋ฃ์ ํ ํฐ์์ ์๊น์ด ๋ถํฌ๋ชํด์ง ๋๊น์ง ์กฐ๋ฆฌํด์ฃผ์ธ์.",
                "ํฌํฌ๋ฅผ ์ฌ์ฉํด ๋ธ๋ฅธ์์ ๊ฐ๊น์ด ํฐ์ ๋ถ์๋ฅผ ๋ถ๋๋ฝ๊ฒ ๊ฑด๋๋ฆฐ ํ, ๋ธ๋ฅธ์ ๊ฐ๊น์ด๋ก ๋ชฐ๋ ค ์๋ ํฐ์๋ฅผ ๊ฐ์ฅ์๋ฆฌ๋ก ๋ฐ์ด๋ด์ฃผ์ธ์.",
                "์ ์์ ํ๋ผ์ด๋ฅผ ๋ด๊ณ  ์๊ธ๊ณผ ํ์ถ๋ฅผ ๊ณ๋ค์ฌ ์์ฑํด์ฃผ์ธ์." };
		ingredients = ing;
		steps = step;
	} else if (food.equals("croissant")) {
		src = "https://player.vimeo.com/external/355357902.sd.mp4?s=7f8893a5bd3317484d203b2e6ac1aabd974915aa&profile_id=165&oauth2_token_id=57447761";
		title = "๐ฅํฌ๋ก์์";
		String[][] ing = {
                {"๊ฐ๋ ฅ๋ถ", "250g"},
                {"๋ฒํฐ", "23g"},
                {"์ฐ์ ", "125g"},
                {"์คํ", "25g"},
                {"์ด์คํธ", "5g"},
                {"์๊ธ", "5g"},
                {"๋ฌด์ผ ๋ฒํฐ", "125g"},
                {"๋ฌ๊ฑ", "1๊ฐ"}
        };
		String[] step = { "์ฐ์ ์ ์ด์คํธ, ์คํ, ์๊ธ, ๋ฌ๊ฑ(1/2๊ฐ)์ ์์๋๋ก ์ ์ด์ฃผ๋ฉด์ ๋ฃ๊ณ  ์์ด์ฃผ์ธ์.",
		"๋ฐ๊ฐ๋ฃจ์ ์ด์คํธ, ์คํ,์๊ธ, ๊ณ๋์ ์์ ์ฐ์ ๋ฅผ ๋ฃ๊ณ  ๋ฐ์ฃฝ์ ์์ํด์ฃผ์ธ์.",
		"๋ฐ๊ฐ๋ฃจ๊ฐ ํ๋๋ก ๋ญ์ณ์ง๋ฉด ๋ฒํฐ๋ฅผ ๋ฃ๊ณ  ๋ฐ์ฃฝํด์ฃผ์ธ์.",
		"๋ฐ์ฃฝ์ด ํ๋๊ฐ ๋๋ฉด 24~27๋ ์ ๋๋๋ ๊ณณ(์์จ)์์ 70%์ ๋ ๋ถํ๋๊น์ง 1์ฐจ ๋ฐํจํด์ฃผ์ธ์.",
		"1์ฐจ๋ฐํจ๊ฐ ๋๋๋ฉด ๋ฐ์ฃฝ์ 10๋ฑ๋ถํ์ฌ ๋ฅ๊ธ๊ฒ ๋ง๋ค์ด์ฃผ์ธ์",
		"๋ฐ์ฃฝ 10๊ฐ๋ฅผ ํ์ ๋ฐ๊ฐ๋ฃจ๋ฅผ ๋ฟ๋ฆฌ๊ณ  ๋ฅ๊ธ๊ฒ ๋ฐ์ด์ฃผ์ธ์.",
		"๋ฐ์ด ๋์ ๋ฐ์ฃฝ์ 1๊ฐ ํผ์ณ ๋๊ณ  ์์จ์ ๋์ ๋ง๋ํด์ง ๋ฒํฐ๋ฅผ ๋ฐ์ฃฝ ์ ์ฒด์ ๊ณจ๊ณ ๋ฃจ ๋๋ํ ๋ฐ๋ผ์ฃผ์ธ์.",
		"๋ค๋ฅธ ํ ์ฅ์ ๋ฒํฐ ๋ฐ๋ฅธ ๋ฐ์ฃฝ ์์ ์ฌ๋ ค์ฃผ๊ณ  ์๋ก ์ฌ๋ฆฐ ๋ฐ์ฃฝ ์์ ๋ฒํฐ๋ฅผ ๋ฐ๋ผ์ฃผ๋ ์์์ 9๋ฒ์งธ ๋ฐ์ฃฝ๊น์ง ํด์ฃผ์ธ์.",
		"10๋ฒ์งธ ๋ฐ์ฃฝ์ ๋งจ ์์ ์ฌ๋ ค์ค ํ, ๋ฐฉ๋ง์ด๋ก 2mm ๋๊ป๊ฐ ๋๋๋ก ๋ฅ๊ธ๊ณ  ์๊ฒ ๋ฐ์ด์ฃผ์ธ์.",
		"๋ฐ์ฃฝ์ ๋ฐ์ผ๋ก ์๋ฅธ ํ ๊ทธ์ค ํ์ชฝ ๋ฐ์ฃฝ ์์๋ง ๋ฒํฐ๋ฅผ ๋ฐ๋ฅด๊ณ  ์ ๋ฐ๋ฅธ ์ชฝ์ ๊ฐ์ ๋ชจ์์ผ๋ก ํฌ๊ฐ์ค ํ ๋ฐ๋ฌ ๋ชจ์์ด ์ ์ง๋๊ฒ ๋๋ฌ๊ฐ๋ฉฐ ๋ฐ์ฐฉ๋๊ฒ ์กฐ๊ธ๋ง ๋ฐ์ด์ฃผ์ธ์.",
		"ํผ์ ์กฐ๊ฐ ์๋ฅด๋ฏ 6~8์กฐ๊ฐ์ผ๋ก ์๋ฅธ ํ ์ํธ ๋ถ๋ถ์ ๊ฐ์ด๋ฐ๋ 1cm ์ ๋ ์๋ผ์ฃผ๊ณ  ์๋ผ์ค ๋ถ๋ถ์ ์ด์ง ๋ฒ๋ ค์ ๋ง์ ์ฑํํด ์ฃผ์ธ์.",
		"ํฌ์ ์ข์ด ํฌ์ผ์ ๊น๊ณ  27~30๋์์ 2์ฐจ ๋ฐํจํด ์ฃผ์ธ์.",
		"2์ฐจ ๋ฐํจ๊ฐ ๋๋๋ฉด ๊ณ๋๊ณผ ๋ฌผ์ 1:1๋ก ์์ด ๊ณ๋๋ฌผ์ ๋ง๋ค์ด 2์ฐจ ๋ฐํจ๋ ๋ฐ์ฃฝ ์์ ๋ฐ๋ผ์ฃผ์ธ์.",
		"์ค๋ธ์ 180๋์์ 15~20๋ถ ๊ตฌ์์ ์์ฑํด์ฃผ์ธ์."};
		ingredients = ing;
		steps = step;
	} else if (food.equals("samgyeobsal")) {
		src = "https://player.vimeo.com/external/271611326.sd.mp4?s=3c5d20003a97a14d38832283944cc78da3d60082&profile_id=165&oauth2_token_id=57447761";
		title = "๐ฅ์ ์ฃผ ๊ณ ์ฌ๋ฆฌ ์ผ๊ฒน์ด ๊ตฌ์ด";
		String[][] ing = {
                {"์ ์ฃผ ์ผ๊ฒน์ด", "500g"},
                {"์ ์ฃผ ์๊ณ ์ฌ๋ฆฌ", "180g"},
                {"๊น์น", "100g"},
                {"๊ฐ์", "1๊ฐ"},
                {"์์ก์ด๋ฒ์ฏ", "1๊ฐ"},
                {"๋ง๋", "6ํจ"},
                {"๋ฉ์  ์์ค", "์ ๋น๋"}
        };
		String[] step = { "์ ์ฃผ ์๊ณ ์ฌ๋ฆฌ๋ 4~6cm ๊ธธ์ด๋ก ์๋ผ์ฃผ์ธ์.",
		"๊ฐ์๋ 1cm ๋๊ป๋ก ์ฐ๊ณ  ์์ก์ด๋ฒ์ฏ์ ํธ์ผ๋ก ์๊ฒ ์ฐ์ด์ฃผ์ธ์. ๋ง๋์ ํธ์ผ๋ก ์ฐ๊ณ  ์ํ๋ ๊ตต๊ฒ ๋ค์ ธ์ฃผ์ธ์. ์ฒญ์๊ณ ์ถ๋ ์ก์ก ์ฐ์ด์ฃผ์ธ์.",
		"์งํ๊ฐ ๊ฐ๋ฅํ ์คํ ๊ทธ๋ฆ์ ๋ฉ์  ์์ค๋ฅผ ๋ฃ์ด ์์ด์ฃผ์ธ์.",
		"๋ฌ๊ตฐ ํฌ์ ์ผ๊ฒน์ด๊ณผ ์๊ณ ์ฌ๋ฆฌ, ์์ก์ด๋ฒ์ฏ, ๊ฐ์, ๋ง๋์ ๋ธ๋ฆํ๊ฒ ๊ตฌ์์ฃผ์ธ์. ํฌ์ ๋ฉ์  ์์ค๋ฅผ ๋์ฌ๊ฐ๋ฉฐ  ๋ง์๊ฒ ์ฆ๊ฒจ์ฃผ์ธ์." };
		ingredients = ing;
		steps = step;
	} else if (food.equals("salad")) {
		src = "https://player.vimeo.com/external/371826781.sd.mp4?s=c2799e1a62ef1e4870256df32890c3b49caa0d90&profile_id=165&oauth2_token_id=57447761";
		title = "๐ฅํ ๋งํ  ๋ฐ์ง ํ์คํ  ์๋ฌ๋";
		String[][] ing = {
                {"ํ ๋งํ ", "2๊ฐ"},
                {"์ํ", "1/4๊ฐ"},
                {"๋๋ถ", "1/2๋ชจ"},
                {"๋ฐ์ง์", "10g"},
                {"์ฌ๋ฆฌ๋ธ์ ", "4ํฐ์ "},
                {"์ฃ", "2ํฐ์ "},
                {"ํ๋ฅด๋ฉ์ฐ ์น์ฆ", "2ํฐ์ "},
                {"์๊ธ", "1/4์์์ "},
                {"ํ์ถง๊ฐ๋ฃจ", "์ฝ๊ฐ"}
        };
		String[] step = { "ํ ๋งํ ๋ ๋ํฐํ๊ฒ ์จ์ง ๋ชจ์์ผ๋ก ์ฐ๊ณ , ์ํ๋ ๊ณฑ๊ฒ ๋ค์ ธ์ฃผ์ธ์. ๋๋ถ๋ ํ ๋งํ ์ ๋น์ทํ ํฌ๊ธฐ๋ก ๋ํฐํ๊ฒ ์ฐ์ด์ฃผ์ธ์.",
		"๋ถ๋์ ๋๋ ์ฑ ์ฌ๋ฃ๋ฅผ ๋ฏน์๊ธฐ์ ๋ฃ๊ณ  ๊ณฑ๊ฒ ๊ฐ์์ฃผ์ธ์.",
		"๊ทธ๋ฆ์ ๋๋ถ์ ํ ๋งํ ๋ฅผ ์ฐจ๋ก๋ก ๋ด๊ณ  ์ํ์ ๋๋ ์ฑ์ ๋ฟ๋ ค ๋ด์ ์์ฑ์์ผ์ฃผ์ธ์." };
		ingredients = ing;
		steps = step;
	}
	%>


	<header>
		<h1>Recipe - <%=food%></h1>
	</header>
	<nav>
		<a href="../index.html">Home</a> <a href="../images/index.jsp">Image</a>
	</nav>
	<main>
		<video autoplay loop class="video" id="<%=food%>" muted>
			<source
				src="<%= src %>"
				type="video/mp4">
			๋ธ๋ผ์ฐ์ ์์ ๋น๋์ค ํ์ผ์ ์ง์ํ์ง ์์ต๋๋ค.
			<br>
		</video>
		<section id="cook">
			<h2><%=title%>
				๋ง๋ค๊ธฐ
			</h2>
			<article class="ingredients">
				<h3>โ์ฌ๋ฃ</h3>
				<table>
					<%
					for (String[] str : ingredients) {
						out.print("<tr><td class=\"ingredient\">" + str[0] + "</td><td class=\"quantity\">" + str[1] + "</td></tr>");
					}
					%>
				</table>
			</article>
			<article class="steps">
				<h3>โ์กฐ๋ฆฌ์์</h3>
				<ul>
					<%
					for (String str : steps) {
						out.print("<li>" + str + "</li>");
					}
					%>
				</ul>
			</article>
		</section>
	</main>
	<footer>
        <form action="index.jsp" name="form1">
            <span>Food:</span>
            <select name="food" id="">
                <option value="<%= food %>">-------</option>
                <option value="pasta">pasta</option>
                <option value="steak">steak</option>
                <option value="friedEgg">fried egg</option>
                <option value="croissant">croissant</option>
                <option value="samgyeobsal">samgyeobsal</option>
                <option value="salad">salad</option>
            </select>
            <button>go</button>
        </form>
    </footer>
</body>

</html>