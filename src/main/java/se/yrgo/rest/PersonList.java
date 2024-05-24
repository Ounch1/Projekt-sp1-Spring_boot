package se.yrgo.rest;

import se.yrgo.domain.Person;

import java.util.List;

public class PersonList {
    private List<Person> people;

    public PersonList() {}

    public PersonList(List<Person> people) {
        this.people = people;
    }

    public List<Person> getPeople() {
        return people;
    }

    public void setPeople(List<Person> people) {
        this.people = people;
    }
}