package com.jiren.module.site.core;

/**
 * Created by konbluesky on 14-6-20.
 */
public enum ModuleType {
    //..
    //模块名称,英文标识,数字,模块级别
    //
    WZSY("网站首页","sy","sy","01",1),
    CJZX("财经资讯","cjzx","cjzx","02",1),
    LCGS("理财故事","cjzx","cjzx","0201",1);
    private String cnname;
    private String enname;
    private String indentify;
    private String biaozhi;
    private int level;

    private ModuleType(String cnname,String enname,String indentify,String biaozhi,int level){
        this.cnname=cnname;
        this.enname=enname;
        this.indentify=indentify;
        this.biaozhi=biaozhi;
        this.level=level;
    }


}
