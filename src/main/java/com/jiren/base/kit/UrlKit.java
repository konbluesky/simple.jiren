package com.jiren.base.kit;

import java.util.Map;

/**
 * Created by konbluesky on 14-6-24.
 */
public class UrlKit {
    /**
     * 构建Restful样式参数的url <br/>
     * 普通:/aa-p1-p2<br/>
     * 带日期:/aa-20130101-p2
     * @param url
     * @param values
     * @return
     */
    public static String makeUrlRestFulParam(String url,String...values){
        if(values==null || values.length==0) return "";
        StringBuilder sb=new StringBuilder(url);
        for(int i=0;i<values.length;i++){
            if(values[i].indexOf("-")!=-1){
                values[i]=values[i].replace("-","");
            }
            sb.append("-");
            sb.append(values[i]);
        }
        return sb.toString();
    }
    /**
     * 构建普通带参数的url 例如:?abcd=1&bcd=1
     * @param url
     * @param values
     * @return
     */
    public static String makeUrlNormalParam(String url,String[] names,String[] values){
        if(names==null || names.length==0) return "";
        if(names.length!=values.length)
            throw new IllegalArgumentException("The keys and values not matched!");

        StringBuilder sb=new StringBuilder(url);
        sb.append(makeNormalParam(names,values));
        return sb.toString();
    }

    public static String makeNormalParam(String[] names,String[] values){
        if(names==null || names.length==0) return "";
        if(names.length!=values.length)
            throw new IllegalArgumentException("The keys and values not matched!");

        StringBuilder sb=new StringBuilder();
        sb.append("?");
        for(int i=0;i<names.length;i++){
            sb.append(names[i]);
            sb.append("=");
            sb.append(values[i]);
            if(i!=values.length-1){
                sb.append("&");
            }
        }
        return sb.toString();
    }
    public static String makeNormalParam(Map<String,String> params){
        int size=params.keySet().size();
        String[] names=params.keySet().toArray(new String[size]);
        String[] values=params.values().toArray(new String[size]);
        return makeNormalParam(names,values);
    }

    public static void main (String[] a){
//        System.out.println(UrlKit.makeUrlRestFulParam("/n/listbytype","222","23333"));
//        System.out.println(UrlKit.makeUrlRestFulParam("/n/listbytype","12","2013-02-21"));
        System.out.println(UrlKit.makeUrlNormalParam("/n/listbytype",
                new String[]{"pageNum","ntype"},
                new String[]{"12", "2013-02-21"}));
        System.out.println(UrlKit.makeNormalParam(new String[]{"pageNum", "ntype"},
                new String[]{"12", "2013-02-21"}));
    }
}
