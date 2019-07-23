<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	List nlist=new ArrayList();
	nlist.add("<img src='img/no1.png' width='35'/>");
	nlist.add("<img src='img/no2.png' width='35'/>");
	nlist.add("<img src='img/no3.png' width='35'/>");
	nlist.add("<img src='img/no4.png' width='35'/>");
	nlist.add("<img src='img/no5.png' width='35'/>");
	nlist.add("<img src='img/no6.png' width='35'/>");
	request.setAttribute("nlist",nlist);
%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
		<title>悦诗风吟官方网站</title>

		<!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="css1/index.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
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
		</style>
	</head>

	<body>

		<div class="top2 navbar-fixed-top">
			<div class="nav">
				<div class="" id="menu"><a href="javascript:void(0)">购物12454</a></div>
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
					<span style="margin-left: -150px;">欢迎 ；${userinfo.userName} </span>  <a href="removeSession" style="margin-left: 55px">退出</a>
					<span class="suo"><img src="img/search.png" width="45"/><img src="img/searchd.png" width="45"/></span>
					<a href="javascript:void(0)" <%--onclick="shoppingAll()"--%>><span class="guo"><img src="img/cart.png" width="45" /><img src="img/g2.png" width="45"/><p class="shuz1">${Onenum}</p></span></a>
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
				AGFWQFWQ
			</div>
			<div id="list2" style="width: 100%;border: 1px solid red; ">
				<div class="search text-center">
					<form action="" method="post">
						<input type="text" name="" id="" placeholder="小绿瓶" />
						<button type="submit">搜索&nbsp;<img src="img/go.png" alt="" width="30"/></button>
					</form>
				</div>
			</div><%----%>
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
					<p><img src="img/close.png" width="30 "></p>
					<p class="shuz"></p>
				</div>
				<div class="trolley1">

				</div>
					<div class="close1">
						<p class="sum">总计/￥<span class="sums">${sum}</span></p>
						<span class="qinkon">清空</span><a href="javascript:void(0)" class="js1"><span class="jiesuan">结算 <img src="img/go.png" alt="" width="30"/></span></a>
					</div>
				
				
			</div>
		</div>
		<div class="list4" style="margin-top: 80px;">

			<div class=" top3 ">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- 图片容器 -->
					<div class="carousel-inner">
						<div class="item active">
							<a href="productDetails?pid=62"><img src="img/1.png" alt="..."></a>
							<div class=" " style="width: 100%;height: 200px;background-color: #DFD9C0;">
								<div class="col-lg-7 col-lg-push-2">
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: white;">
										年中大促
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: white;">
										优惠巨献
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: white;">
										你想要的
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: white;">
										都在这里
									</div>
								</div>
								<div class="col-lg-4 navbar-btn">

									<div class="col-lg-7">
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7">
										<a href="productDetails?pid=62">
											<div class="col-lg-5 text-center" style="height: 80px; width: 300px;border: 2px solid white;font: normal 20px/80px '微软雅黑';">查看详情&nbsp; &nbsp;<img src="img/go.png" width="45"></div>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<a href="productDetails?pid=75"><img src="img/101.jpg" alt="..."></a>
							<div class=" " style="width: 100%;height: 200px;background-color: #411A09;">
								<div class="col-lg-7 col-lg-push-2">
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: white;">
										绵密幕斯
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: white;">
										贴合毛孔
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: white;">
										2X洁净
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: white;">
										全新升级
									</div>
								</div>
								<div class="col-lg-4 navbar-btn">
									<div class="col-lg-7">
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7">
										<a href="productDetails?pid=75">
											<div class="col-lg-5 text-center" style="height: 80px; width: 300px;border: 2px solid white;font: normal 20px/80px '微软雅黑';">查看详情&nbsp; &nbsp;<img src="img/go.png" width="45"></div>
										</a>
									</div>

								</div>
							</div>
						</div>
						<div class="item">
							<a href="productDetails?pid=53"><img src="img/102.jpg" alt="..."></a>
							<div class=" " style="width: 100%;height: 200px;background-color: #E2E3E5;">
								<div class="col-lg-7 col-lg-push-2">
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: white;">
										细致毛孔
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: white;">
										告别 "孔" 慌
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: white;">
										为亚洲女性定制精华
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: white;">
										解决毛孔粗大问题
									</div>
								</div>
								<div class="col-lg-4 navbar-btn">
									<div class="col-lg-7">
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7">
										<a href="#">
											<div class="col-lg-5 text-center" style="height: 80px; width: 300px;border: 2px solid white;font: normal 20px/80px '微软雅黑';">查看详情&nbsp; &nbsp;<img src="img/go.png" width="45"></div>
										</a>
									</div>
								</div>
							</div>

						</div>

						<div class="item">
							<a href="productDetails?pid=37"><img src="img/103.jpg" alt="..."></a>
							<div class=" " style="width: 100%;height: 200px;background-color: #DED7A9;">
								<div class="col-lg-7 col-lg-push-2">
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: white;">
										innisfree遇见BT21
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: white;">
										火山面膜限量款
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: white;">
										毛孔护卫队
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: white;">
										为你的肌肤洁净一整天
									</div>
								</div>
								<div class="col-lg-4 navbar-btn">
									<div class="col-lg-7">
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7">
										<a href="#">
											<div class="col-lg-5 text-center" style="height: 80px; width: 300px;border: 2px solid white;font: normal 20px/80px '微软雅黑';">查看详情 &nbsp; &nbsp;<img src="img/go.png" width="45"></div>
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="item">
							<a href="http://148.70.184.93:8080/userInfoweb/action2"><img src="img/104.png" alt="..."></a>
							<div class=" " style="width: 100%;height: 200px;background-color: #00BEF2;">
								<div class="col-lg-7 col-lg-push-2">
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: black;">
										color summer
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7" style="font: bold 40px/30px '微软雅黑';color: black;">
										缤纷夏日
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: black;">
										夏日必备
									</div>
									<div class="col-lg-7" style="font: normal 15px/30px '微软雅黑';color: black;">
										不容错过
									</div>
								</div>
								<div class="col-lg-4 navbar-btn">
									<div class="col-lg-7">
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
										<li data-target=""></li>
									</div>
									<div class="col-lg-7">
										&nbsp;
									</div>
									<div class="col-lg-7">
										<a href="#">
											<div class="col-lg-5 text-center" style="height: 80px; width: 300px;border: 1px solid red;font: normal 20px/80px '微软雅黑';">查看详情&nbsp; &nbsp;<img src="img/go.png" width="45"></div>
										</a>
									</div>
								</div>
							</div>

						</div>

					</div>

					<!--圆圈指示符-->

					<!-- 左右控制按钮 -->
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>
			<div class=" text-center middle">
				<p class="">
					<button type="button" class="best" name="best1">新品推荐</button>
					<button type="button" class="" name="best">畅销产品</button>
				</p>

				<div class=" middle1">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner" style="width: 380px;">
							<ol class="carousel-indicators ">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>
							<div class="item active">
								<img src="img/prd01.png" width="380">
								<div class="carousel-caption ">
								</div>
							</div>
							<div class="item">
								<img src="img/prd02.png" width="380">
								<div class="carousel-caption">

								</div>
							</div>
							<div class="item">
								<img src="img/prd03.png" width="380">
								<div class="carousel-caption">

								</div>
							</div>

						</div>

						<!--圆圈指示符-->

						<div class="denglu">
							<div class="for" style="">
								<div class="">
									<hr style="width: 90px;" />
								</div>
								<div class="for1" style="width: 90px;">
									FOR YOU
								</div>
								<div class="">
									<hr style="width: 90px;" />
								</div>
							</div>
							<div class="" style="margin-top: 30px;color: white;padding: 20px;">
								<div class="text-center">
									登录查看为您推荐的商品
								</div>
								<div class="">
									<a href="#">
										<div class="denglu1 ">登录&nbsp; &nbsp;<img src="img/go.png" width="45"></div>
									</a>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="middle2">
					<div class="xp">
						<c:forEach items="${newlist}" var="n" varStatus="nl">
							<div class=" middleOne">
								<div class="middleOne1">
									<p>${nlist.get(nl.index)}</p>
									<p>
										<a href="productDetails?pid=${n.pid}"><img src="${n.productImg}" width="200" /></a>
									</p>
									<p>
											${n.name}
									<hr />
									</p>

									<p>￥${n.price}</p>
								</div>
								<input type="hidden" value="${n.pid}" name="id"/>
								<div class="guomai1">
									<a href="inOrderqian?pid=${n.pid}">
									<p class="guomai">
										&nbsp;&nbsp;&nbsp;&nbsp;立即购买&nbsp; &nbsp;<img src="img/go.png" width="30" />
									</p></a>
									<p><img src="img/addCart.png" width="45" />
										<img src="img/addLike.png" width="45" /></p>
								</div>
							</div>
						</c:forEach>
				    </div>
				<div class="cx">
					<c:forEach items="${moerlist}" var="n" varStatus="nl">
						<div class=" middleOne">
							<div class="middleOne1">
								<p>${nlist.get(nl.index)}</p>
								<p>
									<a href="productDetails?pid=${n.pid}"><img src="${n.productImg}" width="200" /></a>
								</p>
								<p>
										${n.name}
								<hr />
								</p>

								<p>￥${n.price}</p>
							</div>
							<input type="hidden" value="${n.pid}" name="id"/>
							<div class="guomai1">
								<a href="inOrderqian?pid=${n.pid}">
								<p class="guomai">
									&nbsp;&nbsp;&nbsp;&nbsp;立即购买&nbsp; &nbsp;<img src="img/go.png" width="30" />
								</p></a>
								<p><img src="img/addCart.png" width="45" />
									<img src="img/addLike.png" width="45" /></p>
							</div>
						</div>
					</c:forEach>
				</div>
				</div>

				<div class="chanxiao">
					<hr style="border: 1px solid black;" />
					<a href="#">
						<div class="chanxiao1">
							更多畅销&nbsp; &nbsp;<img src="img/more.png" />
						</div>
					</a>
				</div>

			</div>

			<div class=" bottom">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- 图片容器 -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="active1">
								<div class=" ">
									<img src="img/y1.jpg" width="440">

								</div>
								<div class="active2">
									<img src="img/y2.jpg" width="440">
								</div>
								<div class="active2">
									<img src="img/y3.jpg" width="440">
								</div>
							</div>

						</div>
						<div class="item">
							<div class="active1">
								<div class="">
									<img src="img/y4.jpg" width="440">
								</div>
								<div class="active2">
									<img src="img/y5.jpg" width="440">
								</div>
								<div class="active2">
									<img src="img/y6.png" width="440">
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
			<div class="video1">
				<video width="1350" height="" controls>
					<source src="video/video_2019-05-31.mp4" type="video/mp4">
				</video>
			</div>

			<div class=" bottom2">
				<div class="">
					<img src="img/q1.png" width="650" />
				</div>

				<div class="">
					<img src="img/q2.png" width="660" />
					<p><img src="img/q3.jpg" width="660" /></p>
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
		</div>
		<div id="list3" class="">
		</div>

		<div id="mymodal" class="modal fade"><!-- modal固定布局，上下左右都是0表示充满全屏，支持移动设备上使用触摸方式进行滚动。。-->
			<div class="modal-dialog"><!-- modal-dialog默认相对定位，自适应宽度，大于768px时宽度600，居中-->
				<div class="modal-content"><!-- modal-content模态框的边框、边距、背景色、阴影效果。-->
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">我是标题</h4>
					</div>
					<div class="media-body">
						<p class="rein">  </p>
					</div>
					<div class="modal-footer">
						<button class="btn btn-default" data-dismiss="modal">关闭</button>
						<button class="btn btn-primary queding" data-dismiss="modal">确定</button>
					</div>
				</div>
			</div>

		</div>
		<div class="clear"></div>
		
	</body>

