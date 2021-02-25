package org.ersinyildiz.service;

import org.ersinyildiz.dao.PersonDao;
import org.ersinyildiz.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService{

    private PersonDao personDao;

    public void setPersonDao(PersonDao personDao) {
        this.personDao = personDao;
    }

    @Override
    public void savePerson(Person person) {
        personDao.savePerson(person);
    }

    @Override
    public Person getPerson(Long id) {
        return personDao.getPerson(id);
    }

    @Override
    public List<Person> getPersonList() {
        return personDao.getPersonList();
    }
}
