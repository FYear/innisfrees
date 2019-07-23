package com.action;


import com.alibaba.fastjson.JSON;
import com.alipay.api.domain.ManagerVO;
import com.entity.*;
import com.interceptor.Login;
import com.service.*;

import java.util.*;

import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import org.w3c.dom.html.HTMLTableCaptionElement;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpSession;

@Controller
public class inOrderAction {
	@Autowired
	IUser_infoService us;
	@Autowired
	IProductService ps;
	@Autowired
	IOrder1Service os;
	@Autowired
	IOrder_detailService od;
	@Autowired
	IProduct_relationService prs;
	@Autowired
	ISkincare_productService sps;
	@Autowired
	IDetailed_productService dps;
	@Autowired
	IGive_productService gps;
	@Autowired
	IShopping_cartService scs;
	@Autowired
	ICollection_productService cps;
	@Autowired
	IUser_addressService as;
	@RequestMapping("shoppingCartqian")
	public ModelAndView shoppingCartqian(ModelAndView mvo){
		
		Map<String,Object> mp=new HashMap<String, Object>();
		Map<String,Object> mp1=new HashMap<String, Object>();
		mp.put("uid", 1);
		User_info u=us.selectAllByIf(mp).get(0);
		List<Shopping_cart> sclist=scs.selectAllByIf(mp);
		List<Product> plist=new ArrayList<Product>();
		System.out.println("11111111111111111111111111111111111111111111");
		for(Shopping_cart sc:sclist){
			mp1.put("pid", sc.getPid());
			plist.add(ps.selectAllByIf(mp1).get(0));
			System.out.println("plist="+plist);
		}
		System.out.println("2222222222222222222222222222222222222222222222");
		System.out.println("plist="+plist);
		int num=0;
		for(Product p:plist){
			num+=p.getPrice();
		}
		List<Collection_product> cplist=cps.selectAllByIf(mp);
		mp.put("price", 50);
		List<Product> plistpp=ps.selectAllByIf(mp);
		
		List dou=new ArrayList();
		for(int i=0;i<plist.size();i++){
			dou.add(plist.get(i).getPrice()*sclist.get(i).getNum());
		}
		mvo.addObject("dou", dou);
		mvo.addObject("num", num);
		mvo.addObject("sclist", sclist);
		mvo.addObject("plist", plist);
		
		mvo.addObject("cplist", cplist);
		mvo.addObject("plistpp", plistpp);
		
		mvo.addObject("u", u);
		mvo.setViewName("shoppingCart");
		return mvo;
	}
	
	@RequestMapping("addShoppingla")
	public ModelAndView addShoppingla(ModelAndView mvo,String[] gg){
		
		for(int i=0;i<gg.length;i++){
			int pid=Integer.valueOf(gg[i]);
			Shopping_cart sc=new Shopping_cart();
			sc.setUid(1);
			sc.setPid(pid);
			int num=scs.insertSelective(sc);
			if(num>0){
				mvo.setViewName("redirect:shoppingCartqian");
			}
		}
		return mvo;
	}

	@RequestMapping(value="/shoppingCartlast",produces={"application/json;charset=UTF-8"})
	@ResponseBody
	public String shoppingCartlast(String uid)throws Exception{
		Map<String,Object> mp=new HashMap<String, Object>();
		Map<String,Object> mp1=new HashMap<String, Object>();
		mp.put("uid", Integer.valueOf(uid));
		List<Collection_product> cplist=cps.selectAllByIf(mp);
		System.out.println(cplist);
		List<Product> plist= new ArrayList<Product>();
		for(Collection_product cp:cplist){
			mp1.put("pid", cp.getPid());
			plist.add(ps.selectAllByIf(mp1).get(0));
		}

		String js=JSON.toJSONString(plist);
		System.out.println("js ="+js);
		return js;
	}

	@RequestMapping(value="/shoppingCartqian",produces={"application/json;charset=UTF-8"})
	@ResponseBody
	public String shoppingCartqian(String uid)throws Exception{
		Map<String,Object> mp=new HashMap<String, Object>();
		mp.put("price", 50);
		List<Product> plistpp=ps.selectAllByIf(mp);
		String js=JSON.toJSONString(plistpp);
		System.out.println("js ="+js);
		return js;
	}

	@RequestMapping(value="/addNum",produces={"application/json;charset=UTF-8"})
	@ResponseBody
	public String addNum(String scid,String number)throws Exception{
		Shopping_cart sc=new Shopping_cart();
		sc.setShoppingCartId(Integer.valueOf(scid));
		sc.setNum(Integer.valueOf(number));
		String js=null;
		int num1=scs.updateByPrimaryKeySelective(sc);
		if(num1>0){
			js=JSON.toJSONString(true);
		}else{
			js=JSON.toJSONString(false);
		}

		System.out.println("js ="+js);
		return js;
	}

