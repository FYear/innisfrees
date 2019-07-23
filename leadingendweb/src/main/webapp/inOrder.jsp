<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>提交订单</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css1/inOrder.css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
		<style type="text/css">
			  body{
			  	width:100% ;
			  	
			  }
			 
		</style>


</head>
<body>
	<div class="top2 ">
     	<div class="nav">
     		<div class="" id="menu">购物</div> 
			<div class="" id="menu1">活动 </div >
			<div class="">风吟会  </div >
			<div class="">品牌故事</div >
     	</div>
		<div class="top1">
			<img src="img/logo1.png" width="180" name="img1"/>
		</div>
		<div class="nav1">
			<img src="img/user.png" width="45"/>
			<img src="img/search.png" width="45"/>
			<img src="img/cart.png" width="45"/>
		</div>
			 <div id="list" style="width:  100%;border-bottom: 1px solid black; ">
		 		
		 		<div class="aa">
		 	    <h4 style="margin-left: 40px;"><a href="#">产品类别</a></h4>
		 		<p>基础护理</p>
		 		<p>基础护理</p>
		 		<p>面膜</p>
		 		<p>身体护理</p>
		 		<p>基础护理</p>
		 		<p>面膜</p>
		 		<p>身体护理</p>
		 		<p>基础护理</p>
		 		<p>面膜</p>
		 		<p>身体护理</p>
		 		<p>基础护理</p>
		 		<p>面膜</p>
		 		<p>身体护理</p>	
		 		</div>
		 		<div class="aa1">
		 	    <h4 style="margin-left: 40px;"><a href="#">产品类别</a></h4>
		 		<p>基础护理</p>
		 		<p>面膜</p>
		 		<p>身体护理</p>
		 		<p>基础护理</p>
		 		<p>面膜</p>
		 		<p>身体护理</p>
		 		<p>基础护理</p>
		 		<p>面膜</p>
		 		<p>身体护理</p>
		 		<p>基础护理</p>
		 		<p>面膜</p>
		 		<p>身体护理</p>	
		 		</div>
		 		
		 			<p class="aa2"><img src="img/menu1.png" width="400" height="200"/></p>
		 		
		     </div>
		 	 <div id="list1" style="width: 100%; height: 300px;border: 1px solid red; ">
		 	s154326435478458569856
		     </div>
	 </div>
	 
	 <div class="fnav">
	 	<div class="fnav1">
	 		&nbsp;
	 	</div>
	 	<div class="fnav2">
	 		<div class="gation">
	 			<span class="glyphicon glyphicon-home">HOME></span>
	 			<a href=""><span>购物 ></span></a>
	 			<a href=""><span>一般订单 ></span></a>
	 			<a href=""><span>订单 ></span></a>
	 			
	 		</div>
	 		<div class="gation1">
	 			<p style="margin-top:70px;">
	 				<img src="order1/2/orderFlow1.png"/>
	 				<img src="order1/2/arr_orderFlow.png"/>
	 				<img src="order1/2/orderFlow2_on.png"/>
	 				<img src="order1/2/arr_orderFlow.png"/>
	 				<img src="order1/2/orderFlow3.png"/>
	 				<img src="order1/2/arr_orderFlow.png"/>
	 				<img src="order1/2/orderFlow4.png"/>
	 			</p>
	 			<p><img src="order1/2/BG_step2On.gif" /></p>
	 			<div class="hh1">
						<p style="font: bold 18px/46px 宋体;width: 150px;color: black;">${u.userName}</p>
						<p>商品优惠券:<strong style="color: #C5361A;">0张</strong></p>
						<c:if test="${u.couponId!=null}">
						<p>购物车优惠券:<strong style="color: #C5361A;">${u.couponNum}张</strong></p>
						</c:if>
						<c:if test="${u.couponId==null}">
						<p>购物车优惠券:<strong style="color: #C5361A;">0张</strong></p>
						</c:if>
						<p>免运费优惠券:<strong style="color: #C5361A;">0张</strong></p>
						<p>赠品优惠券:<strong style="color: #C5361A;">0张</strong></p>
						<p>购物积分:<strong style="color: #C5361A;">0P</strong></p>
				</div>
	 			<p style="margin-top:40px;"><img src="order1/2/title_shoppingInfo.gif"/></p>
	 			<div>
	 			<c:forEach items="${ualist}" var="ua">
	 				<c:if test="${ua.isdefault==1}">
	 				
	 					<div class="hh2" onclick="moren11(${ua.userAddressId},this)">
	 						<!-- <h1>111111111111111</h1> -->
	 						<p style="padding:20px 30px;width: 280px;">${ua.readdressUser}</p>
	 						<p style="padding:50px 30px;width: 280px;border-bottom:1px solid #E2E2E2;">${ua.address}</p>
	 						<p style="padding:25px 30px;width: 280px;">${ua.readdressPhone}</p>
	 						
	 						<input type="hidden" value="${ua.isdefault}" name="moren"/>
	 					</div>
	 			
	 		
	 				</c:if>
	 				
	 				<c:if test="${ua.isdefault==0}">
	 				
	 					<div class="hh3"  onclick="moren11(${ua.userAddressId},this)">
	 						
	 						<p style="padding:20px 30px;width: 280px;">${ua.readdressUser}</p>
	 						<p style="padding:50px 30px;width: 280px;border-bottom:1px solid #E2E2E2;">${ua.address}</p>
	 						<p style="padding:25px 30px;width: 280px;">${ua.readdressPhone}</p>
	 						
	 						<input type="hidden" value="${ua.isdefault}" name="moren"/>
	 					</div>
	 						
	 					
	 				
	 				</c:if>
	 				
	 			</c:forEach>
	 			</div>
	 			<div class="clear">
	 				&nbsp;
	 			</div>
	 			<!-- <p style="text-align: right;margin-top: 40px;margin-right: 50px;">
	 				<a href=""><img src="order1/1/btn_editAddress.gif"/></a>
	 				<a href=""><img src="order1/1/btn_newAddress.gif"/></a>
	 				<a href=""><img src="order1/1/btn_moreAddress.gif"/></a>	
	 			</p>
	 			<div class="hh4">
	 				<div class="hhh4">	
	 						
							<p style="width: 450px;"><img src="order1/2/th_pdt.gif" /></p>
							<p style="width: 100px;"></p>
							<p style="width: 110px;"><img src="order1/2/th_onePrice.gif" /></p>
							<p style="width: 110px;"><img src="order1/2/th_quantity.gif" /></p>
							<p style="width: 110px;"><img src="order1/2/th_price.gif" /></p>
							<p style="width: 95px;"></p>
	 				</div>
	 				<c:forEach items="${plist}" var="p" varStatus="s">
						 	<div class="xunhuan">
								<div class="hhhh4">
									
									<div style="width: 450px;text-align: left;overflow: hidden;">
										<img src="${p.productImg}" width="65"/><span style="padding-left: 10px;  overflow: hidden;">${p.name}</span>
									</div>
									<div style="width:100px;"></div>
									<div style="width:110px;text-align: left;overflow: hidden;">
										<strong style="color: #C5361A;font: normal 10px/46px 宋体;padding-bottom: 50px;padding-left: 30px">￥ <span class="danjia" style=" ">${p.price}</span></strong>
									</div>
									<%-- <div style="width: 210px;"><strong style="color: #C5361A;font: normal 10px/46px 宋体;border: 1px solid red;padding-bottom: 50px;padding-left: 30px">￥ <span class="danjia" style=" ">${p.price}</span></strong></div>
									 --%>
									 <div class="ll1" style="width: 110px;">
										<p class="priceff">
											<!-- <a href=""><img src="order1/1/btn_quantityMinus.gif"/></a> -->
											<input type="number" style="height: 20px; width: 40px;font: normal 5px/20px '微软雅黑';text-align: center;" value="${sclist.get(s.index).num}" name="number"/>
											<input type="hidden" value="${sclist.get(s.index).shoppingCartId}"/>
											<!-- <a href=""><img src="order1/1/btn_quantityPlus.gif"/></a> -->
										</p>
										<p class="price1">
											<img src="order1/1/btn_edit_38x23.gif"/>
										</p>
									</div>
									<div style="width:110px;text-align: left;overflow: hidden;">
										<strong style="color: #C5361A;font: normal 10px/46px 宋体;padding-bottom: 50px;padding-left: 30px" >￥<span class="price">${dou.get(s.index)}</span></strong>
									</div>
									<%-- <div style="width:110px;"><strong style="color: #C5361A;font: normal 10px/46px 宋体;" >￥<span class="price">${dou.get(s.index)}</span></strong></div>
									 --%>
									 <div class="ll1" style="width:95px;">
									</div>
									
								</div>
								<c:if test="${not empty p.giveProductId}">
								
								<div class="hhhh5" style="background-color: #F8F8F8;text-align: left;">
										<img src="order1/2/BG_gift.gif" /> 
										<c:forEach var="i" begin="1" end="${p.gnum}" >
										  	<%-- <c:if test="${n!=}"></c:if> --%>
											<img src="${p.gimg}" width="65"/>
											${p.gname}
										</c:forEach>
								</div>
								</c:if>
							</div>
							</c:forEach>
	 				
	 				<div class="hhhh6" style="text-align:left; font:bold 18px/46px 宋体; margin-top: 50px">
								<p style="margin-left:540px;">
									订单金额总计 : <span style="color:#C5361A;padding-right: 20px">￥${num}</span>
									 实付金额总计 : <span style="color:#C5361A;">
									 <c:if test="${num>0&&num<500}">
										 ￥${num}
									 </c:if>
									 <c:if test="${num>=500&&num<1000}">
										 ￥${num*0.9}
									 </c:if>
									 <c:if test="${num>=1000}">
										 ￥${num*0.8}
									 </c:if>
									 </span>
								</p>
					</div>
	 				
	 				<div class="hh8">
	 					<table class="table">
						    <tbody>
						    	<tr>
						    		<td>运费</td>
						    		<td colspan="2"></td>
						    		
						    		<td><strong style="color: red;">￥0.00</strong></td>
						    		
						    	</tr>
						    	<tr>
						    		<td>实付款</td>
						    		<td colspan="2"></td>
						    		<td><strong style="color: red;">￥<span class="lastPrice">2215.00</span></strong></td>
						    	</tr>
						    	<tr>
						    		<td>发票</td>
						    		<td colspan="3"><span style="color: red;">确认收货7天后方可开发票(30天内可开发票)</span></td>
						    		
						    	</tr>
						    	<tr>
						    		<td>收货人</td>
						    		<td colspan="3"><span class="name">学校 18873066175</span></td>
						    	</tr>
						    	<tr>
						    		<td>寄送至</td>
						    		<td colspan="3"><span class="dress">414100 湖南省长沙市天心区 长沙实力</span></td>
						    	</tr>
						    	<%--<tr>
						    		<td>留言</td>
						    		<td colspan="3">
						    			<input type="text" style="height: 25px;width: 250px;" name="liuyan"/>*仅限20字以内(3/70byte)
						    		</td>
						    	</tr>--%>
						    </tbody>
	 					</table>
	 				</div>
	 				<div class="hh9">
	 					* 如需要增值税发票请联系客服
	 				</div>

	 				<div class="hh10">
	 					<a href="shoppingCartqian"><img src="order1/1/btn_cart_143x34.gif" /></a>
	 					<c:if test="${ifpid==0}">
	 						<a href="SubmitOrder"><img src="order1/1/btn_payment_138x34.gif"/></a>
	 					</c:if>
	 					<c:if test="${ifpid!=0}">
	 						<a href="SubmitOrder?id=${ifpid}"><img src="order1/1/btn_payment_138x34.gif"/></a>
	 					</c:if>
	 					
	 					<a href=""><img src="order1/1/btn_cancel_143x34.gif"/></a>
	 				</div>
	 			</div>
	 		</div>
	 	</div>
	 	<div class="fnav3">
	 		&nbsp;
	 	</div>
	 </div>
	 
	 
	 
	 <div class=" bottom3">
		<div class="" style="margin-left: 60px;">
				<p style="padding-bottom: 100px;"><img src="img/logo.png"/></p>
				<p ><img src="img/w1.png" width="50"/>
				<img src="img/w4.png" width="50"/>
				<img  src="img/shop.png"width="70"/>
				专卖店导航探店指南</p>
				<p><img src="img/w3.png" width="60"/>
				copyright@2011amorerepacific corporation. <br />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All rights reserved
				</p>
		</div>
		<div class="mo" style="margin-left: 270px;">
			
				<h2>联系我们</h2>
				<p>订单咨询热线 : 021-61255625</p>
				<p>工作时间：09:00-21:00</p>
				<p>品牌服务热线：400-920-9238</p>
				<p>服务时间：09:00-21:00(不含国定假日)</p>
				<p>客服邮件：innisfree@innisfree.cn</p>
				<p style="margin-top: 30px;">
				<img src="img/ico_footerMark.png" width="20" />
				<a>泸公网安备 31010602000985</a>
				</p>
				
		</div>	
			<div class="mo">
				
				<h2>会员中心</h2>
				<p>加入会员</p>
				<p>会员制度</p>
				<p>互动游戏</p>
				<p>我的主页</p>
				<p>每日签到</p>
				<p><a href="#">网站使用条款 泸ICP备11011083</a></p>
		    </div>	
			<div class="mo1">
				<h2>客服中心</h2>
				<p>公告板</p>
				<p>使用说明</p>
				<p>在线咨询</p>
				<p>Q&A留言</p>
				<p>FAQ</p>
				
			</div>
			
		</div>	
