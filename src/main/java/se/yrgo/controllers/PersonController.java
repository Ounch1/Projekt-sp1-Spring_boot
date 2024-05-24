package se.yrgo.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import se.yrgo.data.PersonRepository;
import se.yrgo.domain.Person;

@Controller
@RequestMapping("/website/persons") // Base URL
public class PersonController {
    @Autowired
    private PersonRepository data; // Where all the data is stored (?)

    @RequestMapping(value="/newPerson.html",method=RequestMethod.POST) // RequestMethod.POST means it will be a page where you can submit data
    public String newPerson(Person person) {
        data.save(person);
        return "redirect:/website/persons/list.html";
    }

    @RequestMapping(value="/newPerson.html",method=RequestMethod.GET) // RequestMethod.GET means it will be a page where you can get data, this one displays the submit form
    public ModelAndView renderNewPersonForm(){
        Person newPerson = new Person();
        return new ModelAndView("newPerson", "form", newPerson);
    }

    @RequestMapping(value="/list.html", method=RequestMethod.GET) // Get all vehicles in the repository
    public ModelAndView persons(){
        List<Person> allPeople = data.findAll();
        return new ModelAndView("allPersons" , "persons",
                allPeople);
    }


    @RequestMapping(value="/person/{name}") // Do not include {} in the URL, so for example http://localhost:8080/website/vehicles/vehicle/Car1
    public ModelAndView showPersonByName(@PathVariable("name") String name) {// PathVariable means it takes value from @RequestMapping(value="/vehicle/{name}")
        Person person = data.findByName(name);
        return new ModelAndView("personInfo" , "person", person); // Pass on vehicle object to personInfo.jsp
    }
    
}

