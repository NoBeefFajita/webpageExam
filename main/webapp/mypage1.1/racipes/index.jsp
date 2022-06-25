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
		title = "🍝파스타";
		String[][] ing = {
				{ "스파게티", "170g" },
				{ "마늘", "6쪽" },
				{ "흰다리새우", "5마리" },
				{ "페퍼론치노", "3개" },
				{ "올리브오일", "5큰술" },
				{ "치킨스톡(고형)", "1/4조각" },
				{ "소금", "약간" },
				{ "후추", "약간" }
		};
		String[] step = { "마늘은 편으로 썰고 페페론치노와 이태리파슬리는 굵게 다져주세요. 새우는 머리를 떼어내고 꼬리만 남겨 껍질을 제거해 주세요.",
		"물 8컵에 소금 1큰술을 넣고 스파게티 면을 6분 정도 삶고 넓은 그릇에 펼친 후 올리브오일을 뿌려주세요. (면 삶은 물 ⅓컵은 남겨주세요)",
		"팬에 올리브오일을 두르고 마늘 편과 페페론치노를 넣어 약간의 소금과 후추로 밑간하여 볶아주세요. 손질한 새우를 넣어 마늘이 노릇해질 때까지 볶아주세요.",
		"삶은 스파게티 면을 넣고 약간의 소금과 후추로 간을 하고 면과 소스가 겉돌지 않게 면수, 치킨스톡을 넣어주면서 볶아주세요. 마지막에 약간의 올리브오일과 이태리파슬리를 뿌리고 불을 꺼주세요.",
		"그릇에 담아 맛있게 즐겨주세요." };
		ingredients = ing;
		steps = step;
	} else if (food.equals("steak")) {
		src = "https://player.vimeo.com/external/540319023.sd.mp4?s=b150bb85a968d79bc66e5551e29f39f5ad2fdabe&profile_id=165&oauth2_token_id=57447761";
		title = "🥩채끝 스테이크";
		String[][] ing = {
                {"채끝살", "300g"},
                {"적양파", "1/4개"},
                {"마늘쫑", "2개"},
                {"단호박", "1/6개"},
                {"방울토마토", "2개"},
                {"미니 새송이 버섯", "10개"},
                {"스테이크 소스", "4큰술"},
                {"소금", "약간"},
                {"후추", "약간"}
        };
		String[] step = { "쇠고기는 키친타올에 올려 핏물을 제거하고, 올리브유와 소금, 후춧가루를 뿌려 5분 정도 재워주세요.",
		"적양파는 껍질을 벗긴 후 2센치 두께의 링으로 큼지막하게 썰고, 마늘쫑은 6센치 길이로 썰어주세요. 단호박은 한 입크기로 썰어주세요. 볼에 소스 재료를 넣어 섞어주세요.",
		"달군 팬에 버터를 두르고 고기를 넣어 겉면을 익히다가 손질한 야채를 넣고 1분 정도 볶은 후 소금, 후춧가루로 간을 해주세요.",
		"접시에 채끝살 스테이크를 담고 소스를 곁들여 완성해주세요." };
		ingredients = ing;
		steps = step;
	} else if (food.equals("friedEgg")) {
		src = "https://player.vimeo.com/external/317452989.sd.mp4?s=8246326ee4b4108898f00d868ddfd1fa57d85a77&profile_id=165&oauth2_token_id=57447761";
        title = "🍳써니 사이드업";
		String[][] ing = {
                {"달걀", "2개"},
                {"버터", "15g"},
                {"소금", "1개"},
                {"후추", "1개"}
        };
		String[] step = { "프라이팬을 약 120도까지 가열한 뒤 버터를 둘러주세요.",
                "달걀을 깨서 넣은 후 흰자의 색깔이 불투명해질 때까지 조리해주세요.",
                "포크를 사용해 노른자와 가까운 흰자 부위를 부드럽게 건드린 후, 노른자 가까이로 몰려 있는 흰자를 가장자리로 밀어내주세요.",
                "접시에 후라이를 담고 소금과 후추를 곁들여 완성해주세요." };
		ingredients = ing;
		steps = step;
	} else if (food.equals("croissant")) {
		src = "https://player.vimeo.com/external/355357902.sd.mp4?s=7f8893a5bd3317484d203b2e6ac1aabd974915aa&profile_id=165&oauth2_token_id=57447761";
		title = "🥐크로와상";
		String[][] ing = {
                {"강력분", "250g"},
                {"버터", "23g"},
                {"우유", "125g"},
                {"설탕", "25g"},
                {"이스트", "5g"},
                {"소금", "5g"},
                {"무염 버터", "125g"},
                {"달걀", "1개"}
        };
		String[] step = { "우유에 이스트, 설탕, 소금, 달걀(1/2개)을 순서대로 저어주면서 넣고 섞어주세요.",
		"밀가루에 이스트, 설탕,소금, 계란을 섞은 우유를 넣고 반죽을 시작해주세요.",
		"밀가루가 하나로 뭉쳐지면 버터를 넣고 반죽해주세요.",
		"반죽이 하나가 되면 24~27도 정도되는 곳(상온)에서 70%정도 부풀때까지 1차 발효해주세요.",
		"1차발효가 끝나면 반죽을 10등분하여 둥글게 만들어주세요",
		"반죽 10개를 판에 밀가루를 뿌리고 둥글게 밀어주세요.",
		"밀어 놓은 반죽을 1개 펼쳐 놓고 상온에 놓아 말랑해진 버터를 반죽 전체에 골고루 넉넉히 발라주세요.",
		"다른 한 장을 버터 바른 반죽 위에 올려주고 새로 올린 반죽 위에 버터를 발라주는 작업을 9번째 반죽까지 해주세요.",
		"10번째 반죽을 맨 위에 올려준 후, 방망이로 2mm 두께가 되도록 둥글고 얇게 밀어주세요.",
		"반죽을 반으로 자른 후 그중 한쪽 반죽 위에만 버터를 바르고 안 바른 쪽을 같은 모양으로 포개준 후 반달 모양이 유지되게 눌러가며 밀착되게 조금만 밀어주세요.",
		"피자 조각 자르듯 6~8조각으로 자른 후 원호 부분의 가운데는 1cm 정도 잘라주고 잘라준 부분을 살짝 벌려서 말아 성형해 주세요.",
		"팬에 종이 포일을 깔고 27~30도에서 2차 발효해 주세요.",
		"2차 발효가 끝나면 계란과 물을 1:1로 섞어 계란물을 만들어 2차 발효된 반죽 위에 발라주세요.",
		"오븐에 180도에서 15~20분 구워서 완성해주세요."};
		ingredients = ing;
		steps = step;
	} else if (food.equals("samgyeobsal")) {
		src = "https://player.vimeo.com/external/271611326.sd.mp4?s=3c5d20003a97a14d38832283944cc78da3d60082&profile_id=165&oauth2_token_id=57447761";
		title = "🥓제주 고사리 삼겹살 구이";
		String[][] ing = {
                {"제주 삼겹살", "500g"},
                {"제주 생고사리", "180g"},
                {"김치", "100g"},
                {"감자", "1개"},
                {"새송이버섯", "1개"},
                {"마늘", "6톨"},
                {"멜젓 소스", "적당량"}
        };
		String[] step = { "제주 생고사리는 4~6cm 길이로 잘라주세요.",
		"감자는 1cm 두께로 썰고 새송이버섯은 편으로 얇게 썰어주세요. 마늘은 편으로 썰고 양파는 굵게 다져주세요. 청양고추는 송송 썰어주세요.",
		"직화가 가능한 스텐 그릇에 멜젓 소스를 넣어 섞어주세요.",
		"달군 팬에 삼겹살과 생고사리, 새송이버섯, 감자, 마늘을 노릇하게 구워주세요. 팬에 멜젓 소스를 끓여가며  맛있게 즐겨주세요." };
		ingredients = ing;
		steps = step;
	} else if (food.equals("salad")) {
		src = "https://player.vimeo.com/external/371826781.sd.mp4?s=c2799e1a62ef1e4870256df32890c3b49caa0d90&profile_id=165&oauth2_token_id=57447761";
		title = "🥗토마토 바질 페스토 샐러드";
		String[][] ing = {
                {"토마토", "2개"},
                {"양파", "1/4개"},
                {"두부", "1/2모"},
                {"바질잎", "10g"},
                {"올리브유", "4큰술"},
                {"잣", "2큰술"},
                {"파르메산 치즈", "2큰술"},
                {"소금", "1/4작은술"},
                {"후춧가루", "약간"}
        };
		String[] step = { "토마토는 도톰하게 웨지 모양으로 썰고, 양파는 곱게 다져주세요. 두부도 토마토와 비슷한 크기로 도톰하게 썰어주세요.",
		"분량의 드레싱 재료를 믹서기에 넣고 곱게 갈아주세요.",
		"그릇에 두부와 토마토를 차례로 담고 양파와 드레싱을 뿌려 내서 완성시켜주세요." };
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
			브라우저에서 비디오 파일을 지원하지 않습니다.
			<br>
		</video>
		<section id="cook">
			<h2><%=title%>
				만들기
			</h2>
			<article class="ingredients">
				<h3>⁕재료</h3>
				<table>
					<%
					for (String[] str : ingredients) {
						out.print("<tr><td class=\"ingredient\">" + str[0] + "</td><td class=\"quantity\">" + str[1] + "</td></tr>");
					}
					%>
				</table>
			</article>
			<article class="steps">
				<h3>⁕조리순서</h3>
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