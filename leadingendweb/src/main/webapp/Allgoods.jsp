<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	List nlist=new ArrayList();
	List nlist1=new ArrayList();
	nlist.add("<img src='img/e1.png' width='35'/>");
	nlist.add("<img src='img/e2.png' width='35'/>");
	nlist.add("<img src='img/e3.png' width='35'/>");
	nlist1.add("<img src='img/e4.png' width='35'/>");
	nlist1.add("<img src='img/e5.png' width='35'/>");
	request.setAttribute("nlist",nlist);
	request.setAttribute("nlist1",nlist1);
%>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>悦诗风吟官方网站</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css1/Allgoods.css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="css/themes/icon.css">
    <link href="js/iCheck/skins/flat/grey.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-fileupload.min.css" />

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
					 <a href="javascript:void(0)"<%--onclick=" shoppingAll()"--%>><span class="guo"><img src="img/cart.png" width="45" /><img src="img/g2.png" width="45"/><p class="shuz1">${Onenum}</p></span></a>
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
	 	<div class="fnav1">

	 	</div>
	 	<div class="fnav2">
	 		<div class="gation">
	 			<span class="glyphicon glyphicon-home">HOME></span>
	 			<a href=""><span>商城 ></span></a>
	 			<a href=""><span>产品类别 ></span></a>

					<a href="" class="yi">
					<c:if test="${not empty product_relation1}">
						<span>${product_relation1.name} ></span>
					</c:if>
				</a>
				<a href="" class="er"><span> </span></a>
	 		</div>
	 		<div class="gation1">
	 			<h2>产品类别</h2>
	 			<p>
	 				按产品类别查看悦诗风吟的商品
	 				<span><img src="img/q1.gif"/>
	 				<img src="img/q2.gif"/>
	 				<img src="img/q3.gif"/></span>
	 			</p>
	 		</div>
	 		<div class="gation2">
				<c:forEach items="${obj2}" var="n">
	 			<a href="productAll?parentid=${n.productRelationId}">
	 			<div class="img1">
	 				<img src="${n.img}"/>
	 				<p>${n.name}</p>
	 			</div>
	 			</a>
					<input type="hidden" value="${n.productRelationId}">
				</c:forEach>
	 		</div>
	 		<div class="sa">
				<p style="width:${bf}%;">查看全部</p>
				<c:forEach items="${pblist2}" var="b">

					<p style="width:${bf}%;;">
						<a href="javascript:void(0)" onclick="erji(${b.productRelationId})" style="color: black;" >
							${b.name}
						</a>
						<input type="hidden" value="${b.productRelationId}">
					</p>

				</c:forEach>
	 		</div>
	 		<div class="gation3">
	 			<div class="lunbo">
					<div class="">
					<span class="zuo">
	 				<img src="img/q5.gif" alt="" />
	 				<a href="javascript:void(0)" class="dj"><img src="img/w9.gif"/></a>
	 				</span>
					</div>
	 				<div class="lunbo1">
						<c:forEach items="${productList1}" var="p" varStatus="n">
						<a href="productDetails?pid=${p.pid}">
							<div class="cx">
								${nlist.get(n.index)}
								<img src="${p.productImg}" width="140" style="margin-left: 10px"/>
								<p>${p.name}</p>
								<span>￥${p.price}</span>
							</div>
						</a>
						</c:forEach>
						<c:if test="${not empty productList2}">
                       <c:forEach items="${productList2}" var="p" varStatus="n">
						<a href="productDetails?pid=${p.pid}">
							<div class="cx1">
								${nlist1.get(n.index)}
								<img src="${p.productImg}" width="140" style="margin-left: 10px"/>
								<p>${p.name}</p>
								<span>￥${p.price}</span>
							</div>
						</a>
					   </c:forEach>
						</c:if>
	 				</div>
	 				<span class="you">
	 				<a href="javascript:void(0)" class="dj1"><img src="img/w8.gif"/></a>
	 				</span>
	 			</div>
	 			<div class="lunbo2">
	 				<p><img src="img/w14.gif"/></p>
	 				<p><img src="img/w11.gif"/></p>
	 				<p><img src="img/w10.gif"/></p>
	 				<p><img src="img/w13.gif"/></p>
	 			</div>
	 			
	 		</div>
			<form class="form-horizontal bucket-form" action="Condition" method="post">
	 		<div class="gation4">
	 			<div class="effect">
	 				功效
	 			</div>
	 			<div class="effect1">
                    <div class="form-group">	
	 				<div class="col-sm-12 icheck ">
                       <div class="flat-grey single-row">
                           <div class="radio ">
                           <input type="checkbox" name="effect" value="补水保湿">
                           <label>补水保湿 </label>
                           </div>
                       </div>
                        <div class="flat-grey single-row">
                            <div class="radio ">
                            <input type="checkbox" name="effect" value="毛孔管理">
                            <label>毛孔管理 </label>
                             </div>
                        </div>
                        <div class="flat-grey single-row">
                             <div class="radio ">
                             <input type="checkbox" name="effect" value="舒缓修护">
                             <label>舒缓修护 </label>
                             </div>
                        </div>
                        <div class="flat-grey single-row">
                             <div class="radio ">
                             <input type="checkbox" name="effect" value="美白提亮">
                             <label>美白提亮 </label>
                             </div>
                         </div>
                         <div class="flat-grey single-row">
                             <div class="radio ">
                             <input type="checkbox" name="effect" value="关泽滋润">
                             <label>关泽滋润 </label>
                             </div>
                         </div>
                         <div class="flat-grey single-row">
                             <div class="radio ">
                             <input type="checkbox" name="effect" value="弹性紧致">
                             <label>弹性紧致 </label>
                             </div>
                         </div>
                         <div class="flat-grey single-row">
                             <div class="radio ">
                             <input type="checkbox" name="effect" value="改善肤质">
                             <label>改善肤质 </label>
                             </div>
                         </div>
                         <div class="flat-grey single-row">
                             <div class="radio ">
                             <input type="checkbox" name="effect" value="美白遮瑕">
                             <label>美白遮瑕 </label>
                             </div>
							 <input type="hidden" name="effect" value="0">
							 <input type="hidden" name="skincare" value="0">
                         </div>
                    </div>
                    </div>
	 	    </div>
	 		</div>
	 		<div class="gation5">
	 			<div class="raw">
	 				原料
	 			</div>
	 			<div class="raw1">
                    <div class="form-group">	
	 				<div class="col-sm-12 icheck ">
                      <c:forEach items="${sklsit}" var="s" >
                         <div class="flat-grey single-row">
                             <div class="radio ">
                             <input type="checkbox" value="${s.skincareProductId}" name="skincare" >
                             <label>${s.name}</label>
                             </div>
                         </div>
					  </c:forEach>
                    </div>
                    </div>
	 	    </div>
	 		</div>
	 		<p style="text-align: right"><button type="submit">按条件搜索</button><button class="buttonclean" type="button">清除搜索内容</button></p>
			</form>
			<div class="gation6">
					<form class="form-horizontal" role="form">
				         <p>在结果内查找</p>
				         <p><input type="text" class="form-control" name="In_result"></p>
				         <p><input eqtype="button" type="button" class="form-control" onclick="search()" value="搜索" ></p>
				   </form>
				   <div class="products">
					   <p onclick="Latestdata()">按最新数据排列</p>
					   <p onclick="Popularity()">按人气排列</p>
					   <p onclick="">按用户评价次数排列</p>
					   <p onclick="jiageGao()">价格从高到低</p>
					   <p onclick="jiageDi()">价格从低到高</p>
					   <p onclick="Discount()">按优惠排列</p>
				   </div>
				   <div class="products1">
					   <c:forEach items="${productList}" var="p">
					   	<div class="">
					   		<div>

					   			<a href="productDetails?pid=${p.pid}"><dl><img src="${p.productImg}" width="150"/></dl></a>
					   			
					   			<p class="preview" onclick="previews(${p.pid})">
					   				<img src="img/s1.jpg"/><br />
					   				预览
					   			</p>
					   			
					   			<a href="" >
					   			<p style="margin-left: 2px;">
					   				<img src="img/s2.jpg"/><br />
					   				收藏夹
					   			</p>
					   			</a>
					   			<a href="" >
					   			<p style="margin-left: 3px;">
					   				<img src="img/s3.jpg"/><br />
					   				购物车
					   			</p>
					   			</a>
					   		</div>
					   		<li class="xinxi">
					   			${p.name}<br />
					   			<span>
									￥${p.price}
									<span style="background-color: red;color: white">
									<c:if test="${p.state==0}">
										暂无库存
									</c:if>
									</span>
								</span>
					   		</li>
					   	</div>
					   </c:forEach>
				   </div>
				<hr/>
				<div class="" style="width: 1000px">
				<ul class="pager">
					<span class="page"><input type="hidden" name="pagenum" value="1"/></span>
					<li >
						<a href="javascript:void(0)" onclick="PreviousPage()">上一页</a>
					</li>
					<li >
						<a href="javascript:void(0)" onclick="NextPage()">下一页</a>
					</li>
				</ul>
				</div>
	 		</div>

	 	</div>
	 	<div class="fnav3">
	 		
	 	</div>
	 </div>
	 
	 
	 
	 <div class=" bottom3">
		<div class="" style="margin-left: 60px;">
				<p><img src="img/logo.png"/></p>
				<p><img src="img/w1.png" width="50"/>
				<img src="img/w4.png" width="50"/>
				<img src="img/shop.png"width="70"/>
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
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<!--icheck -->
<script src="js/iCheck/jquery.icheck.js"></script>
<script src="js/Allgoods.js"></script>
<script src="js/icheck-init.js"></script>
<script type="text/javascript">
	//alert(11)
			var aa2=0;
			var number=1;
            var user = '${userinfo.userName}';
		$(function () {

			productInfo()
            $(".products p").click(function(){
                $(".products p").css("background-color","#F6F6F6")
                $(".products p").css("color","black")
                $(this).css("background-color","#808080")
                $(this).css("color","white")
            })
			/*window.setInterval(sums,1000)*/
		      $(".cx1").hide()
			  $(".dj1").click(function(){
			    	$(".cx1").show()
			        $(".cx").hide()
			    })
			  $(".dj").click(function(){
			           	$(".cx").show()
			           	$(".cx1").hide()
			           })
            $(".guo1").click(function(){
                $(".rein").text("")
                $(".rein").text("是否登录")
                $('.modal').modal();
                $(".queding").click(function(){
                    window.location.href = "login.jsp"
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
            shoppingAll()
			});
			//分页 下一页
		function NextPage() {
                var pageNum=$("[name='pagenum']").val();
                var size=15;
			  //  alert(1)
               // alert(pageNum)
				$.ajax({
                    type:'POST',
                    url:'ajaxPageNxet',
                    data:{'num':pageNum,'size':size},
                    async:false,
                    dataType:'json',
                    success:function(data) {
					    //alert(data)
						if(data!=''){
                            $(".products1,.page").empty();
                            $.each(data.productList,function(i,n){
                                if(n.state==0){
                                    var aa='<div class="">'
                                    aa+='<div>'
                                    aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                    aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                    aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                    aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                    aa+='</div>'
                                    aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                                    aa+='</div>'
                                    $(".products1").append(aa);
                                }else{
                                    var aa='<div class="">'
                                    aa+='<div>'
                                    aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                    aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                    aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                    aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                    aa+='</div>'
                                    aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                                    aa+='</div>'
                                    $(".products1").append(aa);
                                }
                            })
							$(".page").append('<input type="hidden" name="pagenum" value="'+data.num+'"/>')
						}
					}
				})
            }
            //分页 上一页
        function PreviousPage() {
                var pageNum=$("[name='pagenum']").val();
                var size=15;
                //  alert(1)
                 //alert(pageNum)
                $.ajax({
                    type:'POST',
                    url:'ajaxPagePrevious',
                    data:{'num':pageNum,'size':size},
                    async:false,
                    dataType:'json',
                    success:function(data) {
                        //alert(data)
                        if(data!=''){
                            $(".products1,.page").empty();
                            $.each(data.productList,function(i,n){
                                if(n.state==0){
                                    var aa='<div class="">'
                                    aa+='<div>'
                                    aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                    aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                    aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                    aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                    aa+='</div>'
                                    aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                                    aa+='</div>'
                                    $(".products1").append(aa);
                                }else{
                                    var aa='<div class="">'
                                    aa+='<div>'
                                    aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                    aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                    aa+='<a href=""><p class="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                    aa+='<a href=""><p class="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                    aa+='</div>'
                                    aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                                    aa+='</div>'
                                    $(".products1").append(aa);
                                }
                            })
                            $(".page").append('<input type="hidden" name="pagenum" value="'+data.num+'"/>')
                        }
                    }
                })
            }
		//按条件查询
		function search() {
			var name=$("[name='In_result']").val()
			$.ajax({
                type:'POST',
                url:'searchProduct',
                data:{'name':name},
                async:false,
                dataType:'json',
                success:function(data) {
                    //alert(data)
                    $(".products1,.page").empty();
                    $.each(data,function(i,n){
                        if(n.state==0){
                            var aa='<div class="">'
                            aa+='<div>'
                            aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                            aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                            aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                            aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                            aa+='</div>'
                            aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                            aa+='</div>'
                            $(".products1").append(aa);
                        }else{
                            var aa='<div class="">'
                            aa+='<div>'
                            aa+='<a href="productDetails?pid=\'+n.pid+\'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                            aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                            aa+='<a href=""><p class="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                            aa+='<a href=""><p class="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                            aa+='</div>'
                            aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                            aa+='</div>'
                            $(".products1").append(aa);
                        }
                    })
                    $(".page").append('<input type="hidden" name="pagenum" value="'+1+'"/>')
				}
			})
        }
        function Latestdata() {
                alert(1)
                $.ajax({
                    type:'POST',
                    url:'Latestdata',
                    data:{'parentid':1},
                    async:false,
                    dataType:'json',
                    success:function(data) {
                        $(".products1,.page").empty();
                        $.each(data,function(i,n){
                            if(n.state==0){
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }else{
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }
                        })
                        $(".page").append('<input type="hidden" name="pagenum" value="'+1+'"/>')
                    }
                })
            }
        //按最新数据排列
        function Discount() {
                alert(1)
                $.ajax({
                    type:'POST',
                    url:'Discount',
                    data:{'parentid':1},
                    async:false,
                    dataType:'json',
                    success:function(data) {
                        $(".products1,.page").empty();
                        $.each(data,function(i,n){
                            if(n.state==0){
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }else{
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }
                        })
                        $(".page").append('<input type="hidden" name="pagenum" value="'+1+'"/>')
                    }
                })
            }
        //按人气排列
		function Popularity() {
                alert(1)
                $.ajax({
                    type:'POST',
                    url:'Popularity',
                    data:{'parentid':1},
                    async:false,
                    dataType:'json',
                    success:function(data) {
                        $(".products1,.page").empty();
                        $.each(data,function(i,n){
                            if(n.state==0){
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }else{
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }
                        })
                        $(".page").append('<input type="hidden" name="pagenum" value="'+1+'"/>')
                    }
                })
            }
        //价格由高到底
        function jiageGao() {
                alert(1)
                $.ajax({
                    type:'POST',
                    url:'jiageGao',
                    data:{'parentid':1},
                    async:false,
                    dataType:'json',
                    success:function(data) {
                        $(".products1,.page").empty();
                        $.each(data,function(i,n){
                            if(n.state==0){
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }else{
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }
                        })
                        $(".page").append('<input type="hidden" name="pagenum" value="'+1+'"/>')
                    }
                })
            }
		//价格由低到高
		function jiageDi() {
			    alert(1)
                $.ajax({
                    type:'POST',
                    url:'jiageDi',
                    data:{'parentid':1},
                    async:false,
                    dataType:'json',
                    success:function(data) {
                        $(".products1,.page").empty();
                        $.each(data,function(i,n){
                            if(n.state==0){
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }else{
                                var aa='<div class="">'
                                aa+='<div>'
                                aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                aa+='</div>'
                                aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                                aa+='</div>'
                                $(".products1").append(aa);
                            }
                        })
                        $(".page").append('<input type="hidden" name="pagenum" value="'+1+'"/>')
                    }
                })
            }

		function dels() {
            $(".motai1").hide()
            $(".price").text("");
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
        //产品预览
		function previews(productid) {
                $.ajax({
                    type:'POST',
                    url:'producrOnes',
                    data:{'productid':productid},
                    async:false,
                    dataType:'json',
                    success:function(data){
                        //alert(data)
                        $.each(data,function(i,n){
                            var aa='<div class="motai1" >'
                            aa+='<p>innisfree 商品预览</p><span class="del" onclick="dels()"><img src="img/btn_close.png"/></span>'
                            aa+='<div class="motai2"><p >'+n.name+' <span>'+n.volume+'</span></p><div class="motai3"><div>'
                            aa+='<p><img src="'+n.productImg+'"/></p><p><a href="productDetails?pid='+n.pid+'"><button type="button">查看详情</button></a></p>'
                            aa+='</div>'
                            aa+='<div class="motai4"><p style="overflow: hidden;">'+n.title+'</p>'
                            aa+='<li><p>状态</p><p>'+n.state1+'</p></li>'
                            aa+='<li><p style="font: bold 13px/20px \'微软雅黑\';">优惠价</p><p style="color: red;font: bold 20px/20px \'微软雅黑\';">￥'+n.price+'</p></li>'
                            aa+='<li><p>其他选项</p><p>无</p></li>'
                            aa+='<li><p>购买数量</p><p><input type="number" id="payCount_Max" name="number" value="1" onclick="prices(this.value)"/></p></li>'
                            aa+='<div class="motai5">'
                            aa+='<li><p>总价</p><p>￥<span class="price">'+n.price+'</span></p></li>'
                            aa+=' </div>'
                            aa+='<div class="motai6">'
                            aa+='<p><img src="img/btn_buyNow.gif" alt="" onclick="buyImmediately('+n.pid+')"/></p>'
                            aa+='<p><img src="img/btn_shoppingCart.gif" alt=""  onclick="addShopping('+n.pid+')"/></p>'
                            aa+='<p><img src="img/btn_wish.gif" alt=""  onclick="addFavorites('+n.pid+')"/></p>'
                            aa+='</div></div></div></div></div>'
                            $(".fnav2").append(aa)
                        })
                        aa2= $(".price").text();
                    }
                })
		}
		//立即购买
        function buyImmediately(id) {
            if(user==true){
                $(".rein").text("")
                $(".rein").text("您还没有登录，是否登录")
                $('.modal').modal();
                	$(".queding").click(function(){
                        window.location.href = "login.jsp"
					})
            }
            if(user!=true){
			window.location.href='inOrderqian?pid='+id;
			}
		}
		//加入购物车
	    function addShopping(id) {
            if(user==''){
                $(".rein").text("")
                $(".rein").text("您还没有登录，是否登录")
                $('.modal').modal();
                $(".queding").click(function(){
                    window.location.href = "login.jsp"
                })
            }
            if(user!=''){
                $.ajax({
                    type: 'POST',
                    url: 'AddShopping',
                    data: {'pid': id, 'num': number},
                    async: false,
                    dataType: 'json',
                    success: function (data) {
                        //alert(data)
                        if (data ==true) {
                            $(".rein").text("")
                            $(".rein").text("加入购物车成功")
                            $('.modal').modal();
                            shoppingAll()
                        }
                        if (data == false) {
                            $(".rein").text("")
                            $(".rein").text("已添加到购物车")
                            $('.modal').modal();
                            $(".motai1").hide()
                            $(".price").text("");
                        }
                    }
                })
            }
       }
       //加入收藏夹
        function addFavorites(id) {
            if(user==true){
                $(".rein").text("")
                $(".rein").text("您还没有登录，是否登录")
                $('.modal').modal();
                $(".queding").click(function(){
                    window.location.href = "login.jsp"
                })
            }
            if(user!=true){

            }
       }
       //查看产品二级分类
		function productInfo() {
			$(".img1").hover(function(){
				$(this).css("background-imges","5px solid green");
				var aa=$(this).parent().next().val();
				//alert(aa)
				$.ajax({
					type:'POST',
					url:'productAllajxa',
					data:{'parentid':aa},
					async:false,
					dataType:'json',
					success:function(data){
						//alert(data)
						$(".sa").empty();
						var node1=data.bf;
						var node2=data.pblist;
						var node3='<p style="width:'+node1+'%;">查看全部</p>'
						$(".sa").append(node3);
						$.each(node2,function(i,n){
							var node4='<p style="width:'+node1+'%;"><a href="javascript:void(0)" onclick="erji('+n.productRelationId+')" style="color: black;">'+n.name+'</a><input type="hidden" value="'+n.productRelationId+'></p>'
							$(".sa").append(node4);
						})
					}
				})
			},function(){
				$(this).css("border-bottom","0px solid green");
			})

			$(".sa").hover(function () {
				$(".sa").show();
			}, function () {

			})
		}
        //查看产品二级分类产品详情
		function erji(parentid) {
                    $.ajax({
                        type:'POST',
                        url:'productInfoajxa',
                        data:{'parentid':parentid},
                        async:false,
                        dataType:'json',
                        success:function(data){
                            //alert(data)
							var node1=data.productList;
                            var node2=data.product_relation1;
                            var node3=data.product_relation2;
                            $(".products1,.yi,.er").empty();
                            $.each(node1,function(i,n){
                                if(n.state==0){
                                    var aa='<div class="">'
                                    aa+='<div>'
                                    aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                    aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                    aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                    aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                    aa+='</div>'
                                    aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white">暂无库存</span></li>'
                                    aa+='</div>'
                                    $(".products1").append(aa);
								}else{
                                    var aa='<div class="">'
                                    aa+='<div>'
                                    aa+='<a href="productDetails?pid='+n.pid+'"><dl><img src="'+n.productImg+'" width="150"/></dl></a>'
                                    aa+='<p class="preview" onclick="previews('+n.pid+')"><img src="img/s1.jpg"/><br />预览</p>'
                                    aa+='<a href=""><p class="" style="margin-left: 2px;"><img src="img/s2.jpg"/><br />收藏夹</p></a>'
                                    aa+='<a href=""><p class="" style="margin-left: 3px;"><img src="img/s3.jpg"/><br />购物车</p></a>'
                                    aa+='</div>'
                                    aa+='<li class="xinxi">'+n.name+'<br /><span>￥'+n.price+'</span><span style="background-color: red;color: white"></span></li>'
                                    aa+='</div>'
                                    $(".products1").append(aa);
								}

                            })
                            $(".yi").append('<span>'+node2+' ></span>');
                            $(".er").append('<span>'+node3+' ></span>');
                        }

                    })
            }



</script>

