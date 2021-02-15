/**
 * 
 */
$(function(){
	// 드롭다운 숨기
	$(".member .dropdown-menu").hide();
	//회원정보 클릭시
	$(".member").click(function(){
		// 드롭다운 토글 
		$(".member .dropdown-menu").toggle();
	});
});