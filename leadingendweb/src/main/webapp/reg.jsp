<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
		<title>注册界面</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css1/reg.css" />
		<style>
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
			.jia{
				position: relative;
				top:-15px;
				left: 100px;
			}

			.jian{
				position: relative;
				top: -15px;
				left: 5px;
			}

			a{
				text-decoration: none;
			}
			.jiage{
				display: inline-block;
				margin-top: 80px;
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
					<img src="img/logo1.png" width="180" name="img1" />
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
						<a href="javascript:void(0)" onclick="shoppingAll()"><span class="guo"><img src="img/cart.png" width="45" /><img src="img/g2.png" width="45"/><p class="shuz1">${Onenum}</p></span></a>
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
						<h4 style="margin-left: 40px;"><a href="#">护肤系列</a></h4>
						<c:forEach items="${xllist}" var="n">
							<p><a href="">${n.name}</a></p>
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
						<p class="sum">总计/￥${sum}</p>
						<span class="qinkon">清空</span><span class="jiesuan">结算 <img src="img/go.png" alt="" width="30"/></span>
					</div>
				</div>
			</div>
			<div class="fnav1">

			</div>

			<div class="fnav2">
				<div class="head">
					<span><img src="img1/BG_home.png"> &nbsp;&nbsp;> <a href="">登录</a>/<a href="">会员注册</a> &nbsp;&nbsp;> <span style="font-size: 12px;">加入会员</span></span>
				</div>
				<hr style="width: 1000px;" />

				<div class="row" style="display: flex;">
					<div class="col-md-2  col-lg-12" id="nav1">
						<ul>
							<a href="">
								<li>会员登录</li>
							</a>
							<a href="">
								<li style="background-color: #8EB6B8; color: white;">加入会员</li>
							</a>
							<a href="">
								<li>找回密码</li>
							</a>
							<a href="">
								<li>使用条款</li>
							</a>
							<a href="">
								<li>隐私声明</li>
							</a>
						</ul>
					</div>
					<div class="col-md-5" id="nav2">
						<h3>加入会员</h3>
						<h6>欢迎加入来自纯净济州岛的innisfree官网商城！</h6>
						<div class="back">
							<img src="img1/txt_welcome_inni.gif">
						</div>

						<div class="row nav2" style="width: 600px;">
							<div class="col-lg-9 ">
								<h4>我的个人信息</h4>
							</div>
							<div class="col-lg-3">
								<h6 style="color: red;">* 为必填项</h6>
							</div>
						</div>
						<hr style="width: 800px;" />

						<div class="row" style="display: flex;">
							<div class="col-lg-2 " id="nav3">
								<ul>
									<li><span style="color: red;">*</span> &nbsp;&nbsp;手机号码</li>
									<li><span style="color: red;">*</span>&nbsp;&nbsp; 手机验证码</li>
									<li><span style="color: red;">*</span>&nbsp;&nbsp; 电子邮箱</li>
									<li><span style="color: red;">*</span>&nbsp;&nbsp; 姓名</li>
									<li><span style="color: red;">*</span> &nbsp;&nbsp;出生日期</li>
									<li><span style="color: red;">*</span>&nbsp;&nbsp; 密码</li>
									<li><span style="color: red;">*</span>&nbsp;&nbsp;确认密码</li>
									<li><span style="color: red;">*</span>&nbsp;&nbsp;图片验证码</li>
								</ul>
							</div>

							<form action="" method="post">
								<div class="col-lg-9 " style="margin-top: -10px;" id="nav4">
									<ul>
										<li><input type="text" required="required"></li>
										<li><input type="text" name="" required='required' />&nbsp;
											<a href=""><button>获取验证码</button></a>
										</li>
										<li><input type="text" required="required"></li>
										<li><input type="text" required="required"></li>
										<li>
											<select id="selYear"></select>年
											<select id="selMonth"></select>月
											<select id="selDay"></select>日
										</li>
										<li><input type="text" required="required"><span style="font-size: 12px;"> 应输入英文与数字或半角符号混合的6-16位密码。</span></li>
										<li><input type="text" required="required"></li>
										<li><input type="text" required="required"><img id="veryCode" src="" /><span style="font-size: 12px;"> 看不清可点击刷新图片。</span></li>
									</ul>
									<h6><input style="margin-left: 150px; " type="checkbox" value="" checked="checked" />已阅读悦诗风吟使用条款和隐私政策并同意。</h6>

								</div>

								<input type="submit" value="注册会员" style="margin-left: 400px ;width: 100px; margin-top: 20px; background-color: #E1E1E1;" />
							</form>

						</div>
					</div>

				</div>
			</div>
			<div class="fnav3">

			</div>
		</div>
		<div class=" bottom3">
			<div class="" style="margin-left: 60px;">
				<p><img src="img/logo.png" /></p>
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
		<div id="list3" class="">
		</div>

	</body>

</html>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/birthday.js"></script>
<script src="js/Allgoods.js"></script>
<script type="text/javascript">
	$(function() {
		$("#nav1 li").mousemove(function() {
			$(this).addClass("color")
		})
		$("#nav1 li").mouseout(function() {
			$(this).removeClass("color")
		})
		var selYear = window.document.getElementById("selYear");
		var selMonth = window.document.getElementById("selMonth");
		var selDay = window.document.getElementById("selDay");
		// 新建一个DateSelector类的实例，将三个select对象传进去
		new DateSelector(selYear, selMonth, selDay, 1990, 1, 1);

		//图片验证码
		/* $("#veryCode").click(function(){
    		   // alert( $(this).attr("src") );
    		   var ss = "/EasyBuy2/ImageAction?times="+new Date();
    		   $(this).attr("src",ss); // 重加载路径
    	   });*/

		$("#nav1 li").mousemove(function() {
			$(this).addClass("color")
		})
		$("#nav1 li").mouseout(function() {
			$(this).removeClass("color")
		})
        $(".guo1").click(function(){
            var ck=confirm("您还没有登录，是否登录")
            if(ck){
                window.location.href="login.jsp"
            }
        })
		

	})
 function shoppingAll() {
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
                        node+='<a href="javascript:void(0)"><span class="jian" onclick ="jian(this)">-</span></a>'
                        node+='<span class="num">'
                        node+=''+numlist[i]+''
                        node+='</span>'
                        node+='<a href="javascript:void(0)">'
                        node+='<span class="jia" onclick="jia(this)">+</span>'
                        node+='</a>'
                        node+='<input type="hidden" value="'+n.pid+'">'
                        node+='</span>'
                        node+='</p>'
                        node+='<p style="margin-top: -20px">'
                        node+='<span style="margin-left: 20px;"><img src="img/delete.png" alt="" width="10"/></span><br />\n'
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
                    $(".sum").append('<span>￥'+sum+'</span>');
				}
            }
        })
    }
    function jia(e){
        var aa=$(e).parent().prev().text();
        var aa1=parseInt(aa);
        var aa2=aa1+1
        $(e).parent().prev().text(aa2)
        var id=$(e).parent().next().val();
        alert(id)
        alert(aa2)
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
                    $(".sum").append('<span>￥'+sum+'</span>');
                }
            }
        })
    }
    function jian(e){
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
                    $(".sum").append('<span>￥'+sum+'</span>');
                }

            }
        })
    }
</script>