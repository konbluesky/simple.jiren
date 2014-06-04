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
     * ���ó���
     */
    public void configConstant(Constants me) {
        // ����������Ҫ���ã�������getProperty(...)��ȡֵ
        loadPropertyFile("a_little_config.txt");
        me.setDevMode(getPropertyToBoolean("devMode", true));
    }

    /**
     * ����·��
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
     * ���ò��
     */
    public void configPlugin(Plugins me) {
        // ����C3p0���ݿ����ӳز��
        C3p0Plugin c3p0Plugin = new C3p0Plugin(getProperty("jdbcUrl"), getProperty("user"), getProperty("password").trim());
        me.add(c3p0Plugin);

        // ����ActiveRecord���
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
     * ����ȫ��������
     */
    public void configInterceptor(Interceptors me) {
//		me.add(new SessionInterceptor());
//        me.add(new SessionInViewInterceptor());


    }

    /**
     * ���ô�����
     */
    public void configHandler(Handlers me) {
        me.add(new ContextPathHandler("ctx"));
    }

    /**
     * ����ʹ�� JFinal �ֲ��Ƽ��ķ�ʽ������Ŀ
     * ���д� main ��������������Ŀ����main�������Է����������Class�ඨ���У���һ��Ҫ���ڴ�
     */
    public static void main(String[] args) {
        JFinal.start("WebContent", 80, "/", 5);
    }
}