package com.jiren.base.control;

import com.jfinal.core.Controller;
import com.jfinal.log.Log4jLoggerFactory;
import com.jfinal.log.Logger;
import com.jiren.module.core.IModule;
import com.jiren.module.core.ModuleException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by konbluesky on 14-6-4.
 */
public abstract class AbstractSiteControl  extends Controller implements IModule {
    private static Logger logger= new Log4jLoggerFactory().getLogger(AbstractSiteControl.class);

    protected List<?> list;// 公共list

    List<IModule> modules=new ArrayList<IModule>();

    @Override
    public void execute() {
        if(modules.isEmpty()){
            return ;
        }
        for(IModule m:modules){
            try{
                m.execute();
            }catch (ModuleException e){
                e.printStackTrace();
                logger.error("执行模块出现异常"+e.getLocalizedMessage());
            }catch (Exception e){
                e.printStackTrace();
                logger.error("不可预知的错误"+e.getLocalizedMessage());
            }

        }
    }
    public void setModule(IModule m){
        modules.add(m);
    }

}
