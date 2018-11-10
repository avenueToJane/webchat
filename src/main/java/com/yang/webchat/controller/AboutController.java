package com.yang.webchat.controller;

import com.yang.webchat.pojo.Log;
import com.yang.webchat.service.ILogService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * 
* <p>Title: AboutController </p>
* <p>Description: </p>
* <p>Company: xxx</p> 
* @author Mr.yang
* @date 2018年11月6日 下午5:44:04
 */
@Controller
@RequestMapping(value = "about")
public class AboutController {

    @Resource
    private ILogService logService;

    @RequestMapping(value = "/")
    public ModelAndView about( @RequestParam(defaultValue = "1") int page) {
      
        ModelAndView view = new ModelAndView("about");
       
        return view;
    }
    
   

}
