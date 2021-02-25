package org.ersinyildiz.controller;

import org.ersinyildiz.model.Person;
import org.ersinyildiz.service.PersonService;
import org.ersinyildiz.service.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PersonController {

    private PersonService personService;
    @Autowired
    public void setPersonService(PersonService personService) {
        this.personService = personService;
    }
    @ModelAttribute("person")
    public Person initModel(){
        return new Person();
    }
    @RequestMapping(value= { "/", "index"})
    public String home() {
        return "index";
    }
    @RequestMapping("/register")
    public String register() {
        return "register";
    }
    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("person",new Person());
        model.addAttribute("personList",personService.getPersonList());
        return "list";
    }
    @RequestMapping(method = RequestMethod.POST,value = "/add")
    public String addPerson(@ModelAttribute("person") Person person){
        personService.savePerson(person);
        return "index";
    }

}