	@RequestMapping(value="/addcp",produces={"application/json;charset=UTF-8"})
	@ResponseBody
	public String addcp(String pid)throws Exception{
		Collection_product cp=new Collection_product();
		cp.setPid(Integer.valueOf(pid));
		cp.setUid(1);
		String js=null;
		int num1=cps.insertSelective(cp);
		if(num1>0){
			js=JSON.toJSONString(true);
		}else{
			js=JSON.toJSONString(false);
		}

		System.out.println("js ="+js);
		return js;
	}

	@RequestMapping(value="/addcp2",produces={"application/json;charset=UTF-8"})
	@ResponseBody
	public String addcp2(String scid)throws Exception{
		Map<String,Object> mp=new HashMap<String, Object>();
		mp.put("shoppingCartId", scid);

		List<Shopping_cart> sclist=scs.selectAllByIf(mp);

		Collection_product cp=new Collection_product();
		cp.setPid(Integer.valueOf(sclist.get(0).getPid()));
		cp.setUid(1);
		String js=null;
		int num1=cps.insertSelective(cp);
		if(num1>0){
			js=JSON.toJSONString(true);
		}else{
			js= JSON.toJSONString(false);
		}

		System.out.println("js ="+js);
		return js;
	}

	@RequestMapping(value="/delectsc",produces={"application/json;charset=UTF-8"})
	@ResponseBody
	public String delectsc(String scid)throws Exception{
		System.out.println("ssssssssssssssssssssss");
		String js=null;
		Integer shoppingCartId=Integer.valueOf(scid);
		int num1=scs.deleteByPrimaryKey(shoppingCartId);
		if(num1>0){
			js=JSON.toJSONString(true);
		}else{
			js=JSON.toJSONString(false);
		}

		System.out.println("js ="+js);
		return js;
	}

