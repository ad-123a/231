<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--  ★리뷰 작성하는 페이지★ -->
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
#review2_wrap {
	width: 1000px;
	height: 900px;
	margin: auto;
}

#review2_wrap2, h3 {
	text-align: center;
}
</style>
</head>
<body>
<body>

	<div id="review2_wrap">
		<br> <br>
		<h3>리뷰 작성하기</h3>
		<br>
		<!-- <table class="table table-dark table-striped"> -->
		<table class="table table-hover">
			<tr>
				<th>제목</th>
				<td><textarea cols="30" rows="1" style="resize: none"
						placeholder="제목을 입력해주세요"></textarea></td>
			</tr>
			<tr>
			<th>평점</th>
			<td><input type="checkbox" name="score" value="star1"
					id="star1" onclick="oneCheckbox(this)"> <label for="star1">★</label> &nbsp;
					<input type="checkbox" name="score" value="star2" id="star2" onclick="oneCheckbox(this)"> <label
					for="star2">★★</label> &nbsp;<input type="checkbox" name="score"
					value="star3" id="star3"> <label for="star3" onclick="oneCheckbox(this)">★★★</label> &nbsp;<input
					type="checkbox" name="score" value="star4" id="star4" onclick="oneCheckbox(this)"> <label
					for="star4">★★★★</label>&nbsp; <input type="checkbox" name="score"
					value="star5" id="star5" onclick="oneCheckbox(this)"> <label for="star5">★★★★★</label>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea  cols="60" rows="8"
						style="resize: none" placeholder="내용을 입력해주세요"></textarea></td>
			</tr>
			<tr>
				<th>파일첨부</th>
				<td><input type="file"> <input
					type="button" value="추가" onclick="addFile()"> <input
					type="button" value="삭제" onclick="delFile()"></td>
			<tr>
		</table>
		<hr>


		<script>
			function addFile() {
				$("input:last").after("<br><input type=file>");
			}
			function delFile() {
				$("input:file:last").remove();
				$("br:last").remove();
			}
		</script>

		<div id="review2_wrap2">
			<button type="button" class="btn btn-outline-secondary">WRITE</button>
			<button type="button" class="btn btn-outline-secondary">CANCEL</button>
		</div>
		
		<script type="text/javascript">

    function oneCheckbox(a){

        var obj = document.getElementsByName("score");

        for(var i=0; i<obj.length; i++){

            if(obj[i] != a){

                obj[i].checked = false;

            }

        }

    }

</script>

</body>
</html>