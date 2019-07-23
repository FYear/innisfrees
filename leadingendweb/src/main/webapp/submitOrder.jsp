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
    <link rel="stylesheet" type="text/css" href="css1/submitOrder.css"/>

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
	 			<a href=""><span>付款 ></span></a>
	 			
	 		</div>
	 		<div class="gation1">
	 			<p style="margin-top:70px;">
	 				<img src="order1/2/orderFlow1.png"/>
	 				<img src="order1/2/arr_orderFlow.png"/>
	 				<img src="order1/2/orderFlow2.png"/>
	 				<img src="order1/2/arr_orderFlow.png"/>
	 				<img src="order1/1/orderFlow3_on.png"/>
	 				<img src="order1/2/arr_orderFlow.png"/>
	 				<img src="order1/2/orderFlow4.png"/>
	 			</p>
	 			<p><img src="order1/1/BG_step3On.gif" /></p>
	 			<div class="hh1">
	 				<p style="font: bold 18px/46px 宋体;width: 150px;color: black;">李正球</p>
	 				<p>商品优惠券:<strong style="color: #C5361A;">0张</strong></p>
	 				<p>购物车优惠券:<strong style="color: #C5361A;">2张</strong></p>
	 				<p>免运费优惠券:<strong style="color: #C5361A;">0张</strong></p>
	 				<p>赠品优惠券:<strong style="color: #C5361A;">0张</strong></p>
	 				<p>购物积分:<strong style="color: #C5361A;">0P</strong></p>
	 			</div>
	 			<p style="margin-top:40px;"><img src="order1/1/title_orderComplete.gif"/></p>
	 			
	 			
	 			
	 				<div class="hh8">
	 					<table class="table">
						    <tbody>
						    	<tr>
						    		<td>收货人</td>
						    		<td>${order1.readdressName}</td>
						    	</tr>
						    	<tr>
						    		<td>订单编号</td>
						    		<td >${order1.serialnumber}
						    		</td>
						    	</tr>
						    	<tr>
						    		<td>收货人地址</td>
						    		<td>${order1.useraddress}</td>
						    	</tr>
						    	<tr>
						    		<td>手机号码</td>
						    		
						    		<td>${address.readdressPhone}</td>
						    	</tr>
						    	<tr style="border-bottom: 1px solid #DDDDDD;height: 100px;">
						    		<td>应付金额</td>
						    		<td><span style="color: red;font:bold 20px/100px  '微软雅黑';">￥${order1.cost}</span></td>
						    	</tr>
						    </tbody>
	 					</table>
	 				</div>
	 				<p style="margin-top:-40px;"><img src="order1/1/title_pay.gif"/></p>
	 				<div class="hh9">
	 					
	 					<p><input type="radio" name="vv"/><img src="order1/1/payMethod_upacp.png"/></p>
	 					<p><input type="radio" name="vv"/><img src="order1/1/payMethod_alipay.png"/></p>
	 				</div>
	 				<div class="hh10">
	 					<span class="kkk1"><img src="order1/1/btn_payment_143x34.gif"/></span>
	 					<a href=""><img src="order1/1/btn_payCancel_143x34.gif"/></a>
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
		<div id="mymodal" class="modal fade" data-backdrop="static">
					    <div class="modal-dialog">
					        <div class="modal-content" style="height: 200px;width: 300px;">
					            <div class="modal-header">
					                <button class="close" data-dismiss="modal">&times;</button>
					                <h4 class="modal-title"><img src="order1/1/2019-07-03_111119.png"/>支付宝支付</h4>
					            </div>
					            <div class="media-body mo1body">
					                <p> 您正在使用"支付宝"进行支付</p>
					            </div>
					            <div class="modal-footer">

									<a href="OrderPay?id=${order1.orderId}"><button class="btn btn-primary ">马上支付</button></a>
					                <button class="btn btn-default" data-dismiss="modal">取消支付</button>
					            </div>
					        </div>
					    </div>
					
					</div>

</body>
</html>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src='js/bootstrap.js'></script>
<script src="js/Allgoods.js"></script>
<script type="text/javascript">

$(function () {
			$(".kkk1").click(function(){
				 $('.modal').modal();

			})
			
			/*$('#myModal').modal(options)*/

        });

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

