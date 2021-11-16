<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style>
		label {
			display: block;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		
	    $(document).ready(function(){
	    	fnSelectMemberList();
	    });
	    
	</script>
	
</head>
</head>
<body>
 
   <div>
        <h1>회원 목록</h1>
        <a href="/ServerProgram/login.do">로그인하러가기</a>
        
        <hr>
       
    <tabel border="1">
     <thead>
           <tr>
              <td>회원번호</td>
              <td>아이디</td>
              <td>이름</td>
              <td>등급</td>
              <td>포인트</td>
           </tr>
     </thead>
	      <tbody>
          <tr>
              <td>${memder.mno}</td>
              <td>${memder.id}</td>
              <td>${memder.name}</td>
              <td>${memder.grade}</td>
	       	  <td>${memder.point}</td>
	       </tr>
	      </tbody>	
     </table>
   </div>
   
</body>
</html>