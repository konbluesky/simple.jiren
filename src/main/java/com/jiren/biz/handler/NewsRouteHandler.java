package com.jiren.biz.handler;

import com.jfinal.handler.Handler;
import com.jiren.biz.model.news.News;
import com.mysql.jdbc.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by konbluesky on 14-6-20.
 */
public class NewsRouteHandler extends Handler {
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
        String ndate="";
        String nid="";
        if(!StringUtils.isNullOrEmpty(target)){
            String reg="";

            Pattern pattern = Pattern.compile("/n/(\\d{4}-\\d{2}-\\d{2})/(\\w+)\\.html");
            Matcher matcher = pattern.matcher(target);
            if (matcher.find()) {
                ndate=matcher.group(1);
                nid=matcher.group(2);
            }
//            System.out.println("date:"+date+"====="+" nid:"+nid);
            request.setAttribute("ndate",ndate);
            request.setAttribute("nid",nid);

            if(StringUtils.isNullOrEmpty(nid)
                || StringUtils.isNullOrEmpty(ndate)){
                nextHandler.handle(target,request,response,isHandled);
            }else{
                //id和日期有效时转入详情页面
                nextHandler.handle("/n/info",request,response,isHandled);
            }
        }
    }


}
