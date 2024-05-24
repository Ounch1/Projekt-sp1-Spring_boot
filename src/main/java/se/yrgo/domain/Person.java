package se.yrgo.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Person {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    public long id;
    public String name;
    public int weight;
    public int age;
    public String gender;


    public Person() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getAge() {
        return age;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }


    private String getGender() {
        return gender;
    }


    public String toString(){
        return String.format("Name: %s%nWeight: %d%nAge: %d%nGender: %s%n",name,weight,age,gender);
    }
}