package se.yrgo.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import se.yrgo.domain.Person;

@Repository
public interface VehicleRepository extends JpaRepository<Person, Long> {
    public Person findByName(String name);
}