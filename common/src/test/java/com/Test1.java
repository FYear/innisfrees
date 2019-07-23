package com;

public class Test1 {

    public static void main(String [] args){
       /* for (int i=0;i<26;i++){
            int num = (int)(Math.random()*26);
            System.out.println("num = "+num);
        }*/
        Integer bianhao=(int) (Math.random()*1000000+900000);
        String str ="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        int length = str.length();
        String zimuarr[] = new String[3];
        for (int i=0;i<3;i++){
            int zimu = (int)(Math.random()*length);
            zimuarr[i] = str.substring(zimu,zimu+1);
        }
        String bhzm = zimuarr[0]+zimuarr[1]+zimuarr[2];
        String ss=bhzm+bianhao;
        System.out.println("ss = "+ss);

    }
}
