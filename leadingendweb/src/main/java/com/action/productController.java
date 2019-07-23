package com.action;

import com.alibaba.fastjson.JSON;
import com.entity.*;
import com.interceptor.Login;
import com.service.*;
import com.sun.org.apache.regexp.internal.RE;
import com.utils.RedisClient;
import com.utils.SortListUtil;
import jdk.nashorn.internal.scripts.JO;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.geom.PathIterator;
import java.lang.reflect.Array;
import java.util.*;
@Controller
public class productController {
    @Value("${spring.datasource.url}")
    private String url;
    @Autowired
    IUser_infoService us;
    @Autowired
    IProductService ps;
    @Autowired
    IProduct_relationService pr;
    @Autowired
    private RedisClient redisClient;
    @Autowired
    private ISkincare_productService sp;
    @Autowired
    private IDetailed_productService dp;
    @Autowired
    private IShopping_cartService sc;
    @Autowired
    private IGive_productService gp;
    @RequestMapping("newProduct")
    public ModelAndView newProduct(ModelAndView mvo, HttpSession session, HttpServletRequest request) throws Exception {
        Map<String, Object> mp = new HashMap();
        mp.put("type", 1);
        List<Product> xplist = ps.newselect();//新品推荐
        List<Product> cxlist = ps.moerselect();//畅销产品
        List<Object> newlist = new ArrayList<>();
        List<Object> moerlist = new ArrayList<>();
        List<Product_relation> lblist = pr.selectAll(mp);//产品类别
        List<Skincare_product> xllist = sp.selectAll();  //护肤系列
        for (int i = 0; i < 6; i++) {
            newlist.add(xplist.get(i));
            moerlist.add(cxlist.get(i));
        }
        Object obj = redisClient.getJO("userinfo",User_info.class);
        User_info u = (User_info) obj;
       session.setAttribute("userinfo",u);


       /* if(obj==null){
            String user="";
            Cookie[] carr = request.getCookies();
            if(carr != null && carr.length > 0){
                for(Cookie c :carr){
                    if(c.getName().equals("userinfo")){
                        user = c.getValue() ;
                    }
                }
            }
            if(user !=null && !user.equals("")){
                // 拆分
                String[] arr = user.split("-");
                User_info u=us.selectByPrimaryKey(Integer.parseInt(arr[0]));
                session.setAttribute("users",true);
                session.setAttribute("userinfo",u);
            }
        }*/
        redisClient.set("newlist", newlist);
        redisClient.set("moerlist", moerlist);
        redisClient.set("lblist", lblist);
        session.setAttribute("lblist", lblist);
        session.setAttribute("xllist", xllist);
        mvo.addObject("newlist", newlist);
        mvo.addObject("moerlist", moerlist);
        mvo.setViewName("index");
        return mvo;
    }

    @RequestMapping(value = "orderpage")
    @Login(check = true)
    public ModelAndView orderpage(ModelAndView mvo, Integer id) {
        Product product = ps.selectByPrimaryKey(id);
        if (product != null) {

        }
        return mvo;
    }

    @RequestMapping(value = "productAll")
    public ModelAndView productAll(ModelAndView mvo, Integer parentid, HttpSession session) {
        Map<String, Object> mp = new HashMap();
        Map<String, Object> mp1 = new HashMap();
        if (parentid != null) {
            Product_relation product_relation=pr.selectByPrimaryKey(parentid);
            mp.put("parentid", parentid);
            session.setAttribute("parentid", parentid);
            session.setAttribute("product_relation1",product_relation);
            mp1.put("categorylevel1id", parentid);
        }
        if (parentid == null) {
            Product_relation product_relation=pr.selectByPrimaryKey(1);
            mp.put("parentid", 1);
            session.setAttribute("product_relation1",product_relation);
        }
        List<Skincare_product> sklsit=sp.selectAll();
        Object obj = redisClient.get("lblist");
        List<Product_relation> pblist = pr.selectAll(mp);
        List<Product> productList = ps.selectAll(mp1);
        List<Product> p1=new ArrayList<>();
        if(productList.size()>15){
            for (int i = 0; i < 15; i++) {
                p1.add(productList.get(i));
                session.setAttribute("productList", p1);
            }
        }else{
                session.setAttribute("productList", productList);
        }

        session.setAttribute("productInfo",productList);
        List<Product> productLists = ps.selectActive(mp);
        List<Product> productList1=new ArrayList<>();
        List<Product> productList2=new ArrayList<>();
        for(int i=0;i<productLists.size();i++){
                productList1.add(productLists.get(i));
                if(i==2){
                    break;
                }
        }
        if(productLists.size()>3) {
            for (int i = 3; i < productLists.size(); i++) {
                productList2.add(productLists.get(i));
                if(i==4){
                    break;
                }
            }
        }
        Integer width = pblist.size() + 1;
        Integer bf = 100 / (width);
        session.setAttribute("sklsit", sklsit);
        session.setAttribute("bf", bf);
        session.setAttribute("obj2", obj);
        session.setAttribute("pblist2", pblist);
        session.setAttribute("productList1", productList1);
        session.setAttribute("productList2", productList2);
        mvo.setViewName("Allgoods");
        return mvo;
    }

