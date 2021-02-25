package org.ersinyildiz.service;

import org.ersinyildiz.model.Person;

import java.util.List;

public interface PersonService {
    void savePerson(Person person);
    Person getPerson(Long id);
    List<Person> getPersonList();
}
