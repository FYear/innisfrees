<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
		<title>购物车</title>

		<!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="css1/shoppingCart.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<style type="text/css">
			body{
				width:100% ;

			}
			.main>div{
				float: left;
			}
			.shopping{
				width: 480px;
				height: 140px;
				border-bottom:1px solid black ;
			}
			.shopping>p{
				float: left;
				margin-left: 30px;

			}
			.jisuan{
				display: inline-block;
				width: 150px;
				height: 40px;

				border: 1px solid black;
			}
			.num{
				position: relative;
				top: -15px;
				left: 50px;

			}
			.plus{
				position: relative;
				top:-15px;
				left: 100px;
			}

			.scbtract{
				position: relative;
				top: -15px;
				left: 5px;
			}

			a{
				text-decoration: none;
			}
			.jiage{
				display: inline-block;
				margin-top: 60px;
				font: normal 20px/17px "微软雅黑";
			}
			.clear{
				clear: both;
			}
			.names{
				display: block;
				margin-top:10px ;
				font: normal 15px/17px "微软雅黑";
				width: 200px;
				height: 0px;
			}
			.clear{
				clear: both;
			}
			.form11>div{
				float: left;
			}
		</style>

	</head>

	<body>


		<div class="fnav">
			<div class="top2 navbar-fixed-top">
				<div class="nav">
					<div class="" id="menu"><a href="javascript:void(0)">购物</a></div>
					<div class="" id="menu1"><a href="javascript:void(0)">活动 </a></div>
					<div class=""><a href="javascript:void(0)">风吟会</a></div>
					<div class=""><a href="javascript:void(0)">品牌故事</a></div>
				</div>
				<div class="top1">
					<a href="newProduct"><img src="img/logo1.png" width="180" name="img1" /></a>
				</div>
				<div class="nav1">
					<c:if test="${empty userinfo}">
						<span class="motai"><img src="img/user.png" width="45"/><img src="img/userd.png"width="45"/></span>
						<span class="suo"><img src="img/search.png" width="45"/><img src="img/searchd.png" width="45"/></span>
						<a href="javascript:void(0)"><span class="guo1"><img src="img/cart.png" width="45" /></span></a>
					</c:if>
					<c:if test="${not empty userinfo}">
						<span style="margin-left: -150px;">欢迎 ；${userinfo.userName} </span>  <a href="" style="margin-left: 55px">退出</a>
						<span class="suo"><img src="img/search.png" width="45"/><img src="img/searchd.png" width="45"/></span>
						<a href="javascript:void(0)"onclick=" shoppingAll()"><span class="guo"><img src="img/cart.png" width="45" /><img src="img/g2.png" width="45"/><p class="shuz1">${Onenum}</p></span></a>
					</c:if>

				</div>
				<div id="list" style="width:  100%;border-bottom: 1px solid black; ">

					<div class="aa">
						<h4 style="margin-left: 40px;"><a href="productAll">产品类别</a></h4>
						<c:forEach items="${lblist}" var="n">
							<p><a href="productAll?parentid=${n.productRelationId}">${n.name}</a></p>
						</c:forEach>
					</div>
					<div class="aa1">
						<h4 style="margin-left: 40px;"><a href="skincareproductAll">护肤系列</a></h4>
						<c:forEach items="${xllist}" var="n">
							<p><a href="skincareproductAll?id=${n.skincareProductId}">${n.name}</a></p>
						</c:forEach>
					</div>
					<p class="aa2"><img src="img/menu1.png" width="400" height="200" /></p>
				</div>
				<div id="list1" style="width: 100%; height: 300px; ">
					s154326435478458569856
				</div>
				<div id="list2" style="width: 100%;border: 1px solid red; ">
					<div class="search text-center">
						<form action="" method="post">
							<input type="text" name="" id="" placeholder="小绿瓶" />
							<button type="submit">搜索&nbsp;<img src="img/go.png" alt="" width="30"/></button>
						</form>
					</div>
				</div>
				<div id="yonhu">
					<a href="login.jsp">
						<div class="">
							登录
						</div>
					</a>
					<a href="">
						<div class="">
							注册
						</div>
					</a>
				</div>
				<div class="trolley">
					<div class="">
						<p><img src="img/close.png" width="30 "/ ></p>
						<p class="shuz">${Onenum}</p>
					</div>
					<div class="trolley1">

					</div>
					<div class="close1">
						<p class="sum">总计/￥<span class="sums">${sum}</span></p>
						<span class="qinkon">清空</span><span class="jiesuan">结算 <img src="img/go.png" alt="" width="30"/></span>
					</div>
				</div>
			</div>
			<div class="fnav1">
				&nbsp;
			</div>
			<div class="fnav2">
				<div class="gation">
					<span class="glyphicon glyphicon-home">HOME></span>
					<a href=""><span>购物 ></span></a>
					<a href=""><span>一般订单 ></span></a>
					<a href=""><span>购物车 ></span></a>

				</div>
				<div class="gation1">
					<p style="margin-top:70px;">
						<img src="order1/2/orderFlow1_on.png" />
						<img src="order1/2/arr_orderFlow.png" />
						<img src="order1/2/orderFlow2.png" />
						<img src="order1/2/arr_orderFlow.png" />
						<img src="order1/2/orderFlow3.png" />
						<img src="order1/2/arr_orderFlow.png" />
						<img src="order1/2/orderFlow4.png" />
					</p>
					<p><img src="order1/2/BG_step1On.gif" /></p>
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
					<p style="margin-top: 10px;color: #666666;">购物车中的商品只可保存1个月</p>
					<div class="hh4">
						<div class="hhh4">
							<p style="width: 100px;"><input id="allCheckBox" type="checkbox" value="" onclick="selectAll()" /><img src="order1/2/th_all.gif"/></p>
							<p style="width: 350px;"><img src="order1/2/th_pdt.gif" /></p>
							<p style="width: 100px;"><img src="order1/2/th_option.gif" /></p>
							<p style="width: 110px;"><img src="order1/2/th_onePrice.gif" /></p>
							<p style="width: 110px;"><img src="order1/2/th_quantity.gif" /></p>
							<p style="width: 110px;"><img src="order1/2/th_price.gif" /></p>
							<p style="width: 95px;"><img src="order1/2/th_action.gif" /></p>
						</div>
						<div class="hhh5">
						
							<c:forEach items="${plist}" var="p" varStatus="s">
						 	<div class="xunhuan">
								<div class="hhhh4">
									<div style="width: 100px;">
										<input name="cartCheckBox" type="checkbox" value="${sclist.get(s.index).shoppingCartId}" onclick="selectSingle()" />
									</div>
									<div style="width: 350px;text-align: left;overflow: hidden;">
										<img src="${p.productImg}" width="65"/><span style="padding-left: 10px;">${p.name}</span>
									</div>
									<div style="width: 100px;"></div>
									<div style="width: 110px;"><strong style="color: #C5361A;font: normal 10px/46px 宋体;">￥ <span class="danjia">${p.price}</span></strong></div>
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
									<div style="width:110px;"><strong style="color: #C5361A;font: normal 10px/46px 宋体;" >￥<span class="price">${dou.get(s.index)}</span></strong></div>
									<div class="ll1" style="width:95px;">
										
										<p class="addcp">
											<img src="order1/2/btn_directOrder_67x23.gif"/>
										</p>
										
										<p class="delectsc">
											<img src="order1/2/btn_delete_67x23.gif"/>
										</p>
										<input type="hidden" value="${sclist.get(s.index).shoppingCartId}"/>
										<input type="hidden" value="${p.pid}"/>
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
							<div class="hhhh6" style="text-align:left; font:bold 18px/46px 宋体;">
								<p>
									总订购商品数 : <span style="color: #C5361A;">${plist.size()}件</span>
								</p>
								<c:if test="${num>0&&num<500}">
									<p style="color: #C5361A;margin-left: 510px;">
									只要再购买${500-num}元即可获得9折.
									</p>
								</c:if>
								<c:if test="${num>=500&&num<1000}">
									<p style="color: #C5361A;margin-left: 510px;">
									只要再购买${1000-num}元即可获得8折.
									</p>
								</c:if>
								<c:if test="${num>=1000}">
									<p style="color: #C5361A;margin-left: 510px;">
									总金额大于等于1000获得8折优惠
									</p>
								</c:if>
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
							<div class="hhhh7" style="font: bold 18px/46px 宋体;width: 1000px; ">
								<p class="allDeletesc">
									<img src="order1/1/btn_delete_69x27.gif"/>
								</p>
								<p class="allAddcp">
									<img src="order1/2/btn_wish_89x27.gif"/>
								</p>
								<p style="margin-left: 450px; ">
									<a href="Order">
									<img src="order1/2/btn_goOnShopping.gif"/>
									</a>
								</p>
								<p >
									<a href="inOrderqian?pid=0"><img src="order1/2/btn_selectedOrder.gif"/></a>
								</p>
							</div>
						</div>
						<div class="hh5">
							<img src="order1/2/title_dayPick.gif" />
						</div>
						<div class="hh11">
							 <div class="hhh11">
							 	<p>凑单必备</p>
							 	<p>收藏夹商品</p>
							 </div>
						</div>
						<form action="addShoppingla" class="form11" method="post">
							<div class="hh12" style="width: 1000px">
							<c:forEach items="${plistpp}" var="pp">
								<div class="hhh12">
								<input type="checkbox" name="gg" value="${pp.pid}"/><img src="${pp.productImg}" width="150"/>
								<p>${pp.name}</p><strong style="color: #C5361A;padding-left: 50px;padding-left: 30px">￥${pp.price}</strong>
								</div>
							</c:forEach>
							</div>
							<div class="hh13" style="width: 1000px">
								<input type="submit" style="width: 130px;height: 28px;font: normal 15px/28px '微软雅黑'; " value="放入购物车"/>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="fnav3">
				&nbsp;
			</div>
		</div>

		<div class=" bottom3">
			<div class="" style="margin-left: 60px;">
				<p style="padding-bottom: 100px;"><img src="img/logo.png" /></p>
				<p><img src="img/w1.png" width="50" />
					<img src="img/w4.png" width="50" />
					<img src="img/shop.png" width="70" /> 专卖店导航探店指南
				</p>
				<p><img src="img/w3.png" width="60" /> copyright@2011amorerepacific corporation. <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All rights reserved
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
				<p>
					<a href="#">网站使用条款 泸ICP备11011083</a>
				</p>
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
	<div id="list3"></div>
	</body>

