package org.ersinyildiz.dao;

import org.ersinyildiz.model.Person;

import java.util.List;


public interface PersonDao {
    void savePerson(Person person);
    Person getPerson(Long id);
    List<Person> getPersonList();

}
