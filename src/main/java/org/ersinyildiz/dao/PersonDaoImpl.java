package org.ersinyildiz.dao;

import org.ersinyildiz.model.Person;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class PersonDaoImpl implements PersonDao{

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Transactional
    @Override
    public void savePerson(Person person) {
        sessionFactory.getCurrentSession().persist(person);
    }

    @Transactional
    @Override
    public Person getPerson(Long id) {
        return sessionFactory.getCurrentSession().load(Person.class,id);
    }

    @Transactional
    @Override
    public List<Person> getPersonList() {
        return sessionFactory.getCurrentSession().createQuery("from person",Person.class).getResultList();
    }

}
