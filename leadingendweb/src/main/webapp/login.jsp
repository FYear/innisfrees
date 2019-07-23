<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
		<title>我的主页</title>

		<!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="css1/login.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/all.min.css" rel="stylesheet">
		<link href="./disk/slidercaptcha.css" rel="stylesheet" >
		<!--演示页面样式，使用时可以不引用-->
		<!--演示页面样式，使用时可以不引用-->
		<style type="text/css">
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
						<p class="sum">总计/￥${sum}</p>
						<span class="qinkon">清空</span><span class="jiesuan">结算 <img src="img/go.png" alt="" width="30"/></span>
					</div>
				</div>
			</div>
			<div class="fnav1">

			</div>

			<div class="fnav2">
				<div class="row head">
					<span><img src="img1/BG_home.png"> &nbsp;&nbsp;> <a href="">登录</a>/<a href="">会员注册</a> &nbsp;&nbsp;> <span style="font-size: 12px;">登录</span></span>
				</div>
				<hr style="width: 1000px; " />

				<div class="row" style="display: flex;">
					<div class="col-lg-2 " id="nav1">
						<ul>
							<a href="">
								<li style="background-color: #8EB6B8; color: white;">会员登录</li>
							</a>
							<a href="">
								<li>加入会员</li>
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

					<div class=" col-lg-6" id="nav2">
						<h3>会员信息</h3>
						<h6>欢迎加入来自纯净济州岛的innisfree官网商城！</h6>
						<div class="row " id="nav3">
							<div class="col-md-4"></div>
							<div class="col-md-7">
								<img src="img1/title_login.gif" />
									<hr style="width: 475px;" />
								<form action="" method="post">
									<div class="row">
										<div class="col-md-9">
											<h6>
												<input type="text" name="pe" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>&nbsp;&nbsp;&nbsp;
												邮箱地址/手机号码: </h6>
											<h6>
												<input type="password" name="pwd" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>&nbsp;&nbsp;&nbsp;
												密码:
								
							</h6>
											<div style="display: none;" class="htmleaf-container" style="margin-top: 20px;">
												<p id="v_container"></p>
												<p><span><input class="inp" required="required" type="text" id="code_input" value="" placeholder="请输入验证码" onkeyup="this.value=this.value.replace(/\s+/g,'')"/></span>
													<span class="yzm"></span></p>

											</div>
										</div>
										<div class="col-md-3" style="margin-top: 10px;">
											<input class="sub" id="my_button" type="button" value="登录" style="width: 100px; height: 45px;" />
										</div>
									</div>
									<h6><input style="margin-left: 110px; " type="checkbox" value="" checked="checked" />保存邮箱/手机号</h6>
								</form>

								<h6>- 输入电子邮地址和密码进行登录时，请务必区分大小写。</h6>
								<h6>- IE6.0用户如出现登录后页面无反应的情况，请刷新页面或点击网站其它页面。</h6>
								<hr style="width: 475px;" />
								<h6 class="action">使用合作网站账号登录 
						<a href=""><img src="img1/ico_sns_qq.gif"></a>
						<a href=""><img src="img1/ico_sns_weibo.gif"/></a>
						<a href=""><img src="img1/ico_sns_wechat.gif"/></a>
						<a href=""><img src="img1/ico_sns_alipay.gif"/></a>
					</h6>
							</div>

							<div class="row" style="margin-top:10px;">
								<div class="col-md-8">
									<h5 style="font-weight: 600;">尚未加入innisfree会员?</h5>
									<h6>成为innisfree官网商城会员</h6>
								</div>

								<div class="col-md-4" style="margin-top: 20px;">
									<h6><button style="width:140px;"><a href="" style="color: black; ">网上/专营店注册会员</a></button></h6>
								</div>
							</div>
							<hr style="width: 750px;" />

							<div class="row" style="margin-top:10px;">
								<div class="col-md-9">
									<h5 style="font-weight: 600; ">忘记密码了?</h5>
									<h6>找回密码</h6>
								</div>

								<div class="col-md-3" style="margin-top: 20px;">
									<h6><button style="width: 120px;"><a href="" style=" color: black;">找回密码</a></button></h6>
								</div>
							</div>
							<hr style="width: 750px; border: 1px initial;" />

							<div class="row" style="margin-top:10px;">
								<div class="col-md-12">
									<h5 style="font-weight: 600; color: red;">innisfree官网商城/专卖店综合会员制度说明</h5>
									<ul>
										<h6><li>innisfree会员注册可在Innisfree官方商城和专卖店通过移动设备或者填写会员注册单进行注册</li></h6>
										<h6><li>innisfree会员注册可在Innisfree官方商城和专卖店通过移动设备或者填写会员注册单进行注册</li></h6>
										<h6><li>innisfree会员注册可在Innisfree官方商城和专卖店通过移动设备或者填写会员注册单进行注册</li></h6>
									</ul>
								</div>

							</div>

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
<!-- Bootstrap的JS插件-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/gVerify.js"></script>
<script src="js/Allgoods.js"></script>
<script type="text/javascript">
	$(function() {
		$("#nav1 li").mousemove(function() {
		$(this).addClass("color")
		})
		$("#nav1 li").mouseout(function() {
			$(this).removeClass("color")
		})
        $(".htmleaf-container").show();
        $(".guo1").click(function(){
            var ck=confirm("您还没有登录，请先登录")

        })
		var verifyCode = new GVerify("v_container");
		console.log(verifyCode)
		document.getElementById("my_button").onclick = function() {
			var res = verifyCode.validate(document.getElementById("code_input").value);
            var pe=$("[name='pe']").val()
            var pwd=$("[name='pwd']").val();
            if(pe==''||pwd==''){
                alert("用户名密码不能为空")
            }else{
                if(res) {
                    $(".yzm").html("")
                   // alert(pe)
                   // alert(pwd)
                    $.ajax({
                        type:'POST',
                        url:'userlogin',
                        data:{'pe':pe,'pwd':pwd},
                        async:false,
                        dataType:'json',
                        success:function(data){
                            //alert(data)
							if(data==true){
                                alert(1)
                                window.location.href='newProduct';
							}
							if(data==false){

							}

                        }
                    })
                } else {
                    $(".yzm").html("验证码错误")
                }
            }
		}
	});



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
       // alert(id)
        //alert(aa2)
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