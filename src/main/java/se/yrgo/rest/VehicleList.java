package se.yrgo.rest;

import se.yrgo.domain.Person;

import java.util.List;

public class VehicleList {
    private List<Person> people;

    public VehicleList() {}

    public VehicleList(List<Person> people) {
        this.people = people;
    }

    public List<Person> getVehicles() {
        return people;
    }

    public void setVehicles(List<Person> people) {
        this.people = people;
    }
}