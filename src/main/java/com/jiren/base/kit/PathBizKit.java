package com.jiren.base.kit;

import com.jfinal.kit.PathKit;

/**
 * 业务中用来获取常用模板路径
 * Created by konbluesky on 14-6-20.
 */
public class PathBizKit extends PathKit {

    public static String getTemplateRoot(){
        return getWebRootPath()+"/WEB-INF/template";
    }
    public static String getPagePath(){
        return "/WEB-INF/template/page";
    }
    public static String getPageAdminPath(){
        return "/WEB-INF/template/page/admin";
    }
}
