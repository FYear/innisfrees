<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
		<title>悦诗风吟官方网站</title>

		<!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="css1/Details.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="js/iCheck/skins/flat/grey.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/bootstrap-fileupload.min.css" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/zoomio.css"/>
		<style type="text/css">
			body {
				width: 100%;
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
						<a href="javascript:void(0)" <%--onclick="shoppingAll()"--%><span class="guo"><img src="img/cart.png" width="45" /><img src="img/g2.png" width="45"/><p class="shuz1">${Onenum}</p></span></a>
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
				<div class="gation">
					<span class="glyphicon glyphicon-home">HOME></span>
					<a href=""><span>商城 ></span></a>
					<a href=""><span>产品类别 ></span></a>
					<a href=""><span>基础护理 ></span></a>
					<a href=""><span>护肤水 ></span></a>
				</div>
				<div class="gation1">
					<p><span>${product.name}</span>&nbsp;&nbsp;&nbsp;
					<spsn>30ml</spsn>
					<c:if test="${xp==1}">
						<img src="img/f1.png" alt="" />
					</c:if>
					<c:if test="${cx==1}">
						<img src="img/f1-2.png" alt="" />
					</c:if>
					<c:if test="${not empty giveproduct}">
						<img src="img/f1-3.png" alt="" />
					</c:if></p>
				</div>

				<div class="motai2">

					<div class="motai3">
						<div>
							<div class="htmleaf-content">
							<img class="sampleimage" src="${product.productImg}"/>
							</div>
						</div>

						<div class="motai4">
							<p>${product.title}</p>
							<li>
								<p>商品编码</p>
								<p>${product.productId}</p>
							</li>
							<li>
								<p>状态</p>
								<p>${product.state1}</p>
							</li>
							<li>
								<p style="font: bold 13px/20px '微软雅黑';">市场价</p>
								<p style="color: red;font: bold 20px/20px '微软雅黑';">￥${product.price}</p>
							</li>
							<li>
								<p>购买数量</p>
								<p><input type="number" value="1"></p>
							</li>

							<div class="motai5">
								<li>
									<p>总价</p>
									<p>￥152</p>
								</li>

							</div>
							<div class="motai6">
								<p><img src="img/btn_buyNow.gif" alt="" /></p>
								<p><img src="img/btn_shoppingCart.gif" alt="" /></p>
								<p><img src="img/btn_wish.gif" alt="" /></p>
							</div>
							<div class="motai7">
								<ul>
									商品评价<br />
									<img src="img/m2.png" alt="" />
								</ul>
								<ul>
									<li>
										分享小清新 ；<span>3条 |</span> 用户评价 ；<span>3条 |</span>
									</li>
									<li>小绿瓶</li>
									<li>小绿瓶</li>
									<li>小绿瓶</li>
								</ul>
							</div>
							<div class="motai8">
								<c:if test="${not empty giveproduct}">
									+赠品
									<p><img src="img/f1-3.png" alt="" />X${giveproduct.num}</p>
									<p>${giveproduct.name}</p>
								</c:if>


							</div>
						</div>

					</div>

				</div>
				<div class="gation2">
					<p>请登录网站来查看您所有的优惠券和其他优惠内容。</p>
					<p><button type="button">登录</button></p>
				</div>
				<div class="gation3">
					<p>商品信息</p>
					<table width="1000px" border="" cellspacing="" cellpadding="">

						<tr>
							<td>商品名称</td>
							<td>${product.name}</td>
							<td>类型</td>
							<td>精华液</td>
						</tr>
						<tr>
							<td>适用肤质</td>
							<td>${detailedproduct.skin}</td>
							<td>容量</td>
							<td>80ml</td>
						</tr>
						<tr>
							<td>适用部位</td>
							<td></td>
							<td>主要功效</td>
							<td>${product.effect}</td>
						</tr>
						<tr>
							<td>使用注意事项</td>
						</tr>
						<tr>
							<td>产品成分</td>
							<td colspan="3">${detailedproduct.component}</td>
						</tr>

					</table>
				</div>

				<div class="gation4">
					<div class="gation5">
						<p class="particulars">商品详情</p>
						<p class="share">分享小清新</p>
						<p class="evaluate">用户评价</p>
						<p class="purchase">结算/购买注意事项</p>
					</div>
					<div class="gation6">
						<img src="${detailedproduct.img}" />
					</div>
					<div class="gation7">
						<div class="col-md-12 icheck baoge">
							<div class="col-md-1">
								No
							</div>
							<div class="col-md-5">
								商品评价
							</div>
							<div class="col-md-2">
								作者
							</div>
							<div class="col-md-2">
								登录日期
							</div>
							<div class="col-md-2">
								商品满意度
							</div>
						</div>

						<div class="col-md-12 icheck baoge">
							<div class="col-md-1">
								No
							</div>
							<div class="col-md-5">
								商品评价
							</div>
							<div class="col-md-2">
								作者
							</div>
							<div class="col-md-2">
								登录日期
							</div>
							<div class="col-md-2">
								商品满意度
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
<!--icheck -->
<script type="text/javascript" src="js/iCheck/jquery.icheck.js"></script>
<script type="text/javascript" src="js/icheck-init.js"></script>
<script type="text/javascript" src="js/zoomio.js"></script>
<script src="js/Allgoods.js"></script>
<script type="text/javascript">
	$(function() {
        shoppingAll()
		$(".sampleimage").zoomio()

		$(".img1").mouseover(function() {
			$(this).css("border-bottom", "3px solid green");

		}).mouseleave(function() {
			$(this).css("border-bottom", "0px solid green");

		})
		$(".gation7").hide()
		$(".evaluate").click(function() {
			$(".gation7").show()
			$(".gation6").hide()
		})
		$(".particulars").click(function() {
			$(".gation7").hide()
			$(".gation6").show()
		})
        $(".guo1").click(function(){
            var ck=confirm("您还没有登录，是否登录")
            if(ck){
                window.location.href="login.jsp"
            }
        })
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