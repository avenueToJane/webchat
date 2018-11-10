package com.yang.webchat.controller;

import com.alibaba.fastjson.JSON;
import com.yang.webchat.pojo.Log;
import com.yang.webchat.service.ILogService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.json.JsonArray;

import java.util.List;

/**
 * Author :  Amayadream
 * Date   :  2016.01.10 00:23
 * TODO   :
 */
@Controller
@RequestMapping(value = "")
public class LogController {

    @Resource
    private ILogService logService;

    @RequestMapping(value = "{userid}/log")
    public ModelAndView selectAll(@PathVariable("userid") String userid, @RequestParam(defaultValue = "1") int page) {
       // int pageSize = 5;
        ModelAndView view = new ModelAndView("log");
       /* List<Log> list = logService.selectLogByUserid(userid, page, pageSize);
        int count = logService.selectCountByUserid(userid, pageSize);
       String json = JSON.toJSONString(list);//将list转为json字符串
       
        view.addObject("list", json);
        view.addObject("count", count);*/
        return view;
    }
    
    @RequestMapping(value = "log/log")
    @ResponseBody
    public Object select() {
        List<Log> list = logService.selectAllLog();
       String json = JSON.toJSONString(list);//将list转为json字符串
        return json;
    }

}
