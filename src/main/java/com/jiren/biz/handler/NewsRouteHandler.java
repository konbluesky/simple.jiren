package com.jiren.biz.handler;

import com.jfinal.handler.Handler;
import com.jiren.base.kit.UrlKit;
import com.jiren.biz.model.news.News;
import com.mysql.jdbc.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by konbluesky on 14-6-20.
 */
public class NewsRouteHandler extends Handler {

    private final static String REX_NORMALLIST="/n/(\\d{4}-\\d{2}-\\d{2})/(\\w+)\\.(\\w+)";
    private final static String REX_TYPELIST="/n/(\\w+)";

    /**
     * 过滤新闻路径url
     * @param target
     * @param request
     * @param response
     * @param isHandled
     */
    @Override
    public void handle(String target, HttpServletRequest request, HttpServletResponse response, boolean[] isHandled) {
        // http://xxxx/n/2014-06-20/abcd.html
//        boolean normal=false;
//        boolean type=false;
        String ndate="";
        String nid="";
        String ntype="";
        if(!StringUtils.isNullOrEmpty(target)){
            String reg="";

            Pattern normal = Pattern.compile(REX_NORMALLIST);
            Matcher matcher = normal.matcher(target);

            Pattern typelist=Pattern.compile(REX_TYPELIST);
            Matcher matcherlist = typelist.matcher(target);
            if(matcher.find()){
                ndate = matcher.group(1);
                nid = matcher.group(2);
                request.setAttribute("ndate",ndate);
                request.setAttribute("nid",nid);
            }else if(matcherlist.find()){
                ntype = matcherlist.group(1);
            }


            if(!StringUtils.isNullOrEmpty(nid)
                    &&!StringUtils.isNullOrEmpty(ndate)){
                //id和日期有效时转入详情页面
                nextHandler.handle("/n/info",request,response,isHandled);
            }else if(!StringUtils.isNullOrEmpty(ntype)){
                nextHandler.handle(UrlKit.makeUrlRestFulParam("/n/listbytype/", ntype, "1"),request,response,isHandled);
            }else{
                nextHandler.handle(target,request,response,isHandled);
            }

        }
    }

    /**
     * 过滤url提取参数
     * @param target
     * @param regx
     * @return
     */
    public Map<String,String> isMatch(String target,String regx,String[] paramnames){
        Map<String,String> params = null;
        Pattern pattern=Pattern.compile(regx);
        Matcher matcher = pattern.matcher(target);
        if(matcher.find()){
           params=new HashMap<String,String>(paramnames.length);
            for(int i=0;i<paramnames.length;i++){
                String p=matcher.group(i+1);
                if(!StringUtils.isNullOrEmpty(p)){
                    params.put(paramnames[i],matcher.group(i+1));
                }
            }
        }
        return params;
    }

    public static void main(String[] a){
        NewsRouteHandler nb=new NewsRouteHandler();
        Map<String,String> params=nb.isMatch("/n/2014-06-20/abcd.html",
                REX_NORMALLIST,
                new String[]{"ndate", "nid"});
        System.out.println(params); 
        System.out.println(UrlKit.makeNormalParam(params));
        System.out.println(nb.isMatch("/n/gp/1",
                REX_TYPELIST,
                new String[]{"ntype"}));
    }
}
