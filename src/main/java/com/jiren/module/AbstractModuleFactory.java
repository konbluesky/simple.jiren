package com.jiren.module;

import com.jfinal.core.Controller;

/**
 * Created by konbluesky on 14-6-5.
 */
public class AbstractModuleFactory implements IModuleFactory {

    protected void preTodo(){

    }

    @Override
    public void create(Controller c) {
        preTodo();
        nextTodo();
    }

    protected void nextTodo(){

    }
}
