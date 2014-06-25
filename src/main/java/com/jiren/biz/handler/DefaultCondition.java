package com.jiren.biz.handler;

import com.jiren.base.kit.UrlKit;
import com.mysql.jdbc.StringUtils;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by konbluesky on 14-6-24.
 */
public class DefaultCondition implements IRouteCondition {
    private String targetString;
    private String regexString;
    private boolean ismatched=false;
    private String[] paramNames;
    private Map<String,String> params=new HashMap<String, String>();
    public DefaultCondition(String target, String regex, String[] paramNames){
        this.regexString=regex;
        this.paramNames =paramNames;
        this.targetString=target;
    }

    @Override
    public boolean isMatch(String srcString) {
        Pattern pattern = Pattern.compile(regexString);
        Matcher matcher = pattern.matcher(srcString);
        this.ismatched=matcher.find();
        return ismatched;
    }

    @Override
    public Map<String, String> getParams(String srcString) {
//        if(!params.isEmpty()) return params;
        Pattern pattern = Pattern.compile(regexString);
        Matcher matcher = pattern.matcher(srcString);
        if(matcher.find()){
            for(int i=0;i<paramNames.length;i++){
                String p=matcher.group(i+1);
                if(!StringUtils.isNullOrEmpty(p)){
                    params.put(paramNames[i],p);
                }
            }
        }
        return params;
    }

    @Override
    public String getRouteUrl(String srcString) {
        params=getParams(srcString);
        return UrlKit.makeUrlRestFulParam(targetString, params.values());
    }
}
