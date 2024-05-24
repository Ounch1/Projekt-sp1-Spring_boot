package se.yrgo.rest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import se.yrgo.data.PersonRepository;
import se.yrgo.domain.Person;

@RestController
public class PersonRestController {

    @Autowired
    private PersonRepository data;

    @RequestMapping(value = "/persons", method = RequestMethod.GET)
    public ResponseEntity<List<Person>> allPeople() {
        List<Person> allPeople = data.findAll();
        if (allPeople.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(allPeople, HttpStatus.OK);
    }

    @RequestMapping(value= "/persons", method=RequestMethod.POST)
    public ResponseEntity createANewPerson(@RequestBody Person
                                                    person) {
        data.save(person);
        return new ResponseEntity<Person>(person,HttpStatus.CREATED);
    }


}
