package com.jiren.base.config;

import com.alibaba.druid.filter.stat.StatFilter;
import com.alibaba.druid.wall.WallFilter;
import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.ext.plugin.config.ConfigKit;
import com.jfinal.ext.plugin.config.ConfigPlugin;
import com.jfinal.ext.plugin.tablebind.AutoTableBindPlugin;
import com.jfinal.ext.plugin.tablebind.SimpleNameStyles;
import com.jfinal.plugin.activerecord.SqlReporter;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jiren.biz.control.GoldDataControl;
import com.jiren.biz.control.KaihuControl;
import com.jiren.biz.control.manager.AdminLoginControl;
import com.jiren.biz.control.manager.news.NewsManagerControl;
import com.jiren.biz.control.platform.PlatformXHYControl;
import com.jiren.biz.control.index.IndexControl;
import com.jiren.biz.control.news.NewsControl;
import com.jiren.biz.control.platform.PlatformZZXControl;
import com.jiren.biz.handler.NewsRouteHandler;
import com.jiren.biz.model.BaseModel;

/**
 * Created by konbluesky on 14-6-4.
 */
public class AppConfig extends JFinalConfig {
    public void configConstant(Constants me) {
//        loadPropertyFile("a_little_config.txt");
        new ConfigPlugin(".*.txt").reload(false).start();
        me.setViewType(ViewType.FREE_MARKER);
        String dev=ConfigKit.getStr("isdev", "true");
        me.setDevMode(dev.equals("true")?true:false);
        me.setError404View("/WEB-INF/template/404.ftl");
        me.setError500View("/WEB-INF/template/500.ftl");
    }

    public void configRoute(Routes me) {
        me.add("/", IndexControl.class);
        me.add("/am", AdminLoginControl.class);//后台
        me.add("/am/n", NewsManagerControl.class);//后台新闻管理
        me.add("/n", NewsControl.class);
        me.add("/kaihu",KaihuControl.class);
        me.add("/zxdata", GoldDataControl.class);
        me.add("/p/xhy",PlatformXHYControl.class);
        me.add("/p/zzx",PlatformZZXControl.class);
    }

    public void configPlugin(Plugins me) {

        // 配置Druid数据库连接池插件
        DruidPlugin dp = new DruidPlugin(ConfigKit.getStr("db.jdbcUrl"), ConfigKit.getStr("db.user"), ConfigKit.getStr("db.password"));
        dp.setTestWhileIdle(true).setTestOnBorrow(true).setTestOnReturn(true);
        dp.addFilter(new StatFilter());
        WallFilter wall = new WallFilter();
        wall.setDbType("mysql");
        dp.addFilter(wall);
        me.add(dp);

        // 扒皮的自动绑定插件
        AutoTableBindPlugin atbp = new AutoTableBindPlugin(dp, SimpleNameStyles.LOWER_UNDERLINE);
        atbp.setShowSql(true);
        atbp.addExcludeClasses(BaseModel.class);
        me.add(atbp);
        // sql记录
        SqlReporter.setLogger(true);

    }

    public void configInterceptor(Interceptors me) {
//		me.add(new SessionInterceptor());
//        me.add(new SessionInViewInterceptor());
    }

    public void configHandler(Handlers me) {
        me.add(new ContextPathHandler());
        me.add(new NewsRouteHandler());
//        me.add(new FakeStaticHandler(".vhtml"));
    }

    public static void main(String[] args) {
        JFinal.start("webapp", 80, "/", 5);
    }
}