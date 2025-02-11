<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators bg-danger">
  	<c:forEach items="${goodsList }" varStatus="vs">
  		<c:if test="${vs.index % 3 == 0 }">
		    <li data-target="#demo" data-slide-to="${vs.index / 3 }"
		     class="${(vs.index == 0)?'active':'' }"></li>
	    </c:if>
  	</c:forEach>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
    	<div class="row bg-light pl-5 py-4">
		  	<c:forEach items="${goodsList }" varStatus="vs" var="vo">
		  		<c:if test="${vs.index != 0 && vs.index % 3 == 0 }">
		  			${"</div></div>" }
		  			${"<div class=\"carousel-item\">"}
		  			${"<div class=\"row bg-light pl-5 py-4\">"}
		      	</c:if>
		      	<div class="col-md-4 dataRow goodsDataRow" style="margin-left: -13px; margin-right: -13px;"
		      	 data-no="${vo.goods_no }" data-module="goods">
	      			<div class="card d-flex flex-column" style="width:100%">
		      			<img src="${vo.image_name }" alt="" class="card-img-top">
						<div class="card-img-overlay text-box d-flex flex-column justify-content-end">
							<div class="bg-primary p-2 rounded" style="opacity: 80%; color: white">
							    <div class="text-ellipsis">${vo.goods_name }</div>
						    	<span style="color:orange;"><fmt:formatNumber value="${vo.sale_price }" /> 원</span>
					    	</div> 
						</div>
					</div>
	      		</div>
		    </c:forEach>
    	</div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>

<script>
$(function(){
// 	alert($(".container-fluid .goodsDataRow:first"));
	let imageWidth = $(".container-fluid .goodsDataRow:first").width();
	// alert(imageWidth);
	$(".carousel-item img").height(imageWidth + "px");
});
</script>
