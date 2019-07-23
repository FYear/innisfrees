<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
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
				top: 10px;
				left: 50px;
				
			}
			.jia{
				position: relative;
				top: 10px;
				left: 100px;
			}
			
			.jian{
				position: relative;
				top: 10px;
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
				width: 200px;
				height: 60px;
			}
		</style>
		
	</head>
	<body>
		<div class="main">
		<c:forEach items="${productlists}" var="p" varStatus="n">
		<div class="shopping">
			<p style="margin-top: -5px;margin-left: -10px;">
				<img src="${p.productImg}" width="130"/>
			</p>
			<p>
				<span class="names">
						${p.name}
				</span><br />
				<span class="jisuan">
					<a href="javascript:void(0)"><span class="jian">-</span></a>
					<span class="num">
							${numlist.get(n.index)}
					</span>
					<a href="javascript:void(0)">
						<span class="jia">+</span>
					</a>
					<input type="hidden" value="${p.pid}">
				</span>
			</p>
			<p>
				<span style="margin-left: 20px;"><img src="img/delete.png" alt="" width="10"/></span><br />
				<span class="jiage">
						${p.price}
				</span>
			</p>
		</div>
		<div class="clear">
			
		</div>
		</c:forEach>
		</div>
	</body>
</html>
<script src="js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function(){
		
		$(".jia").click(function(){
			var aa=$(this).parent().prev().text();
			var aa1=parseInt(aa);
			var aa2=aa1+1
			$(this).parent().prev().text(aa2)
			var id=$(this).parent().next().val();
			$.ajax({
				type:'POST',
				url:'numberAdd',
				data:{'num':aa2,'pid':id},
                async:false,
                dataType:'json',
                success:function(data){
				    alert(data)
				}
			})
		})
		$(".jian").click(function(){
			var aa=$(this).parent().next().text();
			var aa1=parseInt(aa);
            var aa2=0;
			if(aa1==1){
				 aa2=1
			}else{
				 aa2=aa1-1
			}
            var id=$(this).parent().next().next().next().val();
			$(this).parent().next().text(aa2)
            $.ajax({
                type:'POST',
                url:'numberAdd',
                data:{'num':aa2,'pid':id},
                async:false,
                dataType:'json',
                success:function(data){
                    alert(data)

                }
            })
		})
	})
</script>