	@RequestMapping(value = "SubmitOrder")
	public ModelAndView SubmitOrder(ModelAndView mvo,Integer id ,HttpSession session){
		User_info u=(User_info)session.getAttribute("userinfo");
		System.out.println("u ="+u.getUid());
		Map<String ,Object> mp1=new HashMap<>();
		Map<String ,Object> mp2=new HashMap<>();
		mp1.put("uid",u.getUid());
		mp1.put("isDefault",1);
		List<User_address> address=as.selectUid(mp1);//查默认地址
		//当前时间
		Date date=new Date();
		//随机字符串
		Integer bianhao=(int) (Math.random()*100000+90000);
		String str ="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		int length = str.length();
		String zimuarr[] = new String[3];
		for (int i=0;i<3;i++){
			int zimu = (int)(Math.random()*length);
			zimuarr[i] = str.substring(zimu,zimu+1);
		}
		String bhzm = zimuarr[0]+zimuarr[1]+zimuarr[2];
		String ss=bhzm+bianhao;//订单编号
		Integer sumprice =0;
		Integer init=0;
		Order1 order1=new Order1();
		if(id==null){//购物车订单
			Map<String,Object> mp =new HashMap<>();
			mp.put("uid",u.getUid());
			List<Shopping_cart> shopping_cart=scs.selectAllByIf(mp);
			for(Shopping_cart s1:shopping_cart){
				Product product=ps.selectByPrimaryKey(s1.getPid());
				float price = product.getPrice();
				int  prices=(int) price;
				init=s1.getNum()*prices;
				sumprice+=init;//总价
			}
			//要删除购物车
			Integer cart=scs.deleteUserKey(u.getUid());
			//新增到订单表
			order1.setCost((float)sumprice);
			order1.setSerialnumber(ss);
			order1.setUid(u.getUid());
			order1.setCreatetime(date);
			for(User_address address1:address) {
				order1.setReaddressName(address1.getReaddressUser());
				order1.setUseraddress(address1.getAddress());
			}
			Integer onum = os.insertSelective(order1);
			//订单详情表
			Order_detail order_detail=new Order_detail();
			for(Shopping_cart s1:shopping_cart) {
				Product product = ps.selectByPrimaryKey(s1.getPid());
				order_detail.setOrderId(order1.getOrderId());
				order_detail.setPid(product.getPid());
				order_detail.setQuantity(s1.getNum());
				order_detail.setCost((float)init);
			}
			Integer num=od.insertSelective(order_detail);
		}
		if(id!=null){//单个产品订单
			Map<String,Object> mp =new HashMap<>();
			mp.put("uid",u.getUid());
			mp.put("pid",id);
			List<Shopping_cart> shopping_cart=scs.selectAllByIf(mp);
			for(Shopping_cart s1:shopping_cart){
				Product product=ps.selectByPrimaryKey(s1.getPid());
				float price = product.getPrice();
				int  prices=(int) price;
				sumprice=s1.getNum()*prices;//价格
			}
			//要删除购物车
			mp2.put("uid",u.getUid());
			mp2.put("pid",id);
			Integer cart=scs.deleteUserProduct(mp2);
			//新增到订单表
			order1.setCost((float)sumprice);
			order1.setSerialnumber(ss);
			order1.setUid(u.getUid());
			order1.setCreatetime(date);
			for(User_address address1:address) {
				order1.setReaddressName(address1.getReaddressUser());
				order1.setUseraddress(address1.getAddress());
			}
			Integer onum = os.insertSelective(order1);
			//订单详情表
			Order_detail order_detail=new Order_detail();
			for(Shopping_cart s1:shopping_cart) {
				Product product = ps.selectByPrimaryKey(s1.getPid());
				order_detail.setOrderId(order1.getOrderId());
				order_detail.setPid(product.getPid());
				order_detail.setQuantity(s1.getNum());
				order_detail.setCost((float)sumprice);
			}
			Integer num=od.insertSelective(order_detail);
		}
		mvo.addObject("order1",order1);
		mvo.addObject("address",address.get(0));//地址
		mvo.addObject("sumprice",sumprice);//价格
		mvo.setViewName("submitOrder");
		return  mvo;
	}
	@RequestMapping(value = "OrderPay")
	public ModelAndView OrderPay(Integer id,ModelAndView mvo){
		Map<String,Object> mp=new HashMap<>();
		mp.put("orderId",id);
		Order1 order1=os.selectByPrimaryKey(id);
		List<Order_detail> list=od.selectAllIf(mp);
		List<Product> productList=new ArrayList<>();
		for(Order_detail o1:list){
			Product product=ps.selectByPrimaryKey(o1.getPid());
			productList.add(product);
		}
		String prdoctinfo=productList.get(0).getName()+"等"+productList.size()+"件商品";
		mvo.addObject("produc",prdoctinfo);
		mvo.addObject("order",order1);
		mvo.setViewName("dingdanzhifu");
		return mvo;
	}
	@RequestMapping(value="/xiugaimoren",produces={"application/json;charset=UTF-8"})
	@ResponseBody
	public String xiugaimoren(String uaid)throws Exception{

		Map<String,Object> mp=new HashMap<String, Object>();
		mp.put("uid", 1);
		mp.put("isdefault", 1);
		List<User_address> ualist=as.selectAllByIf(mp);
		Integer userAddressId=ualist.get(0).getUserAddressId();

		User_address ua=new User_address();
		ua.setUserAddressId(userAddressId);
		ua.setIsdefault(0);
		int num=as.updateByPrimaryKeySelective(ua);
		List<User_address> ualist1=new ArrayList<User_address>();
		String js=null;
		if(num>0){
			User_address ua1=new User_address();
			ua1.setUserAddressId(Integer.valueOf(uaid));
			ua1.setIsdefault(1);
			int num1=as.updateByPrimaryKeySelective(ua1);
			if(num1>0){
				ualist=as.selectAllByIf(mp);
				System.out.println(ualist.get(0));
				js=JSON.toJSONString(ualist.get(0));
			}else{
				js=JSON.toJSONString(false);
			}
		}else{
			js=JSON.toJSONString(false);
		}
		System.out.println("js ="+js);
		return js;
	}
	@RequestMapping("inOrderqian")
	@Login(check = true)
	public ModelAndView inOrderqian(ModelAndView mvo,String pid){
		Map<String,Object> mp=new HashMap<String, Object>();
		Map<String,Object> mp1=new HashMap<String, Object>();
		mp.put("uid", 1);
		User_info u=us.selectAllByIf(mp).get(0);

		List<User_address> ualist=as.selectAllByIf(mp);

		List<Product> plist=new ArrayList<Product>();

		List<Shopping_cart> sclist=new ArrayList<Shopping_cart>();
		Shopping_cart sc1=new Shopping_cart();
		if(pid.equals("0")){
			sclist=scs.selectAllByIf(mp);
			for(Shopping_cart sc:sclist){
				mp1.put("pid", sc.getPid());
				plist.add(ps.selectAllByIf(mp1).get(0));
				System.out.println("plist="+plist);
			}
		}else{
			mp1.put("pid", Integer.parseInt(pid));
			plist.add(ps.selectAllByIf(mp1).get(0));
			sc1.setPid(Integer.parseInt(pid));
			sc1.setUid(1);
			sc1.setNum(1);
			sclist.add(sc1);
			scs.insertSelective(sc1);
		}
		System.out.println(plist);
		int num=0;
		for(Product p:plist){
			num+=p.getPrice();
		}
		System.out.println("num="+num);
		List dou=new ArrayList();
		System.out.println(sclist+"0000000000000000");

		if(sclist.get(0).getPid()==Integer.parseInt(pid)&&sclist.size()==1){
			dou.add(plist.get(0).getPrice());
			System.out.println(dou+"1111111111111111111111111111");

		}else{
			for(int i=0;i<plist.size();i++){
				dou.add(plist.get(i).getPrice()*sclist.get(i).getNum());
				System.out.println(dou+"222222222222222222");

			}
		}
		int pid1=Integer.parseInt(pid);
		mvo.addObject("ifpid", pid1);
		mvo.addObject("ualist", ualist);
		mvo.addObject("dou", dou);
		mvo.addObject("sclist", sclist);
		mvo.addObject("num", num);
		mvo.addObject("plist", plist);
		mvo.addObject("u", u);
		mvo.setViewName("inOrder");
		return mvo;
	}
}