    @RequestMapping(value = "productAllajxa", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String productAllajxa(Integer parentid, HttpSession session) throws Exception {
        Map<String, Object> mp = new HashMap();
        Map<String, Object> mp1 = new HashMap();
        mp.put("parentid", parentid);
        List<Product_relation> pblist = pr.selectAll(mp);
        Integer width = pblist.size() + 1;
        Integer bf = 100 / (width);
        mp1.put("bf", bf);
        mp1.put("pblist", pblist);
        String js = JSON.toJSONString(mp1);
        return js;
    }


    @RequestMapping(value = "productInfoajxa", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String productInfoajxa(Integer parentid, HttpSession session) throws Exception {
        Map<String, Object> mp = new HashMap();
        Map<String, Object> mp1 = new HashMap();
        mp.put("categorylevel2id", parentid);
        Product_relation product_relation2=pr.selectByPrimaryKey(parentid);
        Product_relation product_relation1=pr.selectByPrimaryKey(product_relation2.getParentid());
        mp1.put("product_relation1",product_relation1.getName());
        mp1.put("product_relation2",product_relation2.getName());
        session.setAttribute("parentid", parentid);
        List<Product> productList = ps.selectAll(mp);
        if(productList.size()>15){
            List<Product> p1=new ArrayList<>();
            for(int i=0;i<15;i++){
                p1.add(productList.get(i));
            }
            mp1.put("productList",p1);
        }else{
            mp1.put("productList",productList);
        }
        session.setAttribute("productInfo",productList);
        String js = JSON.toJSONString(mp1);
        return js;
    }

    @RequestMapping(value = "producrOnes", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
   // @Login(check = true)
    public String producrOnes(Integer productid) throws Exception {
        Map<String, Object> mp = new HashMap<>();
        if(productid!=0){
            mp.put("pid", productid);
        }
        List<Product> list = ps.selectAll(mp);
        String js = JSON.toJSONString(list);
        System.out.println("js1 =" + js);
        return js;
    }

    @RequestMapping(value = "AddShopping",produces={"application/json;charset=UTF-8"})
    @ResponseBody
    @Login(check = true)
    public String AddShopping(Integer pid,Integer num,HttpSession session)throws Exception{
        User_info u1=(User_info)session.getAttribute("userinfo");
        System.out.println("u1 ="+u1);
        Map<String,Object> mp=new HashMap<>();
        Map<String,Object> mp1=new HashMap<>();
        mp.put("pid",pid);
        mp.put("uid",u1.getUid());
        List<Shopping_cart> list=sc.selectByuser(mp);
        String js=null;
        System.out.println("list="+list);
        if(list.size()==0){
            Integer uid=u1.getUid();
            Shopping_cart cart=new Shopping_cart();
            cart.setUid(uid);
            cart.setNum(num);
            cart.setPid(pid);
            Integer number=sc.insert(cart);
            js=JSON.toJSONString(true);
        }else{
            js=JSON.toJSONString(false);
        }

        return js;
    }
    @RequestMapping(value = "shoppingAll",produces={"application/json;charset=UTF-8"})
    @ResponseBody
    public String shoppingAll(HttpSession session)throws  Exception{
        User_info u=(User_info)session.getAttribute("userinfo");
        String js=null;
        if(u!=null){
            Map<String,Object> mp1=new HashMap<>();
            Map<String,Object> mp=new HashMap<>();
            mp1.put("uid",u.getUid());
            List<Shopping_cart> list=sc.selectByuser(mp1);
            List<Object> productlist=new ArrayList<>();
            List<Integer> numlist=new ArrayList<>();
            Integer sum=0;
            Integer init=0;
            Integer Onenum=list.size();
            for(Shopping_cart cart:list){
                Product product=ps.selectByPrimaryKey(cart.getPid());
                productlist.add(product);
                numlist.add(cart.getNum());
                float price = product.getPrice();
                int  prices=(int) price;
                init=cart.getNum()*prices;
                sum+=init;
                //System.out.println("sum 4="+sum);
            }
            mp.put("numlist",numlist);
            mp.put("productlists",productlist);
            mp.put("Onenum",Onenum);
            mp.put("sum",sum);
             js= JSON.toJSONString(mp);
        }else{
            js= JSON.toJSONString(true);
        }

        return js;
    }
    @RequestMapping(value = "removeSession")
    public ModelAndView removeSession(ModelAndView mvo,HttpSession session){
        session.removeAttribute("userinfo");
        session.removeAttribute("Onenum");
        session.removeAttribute("sum");
        session.removeAttribute("users");
        mvo.setViewName("redirect:newProduct");

        return mvo;
    }
    @RequestMapping(value = "numberAdd", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public  String numberAdd(Integer pid,Integer num,HttpSession session)throws  Exception{
        User_info u1=(User_info)session.getAttribute("userinfo");
        Shopping_cart cart=new Shopping_cart();
        cart.setUid(u1.getUid());
        cart.setPid(pid);
        cart.setNum(num);
        Integer integer=sc.updateUserPid(cart);
        String js=null;
        if(integer>0){
            Map<String,Object> mp1=new HashMap<>();
            Map<String,Object> mp=new HashMap<>();
            mp1.put("uid",u1.getUid());
            List<Shopping_cart> list=sc.selectByuser(mp1);
            List<Object> productlist=new ArrayList<>();
            Integer sum=0;
            Integer init=0;
            for(Shopping_cart cart1:list){
                Product product=ps.selectByPrimaryKey(cart1.getPid());
                float price = product.getPrice();
                int  prices=(int) price;
                init=cart1.getNum()*prices;
                sum+=init; System.out.println("cart.getNum()="+cart.getNum());
            }
            mp.put("sum",sum);
            js=JSON.toJSONString(mp);
        }else{
            js=JSON.toJSONString(false);
        }
        return js;
    }

    @RequestMapping(value = "CartOnedel", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String CartOnedel(Integer pid,HttpSession session)throws  Exception{
        Integer integer=sc.deleteProductKey(pid);

        String js=null;
        if(integer>0){

            js=JSON.toJSONString(true);
        }else{
            js=JSON.toJSONString(false);
        }
        return js;
    }


    @RequestMapping(value = "Condition")
    public ModelAndView Condition(ModelAndView mvo,@RequestParam List<Integer> skincare,@RequestParam List<String> effect ,HttpSession session)throws  Exception{
        Map<String, Object> effectmp = new HashMap();
        List<Product> Products=new ArrayList<>();
        List<Product> productList=ps.selectAll(effectmp);
            if (effect.size() != 0) {
                for (int i = 0; i < effect.size(); i++) {
                    effectmp.put("effect", effect.get(i));
                    List<Product> effects = ps.selectEffect(effectmp);
                    if (effects != null) {
                        for (Product p1 : effects) {
                            Products.add(p1);
                        }
                    }
                }
            }
            if (skincare.size() != 0) {
                for (int i = 0; i < skincare.size(); i++) {
                    List<Product> skincares = ps.selectSkincare(skincare.get(i));
                    if (skincares != null) {
                        for (Product p1 : skincares) {
                            Products.add(p1);
                        }
                    }
                }
            }
            Set<Product> product = new HashSet<>();
            product.addAll(Products);
            List<Product> list=new ArrayList<>(product);
        session.setAttribute("productInfo", list);
            if (product.size() > 15) {
                List<Product> p1 = new ArrayList<>();
                int i = 0;
                for (Product product1 : product) {
                    p1.add(product1);
                    i++;
                    if (i == 15) {
                        break;
                    }
                }
                session.setAttribute("productList", p1);
            } else {
                session.setAttribute("productList", product);
            }


        mvo.setViewName("Allgoods");
        return mvo;
    }

    @RequestMapping(value = "Condition1")

      public ModelAndView Condition1(ModelAndView mvo,@RequestParam List<String> effect ,HttpSession session)throws  Exception{
        Map<String, Object> effectmp = new HashMap();
        List<Product> Products=new ArrayList<>();
        List<Product> productList=ps.selectAll(effectmp);
        if (effect.size() != 0) {
            for (int i = 0; i < effect.size(); i++) {
                effectmp.put("effect", effect.get(i));
                List<Product> effects = ps.selectEffect(effectmp);
                if (effects != null) {
                    for (Product p1 : effects) {
                        Products.add(p1);
                    }
                }
            }
        }
        Set<Product> product = new HashSet<>();
        product.addAll(Products);
        List<Product> list=new ArrayList<>(product);
        session.setAttribute("productInfo", list);
        if (product.size() > 15) {
            List<Product> p1 = new ArrayList<>();
            int i = 0;
            for (Product product1 : product) {
                p1.add(product1);
                i++;
                if (i == 15) {
                    break;
                }
            }
            session.setAttribute("productList", p1);
        } else {
            session.setAttribute("productList", product);
        }
        mvo.setViewName("Skincare");
        return mvo;

    }

    @RequestMapping(value = "jiageDi", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String jiageDi(HttpSession session)throws  Exception{
        List<Product> p1=new ArrayList<>();
        List<Product> productList=new ArrayList<>();
        List<Product> list=(List<Product>) session.getAttribute("productInfo");
        SortListUtil.sort(list, "price", null);
        for (Product product : list) {
            p1.add(product);
        }
        if(p1.size()>15){
            for(int i=0;i<15;i++){
                productList.add(p1.get(i));
            }
        }
        if(p1.size()<15){
            for(int i=0;i<p1.size();i++){
                productList.add(p1.get(i));
            }
        }
        String js=JSON.toJSONString(productList);
          return js;
    }

    @RequestMapping(value = "jiageGao", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String jiageGao(HttpSession session)throws  Exception{
        List<Product> productList=new ArrayList<>();
        List<Product> p1=new ArrayList<>();
        List<Product> list=(List<Product>) session.getAttribute("productInfo");
        SortListUtil.sort(list, "price", SortListUtil.DESC);
        for (Product product : list) {
            p1.add(product);
        }
        if(p1.size()>15){
            for(int i=0;i<15;i++){
                productList.add(p1.get(i));
            }
        }
        if(p1.size()<15){
            for(int i=0;i<p1.size();i++){
                productList.add(p1.get(i));
            }
        }
        String js=JSON.toJSONString(productList);
        return js;
    }

    @RequestMapping(value = "Popularity", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String Popularity(HttpSession session)throws  Exception{
        List<Product> productList=new ArrayList<>();
        List<Product> p1=new ArrayList<>();
        List<Product> list=(List<Product>)session.getAttribute("productInfo");
        SortListUtil.sort(list, "salesVolume", SortListUtil.DESC);
        for (Product product : list) {
            p1.add(product);
        }
        if(p1.size()>15){
            for(int i=0;i<15;i++){
                productList.add(p1.get(i));
            }
        }
        if(p1.size()<15){
            for(int i=0;i<p1.size();i++){
                productList.add(p1.get(i));
            }
        }
        String js=JSON.toJSONString(productList);
        return js;
    }

    @RequestMapping(value = "Discount", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String Discount(HttpSession session)throws  Exception{
        List<Product> productList=new ArrayList<>();
        List<Product> p1=new ArrayList<>();
        List<Product> list=(List<Product>) session.getAttribute("productInfo");
        SortListUtil.sort(list, "discountPrice", SortListUtil.DESC);
        for (Product product : list) {
            p1.add(product);
        }
        if(p1.size()>15){
            for(int i=0;i<15;i++){
                productList.add(p1.get(i));
            }
        }
        if(p1.size()<15){
            for(int i=0;i<p1.size();i++){
                productList.add(p1.get(i));
            }
        }
        String js=JSON.toJSONString(productList);
        return js;
    }

    @RequestMapping(value = "Latestdata", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String Latestdata(HttpSession session)throws  Exception{
        List<Product> productList=new ArrayList<>();
        List<Product> p1=new ArrayList<>();
        List<Product> list=(List<Product>)session.getAttribute("productInfo");
        SortListUtil.sort(list, "day", SortListUtil.DESC);
        for (Product product : list) {
            p1.add(product);
        }
        if(p1.size()>15){
            for(int i=0;i<p1.size();i++){
                productList.add(p1.get(i));
            }
        }
        if(p1.size()<15) {
            for (int i = 0; i < 15; i++) {
                productList.add(p1.get(i));
            }
        }
        String js=JSON.toJSONString(productList);
        return js;
    }


    @RequestMapping(value = "searchProduct", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String searchProduct(String name,HttpSession session)throws  Exception{
        Map<String,Object> mp=new HashMap<>();
        mp.put("name",name);
        List<Product> productList=ps.selectAll(mp);
        session.setAttribute("productInfo",productList);
        String js=JSON.toJSONString(productList);
        return js;

    }

    @RequestMapping(value = "productDetails")
    public  ModelAndView productDetails(ModelAndView mvo,Integer pid){
        Product product=ps.selectByPrimaryKey(pid);
        Detailed_product detailed_product=dp.selectPidKey(pid);
        Give_product give_product=gp.selectByPrimaryKey(product.getGiveProductId());
        List<Product> p1=(List<Product>)redisClient.get("newlist");
        List<Product> p2=(List<Product>)redisClient.get("moerlist");
        Integer cx=0;
        Integer xp=0;
        for(Product product1:p1){
            if(product1.getPid().equals(pid)){
                cx=1;
                break;
            }
        }
        for(Product product1:p2){
            if(product1.getPid().equals(pid)){
                xp=1;
                break;
            }

        }
        mvo.addObject("xp",xp);
        mvo.addObject("cx",cx);
        mvo.addObject("giveproduct",give_product);
        mvo.addObject("product",product);
        mvo.addObject("detailedproduct",detailed_product);
        mvo.setViewName("Details");
        return mvo;
    }

    @RequestMapping(value = "skincareproductAll")
    public ModelAndView skincareproductAll(ModelAndView mvo,Integer id,HttpSession session){
        if(id==null){
            List<Product> products=ps.selectSkincare(1);
            List<Product> p1=new ArrayList<>();
            Skincare_product s=sp.selectByPrimaryKey(1);
            session.setAttribute("productInfo",products);
            if(products.size()>15) {
                for (int i = 0; i < 15; i++) {
                    p1.add(products.get(i));
                }
                session.setAttribute("products",p1);
            }else{
                session.setAttribute("products",products);
            }
                session.setAttribute("s1",s);

        }else{
            List<Product> products=ps.selectSkincare(id);
            List<Product> p1=new ArrayList<>();
            Skincare_product s=sp.selectByPrimaryKey(id);
            redisClient.set("productInfo",products);
            if(products.size()>15) {
                for (int i = 0; i < 15; i++) {
                    p1.add(products.get(i));
                }
                session.setAttribute("products",p1);
            }else{
                session.setAttribute("products",products);
            }
            session.setAttribute("s1",s);
        }
        List<Skincare_product> skincare_product=sp.selectAll();
        List<Skincare_product> sp1=new ArrayList<>();
        List<Skincare_product> sp2=new ArrayList<>();
        for(Skincare_product s1:skincare_product){
            if(!s1.getIconclass().equals("")){
                sp1.add(s1);
            }else{
                sp2.add(s1);
            }
        }
        session.setAttribute("skincarAll",sp2);
        session.setAttribute("skincar",sp1);
        mvo.setViewName("Skincare");
        return mvo;
    }

    @RequestMapping(value = "ajaxPageNxet", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    //下一页
    public String ajaxPageNxet(Integer num,Integer size,HttpSession session)throws  Exception{
        List<Product> productList=(List<Product>)session.getAttribute("productInfo");
        List<Product> p1=new ArrayList<>();
        Map<String,Object> mp=new HashMap<>();
        Integer count=productList.size()/size;
        String js=null;
        if(num<=count){
            if(productList.size()>size&&productList.size()<=(num+1)*size){
                for(int i=num*size;i<productList.size();i++){
                    p1.add(productList.get(i));
                    mp.put("productList",p1);
                }
                num=num+1;
                mp.put("num",num);
                js=JSON.toJSONString(mp);
            }
            if(productList.size()>(num+1)*size){
                for(int i=num*size;i<(num+1)*size;i++){
                    p1.add(productList.get(i));
                    mp.put("productList",p1);
                }
                num=num+1;
                mp.put("num",num);
                js=JSON.toJSONString(mp);
            }
        }
        return js;
    }

    @RequestMapping(value = "ajaxPagePrevious", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    //上一页
    public String ajaxPagePrevious(Integer num,Integer size,HttpSession session)throws  Exception{
        List<Product> productList=(List<Product>)session.getAttribute("productInfo");
        List<Product> p1=new ArrayList<>();
        Map<String,Object> mp=new HashMap<>();
        Integer count=productList.size()/size;
        Integer count1=productList.size()%size;
        String js=null;
        if(num>1) {
            if (count1==0) {//取整时
                for (int i =  (num - 2) * size; i < (num-1 ) * size; i++) {
                    p1.add(productList.get(i));
                    mp.put("productList", p1);
                }
            }
            if (count1!= 0) {//不能取整时
                count=count+1;//纠正页数
               if(num==count) {//最后一页
                    for (int i =(num - 2) * size; i <  (productList.size() - count1); i++) {
                        p1.add(productList.get(i));
                        mp.put("productList", p1);
                    }
                }
                if(num<count){//判断是否为最后一页
                    for (int i =(num - 2) * size; i < (num-1) * size; i++) {
                        p1.add(productList.get(i));
                        mp.put("productList", p1);
                    }
                }
            }
            num = num - 1;
            mp.put("num", num);
            js = JSON.toJSONString(mp);
        }
        return js;
    }


}

