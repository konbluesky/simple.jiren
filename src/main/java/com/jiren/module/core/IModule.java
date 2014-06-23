package com.jiren.module.core;


import com.jfinal.core.Controller;

/**
 * Created by konbluesky on 14-6-23.
 */
public interface IModule{
    public void execute() throws ModuleException;
}
