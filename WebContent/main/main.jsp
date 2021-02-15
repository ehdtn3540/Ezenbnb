<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/main/menu.jsp" />
<article>
	<div class="main_bg"></div>
</article>

<section>
	<div class="category">
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
				<a href="/ebb/houselist.do?catg=${ob.getCname()}">
					<div class="location">
						<img
							src="https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240"
							alt="location1" />
						<div class="location_explan">
							<strong>${ob.getCname()}</strong> <span>CLICK! :D</span>
						</div>
					</div>
				</a>
			</c:forEach>
		</c:if>
	</div>
	<!-- /category -->

	<div class="category">
		<h1>어디에서나, 여행은 살아보는 거야!</h1>
		<div class="lodge">
			<a href="/ebb/houseutillsearch.do?utill=1"> <img
				src="/ebb/img/category_sample1.jpg" alt="lodge1" />
			</a>
			<div class="lodge_explan">
				<strong>집전체</strong>
			</div>
		</div>
		<!-- /lodge -->
		<div class="lodge">
			<a href="/ebb/houseutillsearch.do?utill=2"> <img
				src="/ebb/img/category_sample3.jpg" alt="lodge1" />
			</a>
			<div class="lodge_explan">
				<strong>독특한 공간</strong>
			</div>
		</div>
		<!-- /lodge -->
		<div class="lodge">
			<a href="/ebb/houseutillsearch.do?utill=3"> <img
				src="/ebb/img/category_sample4.jpg" alt="lodge1" />
			</a>
			<div class="lodge_explan">
				<strong>반려동물 동반 가능</strong>
			</div>
		</div>
		<!-- /lodge -->

	</div>
	<!-- /category -->
</section>

<footer>
	<div class="info_group">
		<div class="info_item">
			<a href="#">개인정보 처리방침</a>
		</div>
		<div class="info_item">
			<a href="#">이용약관</a>
		</div>
		<div class="info_item">
			<a href="#">사이트맵</a>
		</div>
		<div class="copyright">© 2021 Ezenbnb, All rights reserved
			Ovenhers</div>
	</div>
	<!-- /.footer_group -->
</footer>
</div>
<!-- end #wrap -->
</body>
</html>
