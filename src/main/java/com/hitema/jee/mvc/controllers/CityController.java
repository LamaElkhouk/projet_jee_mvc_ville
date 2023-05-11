package com.hitema.jee.mvc.controllers;

import com.hitema.jee.mvc.services.CityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CityController {
    private static final Logger log = LoggerFactory.getLogger(CityController.class);

    private CityService service;

    public CityController(CityService service) {
        this.service = service;
    }

    @GetMapping("/cities")
    public ModelAndView getAll(){
        log.trace("Cities Get All called ...");
        var view = new ModelAndView();
        view.addObject("mmsg","autres attribut");
        view.addObject("cities",service.readAll());
        return view;
    }

    @GetMapping("/cities/{id}")
    public ModelAndView getById(@PathVariable Long id){
        log.trace("Cities Get By Id called ...");
        ModelAndView modelAndView = new ModelAndView("city-details");
        modelAndView.addObject("city", service.readById(id));
        return modelAndView;
    }

}
