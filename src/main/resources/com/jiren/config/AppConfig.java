package com.jiren.config;

import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.ext.interceptor.SessionInViewInterceptor;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;

/**
 * Created by konbluesky on 14-6-4.
 */
public class AppConfig extends JFinalConfig {

    /**
     * 配置常量
     */
    public void configConstant(Constants me) {
        // 加载少量必要配置，随后可用getProperty(...)获取值
        loadPropertyFile("a_little_config.txt");
        me.setDevMode(getPropertyToBoolean("devMode", true));
    }

    /**
     * 配置路由
     */
    public void configRoute(Routes me) {
//        me.add("/", CommonController.class);
//        me.add("/company",CompanyController.class);
//        me.add("/platform",PlatformController.class);
//        me.add("/systemuser",SystemUserController.class);
//        me.add("/relation",CompanyTrackController.class);
//        me.add("/my/track",MyTrackController.class);
//        me.add("/ajax",AjaxController.class);
    }

    /**
     * 配置插件
     */
    public void configPlugin(Plugins me) {
        // 配置C3p0数据库连接池插件
        C3p0Plugin c3p0Plugin = new C3p0Plugin(getProperty("jdbcUrl"), getProperty("user"), getProperty("password").trim());
        me.add(c3p0Plugin);

        // 配置ActiveRecord插件
        ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
        arp.setShowSql(true);
        me.add(arp);
//        arp.addMapping("company", "cpid",Company.class);
//        arp.addMapping("platform", "pid",Platform.class);
//        arp.addMapping("sysuser", "uid",SystemUser.class);
//        arp.addMapping("companytrack", "ctid",CompanyTrack.class);
//        arp.addMapping("companytrackinfo", "seqid",CompanyTrackInfo.class);
//        arp.addMapping("dictionary", "id",Dictionary.class);
    }

    /**
     * 配置全局拦截器
     */
    public void configInterceptor(Interceptors me) {
//		me.add(new SessionInterceptor());
//        me.add(new SessionInViewInterceptor());


    }

    /**
     * 配置处理器
     */
    public void configHandler(Handlers me) {
        me.add(new ContextPathHandler("ctx"));
    }

    /**
     * 建议使用 JFinal 手册推荐的方式启动项目
     * 运行此 main 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此
     */
    public static void main(String[] args) {
        JFinal.start("WebContent", 80, "/", 5);
    }
}