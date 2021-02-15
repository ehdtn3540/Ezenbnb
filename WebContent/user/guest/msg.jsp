<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="guestmenu.jsp" />
<%
request.setCharacterEncoding("UTF-8");
String chatidx = request.getParameter("chatidx");
System.out.println("chatidx :" + chatidx);
%>
<div class="wrap_msg">
	<div class="wrap_msg1">
		<div>
			<h3>메세지창</h3>
		</div>
		<ul class="nav nav-pills nav-stacked">
			<li role="presentation"><a
				href="/ebb/chatroomlist.do?userid=${logOK.getUserid()}">전체메세지</a></li>
		</ul>
	</div>
	<div class="wrap_msg2">
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
				<c:if test="${ob.getUserid() != logOK.getUserid()}">
					<div id="msg_received">
						<div class="media">
							<div class="media-body">
								<div class="media-left">
									<a href="#"> <span><svg
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
												width="24" height="24">
							<path
													d="M0 13C0 6.373 5.373 1 12 1s12 5.373 12 12v8.657a.75.75 0 01-1.5 0V13c0-5.799-4.701-10.5-10.5-10.5S1.5 7.201 1.5 13v8.657a.75.75 0 01-1.5 0V13z"></path>
							<path
													d="M8 19.75a.75.75 0 01.75-.75h6.5a.75.75 0 010 1.5h-6.5a.75.75 0 01-.75-.75z"></path>
							<path fill-rule="evenodd"
													d="M5.25 9.5a1.75 1.75 0 00-1.75 1.75v3.5c0 .966.784 1.75 1.75 1.75h13.5a1.75 1.75 0 001.75-1.75v-3.5a1.75 1.75 0 00-1.75-1.75H5.25zm.22 1.47a.75.75 0 011.06 0L9 13.44l2.47-2.47a.75.75 0 011.06 0L15 13.44l2.47-2.47a.75.75 0 111.06 1.06l-3 3a.75.75 0 01-1.06 0L12 12.56l-2.47 2.47a.75.75 0 01-1.06 0l-3-3a.75.75 0 010-1.06z"></path></svg></span>
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">Sender userID :
										${ob.getUserid()}</h4>
									<div class="panel panel-footer">
										<div class="panel-body">
											${ob.getMcontent()}
											<div>
												<strong>${ob.getMtime()}</strong>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${ob.getUserid() == logOK.getUserid()}">
					<div id="msg_outgoing">
						<div class="media">
							<div class="media-body">
								<div class="media-body" id="outgoing_body">
									<h4 class="media-heading">Receiver userID :
										${ob.getUserid()}</h4>
									<div class="panel panel-success">
										<div class="panel-body">
											${ob.getMcontent()}
											<div>
												<strong>${ob.getMtime()}</strong>
											</div>
										</div>
									</div>
								</div>
								<div class="media-right">
									<a href="#"> <span><svg
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
												width="24" height="24">
								<path
													d="M7.75 11c-.69 0-1.25.56-1.25 1.25v1.5a1.25 1.25 0 102.5 0v-1.5C9 11.56 8.44 11 7.75 11zm1.27 4.5a.469.469 0 01.48-.5h5a.47.47 0 01.48.5c-.116 1.316-.759 2.5-2.98 2.5s-2.864-1.184-2.98-2.5zm7.23-4.5c-.69 0-1.25.56-1.25 1.25v1.5a1.25 1.25 0 102.5 0v-1.5c0-.69-.56-1.25-1.25-1.25z"></path>
								<path fill-rule="evenodd"
													d="M21.255 3.82a1.725 1.725 0 00-2.141-1.195c-.557.16-1.406.44-2.264.866-.78.386-1.647.93-2.293 1.677A18.442 18.442 0 0012 5c-.93 0-1.784.059-2.569.17-.645-.74-1.505-1.28-2.28-1.664a13.876 13.876 0 00-2.265-.866 1.725 1.725 0 00-2.141 1.196 23.645 23.645 0 00-.69 3.292c-.125.97-.191 2.07-.066 3.112C1.254 11.882 1 13.734 1 15.527 1 19.915 3.13 23 12 23c8.87 0 11-3.053 11-7.473 0-1.794-.255-3.647-.99-5.29.127-1.046.06-2.15-.066-3.125a23.652 23.652 0 00-.689-3.292zM20.5 14c.5 3.5-1.5 6.5-8.5 6.5s-9-3-8.5-6.5c.583-4 3-6 8.5-6s7.928 2 8.5 6z"></path></svg></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</c:if>
		<div id="msg_input">
			<form action="/ebb/messageInsert.do" method="POST">
				<div class="row">
					<!-- /.col-lg-11(사이즈++) -->
					<div class="col-lg-12">
						<div class="input-group">
							<input name="chatidx" type="hidden" value="<%=chatidx%>">
							<input name="userid" type="hidden" value="${logOK.getUserid()}">
							<input name="mcontent" type="text" class="form-control"
								placeholder="메세지 작성하기" id="inputpart"> <span
								class="input-group-btn" aria-describedby="sizing-addon2">
								<button class="btn btn-default" type="submit">보내기</button>
							</span>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>