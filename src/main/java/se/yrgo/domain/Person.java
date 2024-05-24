package se.yrgo.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Person {
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Id
    private long id;
    private String name;
    private int weight;
    private int age;
    private String gender;



    public Person() {}

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

    private void setAge(int age) {
        this.age = age;
    }

    private int getAge() {
        return age;
    }

    private void setGender(String gender) {
        this.gender = gender;
    }

    private String getGender() {
        return gender;  
    }


    public String toString() {
        return "name: " + this.name + " | weight: " + this.weight;
    }
}