/* Oracle XE DataBase에서 Table생성 */

Create table guestlab(
	idx varchar2(200) primary Key,
	ename varchar2(200),
	phone varchar2(200),
	gender varchar2(200),
	addr varchar2(200)
	);
	
/* 1. WEB-INF\lib 라이브러리 넣어야함
   2. Oracle DB 연결 설정
   3. 폼페이지 생성 guestlab_write.html
   4. form에서 action 을 처리하는 페이지 생성 guestlab_save.jsp
   		폼에서 넣는 값을 받아서 DB에 저장하는 페이지
 */