</body>
</html>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
var chamoren=[];
var moren=[];

$(function () {
	xians();	
	zongji();
            $("#list").hide();
            $("#menu").hover(function () {
                $("#list").show();
            }, function () {
                $("#list").hide();
            })
            // 鼠标移动到list的div上的时候list div不会被隐藏
            $("#list").hover(function () {
                $("#list").show();
            }, function () {
                $("#list").hide();
            })
            
             $("#list1").hide();
            $("#menu1").hover(function () {
                $("#list1").show();
            }, function () {
                $("#list1").hide();
            })
            // 鼠标移动到list的div上的时候list div不会被隐藏
            $("#list1").hover(function () {
                $("#list1").show();
            }, function () {
                $("#list1").hide();
            })
            
            $(".price1").click(function(){
			//alert(2)
			var danjia=$(this).parent().prev().children().children().text();
			var number=$(this).prev().children("[name='number']").val();
			var scid=$(this).prev().children("[name='number']").next().val();
			//alert(danjia)
			//alert(scid)
			//alert(number)
			var danjia1=parseInt(danjia);
			var number1=parseInt(number);
			var price=danjia1*number1;
			//alert(price)
			var price11= $(this).parent().next().children().children()
			$(this).parent().next().children().children().empty();
			
			$.ajax({
					type:"post",
					url:"addNum",
					async:false,
					dataType:"json",
					data:{"scid":scid,"number":number},
					success:function(data){
		   			//alert(data);
		   			if(data==true){
		   				price11.append(price)
		   				}
					}
				})
				zongji();
		})
		
		  /* $(".hh3").click(function(){
			 	var uaid = $(this).next();
			 	alert(uaid)
		 }) */
		 
        });
        
        
        
        function moren11(uaid,t){	
        	//alert(uaid)
        	$(t).removeClass();
        	$(t).addClass("moren")
        	$(t).children().eq(0).addClass("morenp")
        	chamoren11()
        	var more;
        	for(var i=0;i<chamoren.length;i++){
        		//alert(chamoren)
        		 if(chamoren[i]==1){
        			//alert(moren[i].value)
        			var pp=moren[i].parentNode;
        			//alert(pp.firstElementChild.nodeName)
        			  /* more=moren[i]; */
        			moren[i].parentNode.className = "morenp1";
        			moren[i].parentNode.firstElementChild.className = "morenp11";	
        		} 
        	}
        	var name=$(".name")
        	var dress=$(".dress")
        	$.ajax({
				type:"post",
				url:"xiugaimoren",
				async:false,
				dataType:"json",
				data:{"uaid":uaid},
				success:function(data){
	   			//alert(data);
	   			if(data!=false){
	   				name.empty();
	   				name.append("["+data.readdressUser+"]"+data.readdressPhone)
	   				dress.empty();
	   				dress.append(data.address) 
	   				/* xians(); */
	   				
	   				}
				}
			})
        	
        }
        function xians(){
        	chamoren11()
        	for(var i=0;i<chamoren.length;i++){
        		//alert(chamoren[i])
        		 if(chamoren[i]==1){
        			//alert(moren[i].parentNode.firstElementChild.innerText)
        			//alert(moren[i].previousElementSibling.previousElementSibling.innerText)
        			
        			var name=$(".name")
                	var dress=$(".dress")
                	name.empty();
	   				name.append("["+moren[i].parentNode.firstElementChild.innerText+"]"+moren[i].previousElementSibling.innerText)
	   				dress.empty();
	   				dress.append(moren[i].previousElementSibling.previousElementSibling.innerText)
        		} 
        	}
        }
        
        function chamoren11(){
        	/* moren=[]
        	chamoren=[] */
        	moren=$("[name='moren']")
    		/* $("[name='cartCheckBox']").prop("checked",true) */
    		
    			for(var i=0;i<moren.length;i++){
    			/* 	alert(moren[i].value) */
    				chamoren[i]=moren[i].value;
    				
    			} 
    			/* console.log('chamoren',chamoren) */
    		
    		
    	}
        
        
        
		function zongji(){
			
			/* var price = document.getElementsByClassName("price");
			var prices=[];
			for(var i=0;i<price.length;i++){
				prices[i]=parseInt(price[i].innerText);
			} */
			var price =$(".price");
			var prices=[];
			for(var i=0;i<price.length;i++){
				prices[i]=parseInt(price[i].innerText);
			}
		
			/* console.log('prices',prices) //页面查看*/
			//$(".hhhh6").empty();
			/* var danjia=$(".danjia").text()
				alert(danjia) */
			/* var number=$("[name='number']") */
			
			/* var number1=[]
			var num;
			$.each(number,function(){
				number1=number.val()
				alert(number1)
			}) */
			
			
				/* var price1=$(".price").text(); 
				alert(price1)*/
				
				var num1=0;
				var num=parseInt(num1)
				$.each(prices,function(i,n){
					num+=n;
				}) 
				
				
				$(".hhhh6").empty();
		   			var	node1="<p style='margin-left:540px;'>"
					node1+="订单金额总计 : <span style='color:#C5361A;padding-right: 20px'>￥"+num+"</span>"
					node1+="实付金额总计 : <span style='color:#C5361A;'>"
					if(num>0&&num<500){
						node1+="￥"+num
					}
					if(num>=500&&num<1000){
						node1+="￥"+num*0.9
					}
					if(num>=1000){
						node1+="￥"+num*0.8
					}
					node1+="</span>"
					node1+="</p>"
					node1=$(node1)
					$(".hhhh6").append(node1)	
					$(".lastPrice").empty();
					if(num>0&&num<500){
						$(".lastPrice").append(num)
					}
					if(num>=500&&num<1000){
						$(".lastPrice").append(num*0.9)
					}
					if(num>=1000){
						$(".lastPrice").append(num*0.8)	
					}
					
		}
        
</script>

