package com.jiren.biz.handler;

import com.jfinal.handler.Handler;
import com.mysql.jdbc.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by konbluesky on 14-6-20.
 */
public class NewsRouteHandler extends Handler {

    private final static String REX_DETAIL="/n/(\\d{4}-\\d{2}-\\d{2})/(\\w+)\\.(\\w+)";
    private final static String REX_TYPELIST="/n/(\\w+)";
    private final static String REX_NORMALLIST_PAGE="/n/(\\d+)";

    private static List<IRouteCondition> routes=new ArrayList<IRouteCondition>();

    {
        routes.add(new DefaultConditionI("/n/info",REX_DETAIL,new String[]{"ndate","nid"}));
        routes.add(new DefaultConditionI("/n/info",REX_TYPELIST,new String[]{"ndate","nid"}));
        routes.add(new DefaultConditionI("/n/info",REX_NORMALLIST_PAGE,new String[]{"ndate","nid"}));
    }
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
        for(IRouteCondition route:routes){
            if(route.isMatch(target)){
                System.out.println("targetURL:"+route.getRouteUrl(target));
                nextHandler.handle(route.getRouteUrl(target),request,response,isHandled);
                break;
            }
        }

    }

    public static void main(String[] a){
//        NewsRouteHandler nb=new NewsRouteHandler();
//        Map<String,String> params=nb.isMatch("/n/2014-06-20/abcd.html",
//                REX_DETAIL,
//                new String[]{"ndate", "nid"});
//        System.out.println(params);
//        System.out.println(UrlKit.makeNormalParam(params));
//        System.out.println(nb.isMatch("/n/gp/1",
//                REX_TYPELIST,
//                new String[]{"ntype"}));

        DefaultConditionI ndc=new DefaultConditionI("/n/info",REX_DETAIL,new String[]{"ndate","nid"});

        System.out.println(ndc.isMatch("/n/2014-06-20/abcd.html"));
        System.out.println(ndc.getParams("/n/2014-06-20/abcd.html"));
        System.out.println(ndc.getRouteUrl("/n/2014-06-20/abcd.html"));
    }


}
