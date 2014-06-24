package com.jiren.base.kit;

import java.util.HashMap;

/**
 * Created by konbluesky on 14-6-23.
 */
public class NewsTypeKit {
    private static HashMap<String, String> textmap = new HashMap<String, String>();
    private static HashMap<String, String> codemap = new HashMap<String, String>();
    static{
        textmap.put("stock","股票");
        textmap.put("forex","外汇");
        textmap.put("funds","基金");
        textmap.put("bond","债劵");
        textmap.put("futures","期货");
        textmap.put("qizhi","期指");
        textmap.put("gold","黄金");
        textmap.put("bank","银行");
        textmap.put("money","理财");


        codemap.put("gp","股票");
        codemap.put("wh","外汇");
        codemap.put("jj","基金");
        codemap.put("zj","债劵");
        codemap.put("qh","期货");
        codemap.put("qz","期指");
        codemap.put("hj","黄金");
        codemap.put("yh","银行");
        codemap.put("lcgs","理财故事");
    }
    public static HashMap<String, String> getTextmap(){
        return textmap;
    }

    public static HashMap<String, String> getCodemap(){
        return codemap;
    }

}