</html>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/Allgoods.js"></script>
<script type="text/javascript" src="js1/myCart.js"></script>
<script type="text/javascript">
 	
 	var checpid=[]
 	var check=[]
	
	$(function() {

		//每日精选 查凑单
		$(".hhh11 p:last").css({"background-color":"#F6F6F6","color":"#666666"});
		$(".hhh11 p:first").click(function(){
			//alert(0);
			$(".hhh11 p:last").css({"background-color":"#F6F6F6","color":"#666666"});
			$(".hhh11 p:first").css({"background-color":"#808080","color":"white"});
			//alert(0);
			var uid=${u.uid}
			//alert(uid)
			$.ajax({
				type:"get",
				url:"shoppingCartqian",
				async:true,
				dataType:"json",
				data:{"uid":uid},
				success:function(data){
       			//alert(data);
       			$(".hh12").empty();
       			$.each(data,function(i,n){	
       				var node1="<div class='hhh12'>"
    					node1+="<input type='checkbox' name='gg'  value='"+n.pid+"'/><img src='"+n.productImg+"' width='150'/>"	
    					node1+="<p>"+n.name+"</p><strong style='color: #C5361A;padding-left: 50px;padding-left: 30px'>￥"+n.price+"</strong>"
    					node1+="</div>"
       					node1=$(node1)
       					$(".hh12").append(node1)
       				})
    		},
			});
			
		})
		// 每日精选  查收藏夹商品
		$(".hhh11 p:last").click(function(){
			//alert(1);
			$(".hhh11 p:first").css({"background-color":"#F6F6F6","color":"#666666"});
			$(".hhh11 p:last").css({"background-color":"#808080","color":"white"});
			//alert(0);
			var uid=${u.uid}
			//alert(uid)
			$.ajax({
				type:"get",
				url:"shoppingCartlast",
				async:true,
				dataType:"json",
				data:{"uid":uid},
				success:function(data){
       			//alert(data);
       			$(".hh12").empty();
       			$.each(data,function(i,n){	
       				var node1="<div class='hhh12'>"
    					node1+="<input type='checkbox' name='gg' value='"+n.pid+"'/><img src='"+n.productImg+"' width='150'/>"	
    					node1+="<p>"+n.name+"</p><strong style='color: #C5361A;padding-left: 50px;padding-left: 30px'>￥"+n.price+"</strong>"
    					node1+="</div>"
       					node1=$(node1)
       					$(".hh12").append(node1)
       				})
    		},
			});
		})
		//增加购物车单个产品数量及计算价格
		$(".price1").click(function(){
			var danjia=$(this).parent().prev().children().children().text();
			var number=$(this).prev().children("[name='number']").val();
			var scid=$(this).prev().children("[name='number']").next().val();
			var danjia1=parseInt(danjia);
			var number1=parseInt(number);
			var price=danjia1*number1;
			var price11= $(this).parent().next().children().children()
			$(this).parent().next().children().children().empty();
			$.ajax({
					type:"get",
					url:"addNum",
					async:false,
					dataType:"json",
					data:{"scid":scid,"number":number},
					success:function(data){
		   			alert(data);
		   			if(data==true){
		   				price11.append(price)
		   				}
					}
				})
				zongji();
		})
		//加入收藏
		$(".addcp").click(function(){
			var pid=$(this).next().next().next().val();
			alert(pid)
			$.ajax({
				type:"get",
				url:"addcp",
				async:false,
				dataType:"json",
				data:{"pid":pid},
				success:function(data){
	   			alert(data);
	   			if(data==true){
	   				alert("添加成功！！")
	   				}
	   			}
			})
		})
		//删除单个产品
		 $(".delectsc").click(function(){
			var scid=$(this).next().val();
			var dd=$(this).parent().parent().parent();
			$.ajax({
				type:"get",
				url:"delectsc",
				async:false,
				dataType:"json",
				data:{"scid":scid},
				success:function(data){
	   			alert(data);
	   			if(data==true){
	   				alert("删除成功！！")
	   				dd.remove();
	   				}
	   			}
		})
		zongji();
		
	})
		//删除多个产品
		$(".allDeletesc").click(function(){
			cartCheckBox11();
			for(var i=0;i<check.length;i++){
				$.ajax({
					type:"get",
					url:"delectsc",
					async:false,
					dataType:"json",
					data:{"scid":checpid[i]},
					success:function(data){
					if(data==true){
						var dd=check[i].parentNode.parentNode.parentNode;
						dd.remove();
						}
					}
				})
			}
			alert("删除成功！！")
			zongji();
		})
		//收藏多个产品
		$(".allAddcp").click(function(){
			cartCheckBox11();
			for(var i=0;i<check.length;i++){
				$.ajax({
					type:"get",
					url:"addcp2",
					async:false,
					dataType:"json",
					data:{"scid":checpid[i]},
					success:function(data){

					}
				})
			}
			alert("添加成功！！")

		})
		zongji();
		})
		//更新总价
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

				var node1="<p>总订购商品数 : <span style='color: #C5361A;'>"+prices.length+"件</span></p>"
					if(num>0&&num<500){
						node1+="<p style='color: #C5361A;margin-left: 510px;'>只要再购买"+500-num+"元即可获得9折.</p>"
					}
					if(num>=500&&num<1000){
						node1+="<p style='color: #C5361A;margin-left: 510px;'>只要再购买"+1000-num+"元即可获得8折.</p>"
					}
					if(num>=1000){
						node1+="<p style='color: #C5361A;margin-left: 510px;'>总金额大于等于1000获得8折优惠</p>"
					}
					node1+="<p style='margin-left:540px;'>"
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
		}
		//循环得到选中的产品的购物车id
		function cartCheckBox11(){
			check=$("input[name='cartCheckBox']:checked")
			/* $("[name='cartCheckBox']").prop("checked",true) */
			alert(check.length)
				for(var i=0;i<check.length;i++){
					checpid[i]=check[i].value;
				}
				//浏览器检查输出
				console.log('checpid',checpid)
		}
		//查购物车
		function shoppingAll()  {
			//alert(1)
			$.ajax({
				type:'POST',
				url:'shoppingAll',
				data:{'parentid':1},
				async:false,
				dataType:'json',
				success:function(data) {
					//alert(data)
					if(data!=true){
						$(".trolley1").empty();
						var numlist=data.numlist
						var productlists=data.productlists
						var sum=data.sum
						var Onenum=data.Onenum
						$.each(productlists,function (i,n) {
							var node= '<div class="shopping">'
							node+='<p style="margin-top: -5px;margin-left: -10px;">'
							node+='<img src="'+n.productImg+'" width="130"/>'
							node+='</p>'
							node+='<p>'
							node+='<span class="names">'
							node+=''+n.name+''
							node+='</span><br />'
							node+='<span class="jisuan">'
							node+='<a href="javascript:void(0)"><span class="scbtract" onclick ="scbtract(this)">-</span></a>'
							node+='<span class="num">'
							node+=''+numlist[i]+''
							node+='</span>'
							node+='<a href="javascript:void(0)">'
							node+='<span class="plus" onclick="plus(this)">+</span>'
							node+='</a>'
							node+='<input type="hidden" value="'+n.pid+'">'
							node+='</span>'
							node+='</p>'
							node+='<p style="margin-top: -20px">'
							node+='<span style="margin-left: 20px;"><img src="img/delete.png" alt="" width="10" onclick="deleteCartOne('+n.pid+')"/></span><br />\n'
							node+='<span class="jiage">'
							node+='￥'+n.price+''
							node+='</span>'
							node+='</p>'
							node+='</div>'
							node+='<div class="clear">'
							node+='</div>'
							$(".trolley1").append(node);
						})
						$(".shuz1,.sum,.shuz").empty();
						$(".shuz1").append('<span>'+Onenum+'</span>');
						$(".shuz").append('<span>'+Onenum+'</span>');
						$(".sum").append('总计/￥<span class="sums">'+sum+'</span>');
					}

				}
			})
		}
		//删除购物车单个产品
		function deleteCartOne(pid){
			$(".rein").text("")
			$(".rein").text("是否删除？？？")
			$('.modal').modal();
			$(".queding").click(function(){
				$.ajax({
					type:'POST',
					url:'CartOnedel',
					data:{'pid':pid},
					async:false,
					dataType:'json',
					success:function(data) {
						//alert(data)
						if(data==true){
							shoppingAll()
						}
					}
				})
			})

		}
		//增加购物车单个产品数量
		function plus(e){
			var aa=$(e).parent().prev().text();
			var aa1=parseInt(aa);
			var aa2=aa1+1
			$(e).parent().prev().text(aa2)
			var id=$(e).parent().next().val();
			$.ajax({
				type:'POST',
				url:'numberAdd',
				data:{'num':aa2,'pid':id},
				async:false,
				dataType:'json',
				success:function(data){
					if(data!=''){
						var sum=data.sum;
						$(".sum").empty();
						$(".sum").append('总计/￥<span class="sums">'+sum+'</span>');
					}
				}
			})
		}
		//减少购物车单个产品数量
		function scbtract(e){
			var aa=$(e).parent().next().text();
			var aa1=parseInt(aa);
			var aa2=0;
			if(aa1==1){
				aa2=1
			}else{
				aa2=aa1-1
			}
			var id=$(e).parent().next().next().next().val();
			$(e).parent().next().text(aa2)
			$.ajax({
				type:'POST',
				url:'numberAdd',
				data:{'num':aa2,'pid':id},
				async:false,
				dataType:'json',
				success:function(data){
					if(data!=''){
						var sum=data.sum;
						$(".sum").empty();
						$(".sum").append('总计/￥<span class="sums">'+sum+'</span>');
					}

				}
			})
		}
		//加入购物车产品数量
		function prices(val) {
			document.getElementById('payCount_Max').value=val >=1 ? val : 1 ;
			var aa=$("[name='number']").val()
			var num=parseInt(aa)
			var aa1=$("[name='number']").val()
			var num1=parseInt(aa1)
			number=num1;
			var num2=parseInt(aa2)
			var num3=num1*num2
			$(".price").text(num3);
		}
	</script>	