</html>
<!-- 如果要使用Bootstrap的JS插件，必须引入jQuery -->
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/Allgoods.js"></script>
<script type="text/javascript">
			$(function() {
						//tk()
                        shoppingAll()
						$("[name='img1']").click(function() {
						tk()
						})
						$('.carousel').carousel({
						interval: 2000
						})
						$(".cx").hide()
						$("[name='best1']").click(function() {
						//alert(1)
						$(this).addClass("bes")
						$("[name='best']").removeClass("bes")
						$(".xp").show()
						$(".cx").hide()
						})
						$("[name='best']").click(function() {
						//alert(1)
						$(this).addClass("bes")
						$("[name='best1']").removeClass("bes")
						$("[name='best1']").removeClass("best")
						$(".cx").show()
						$(".xp").hide()
						})
						$(".guo1").click(function(){
                            $(".rein").text("")
                            $(".rein").text("您还没有登录，是否登录")
                            $('.modal').modal();
                            $(".queding").click(function(){
                                window.location.href = "login.jsp"
                              /*  http://148.70.184.93:8080/userInfoweb/login.jsp*/
                            })

						})
						$(".js1").click(function () {
						    alert(1)
							var aa=$(".shuz").text();
							var aa1=parseInt(aa);
							alert(aa1)
                            alert(aa)
							if(aa1!=0) {
                                window.location.href = 'shoppingCartqian';
                            }
                            if(aa1==0){
                                $(".rein").text("")
                                $(".rein").text("购物车还没有产品")
                                $('.modal').modal();
							}
                        })
						})
            //查购物车
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
                        if(data==true){
                            shoppingAll()
                        }
                    }
                })
                })
            }
            //增加购物车单个产品数量
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
                            $(".sum").append('总计/￥<span class="sums">'+sum+'</span>');
                        }
                    }
                })
            }
            //减少购物车单个产品数量
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
                            $(".sum").append('总计/￥<span class="sums">'+sum+'</span>');
						}

                    }
                })
            }

</script>