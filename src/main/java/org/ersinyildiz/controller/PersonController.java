package org.ersinyildiz.controller;

import org.ersinyildiz.model.Person;
import org.ersinyildiz.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonController {

    private PersonService personService;
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
    @PostMapping(value = "/add")
    public String addPerson(@ModelAttribute("person") Person person){
        personService.savePerson(person);
        return "index";
    }
}
