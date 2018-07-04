/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author rodri
 */
public class DAO {
    
    private static final String PERSISTENCE_DATABASE= "BasicEnglish";
    private static EntityManager entityManager;
    
     public DAO(){
        if (DAO.getEntityManager()==null){
            EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_DATABASE);
            this.entityManager = factory.createEntityManager();
            
        }
    }
     
     public Object findById(Class c, int id){
         Query q = entityManager.createQuery(String.format("select p from %s p where p.id = :id",c.getName()));
         q.setParameter("id",id);
         return q.getSingleResult();
    }
    
    public List<Object> findAll(Class c){
         Query q = entityManager.createQuery(String.format("select p from %s p" ,c.getName()));
         List<Object> result = q.getResultList();
         return result;
    }


    public static EntityManager getEntityManager() {
        return entityManager;
    }

    public static void setEntityManager(EntityManager entityManager) {
        DAO.entityManager = entityManager;
    } 
    
        public void saveEntity(Object object) {    
        this.entityManager.getTransaction().begin();
        this.entityManager.persist(object);
        this.entityManager.getTransaction().commit(); 
    }
    
    public void atualizarEntity(Object object) {
        this.entityManager.getTransaction().begin();
        this.entityManager.merge(object);
        this.entityManager.getTransaction().commit(); 
    }
    
    public void deleteEntity(Object object) {
        this.entityManager.getTransaction().begin();
        this.entityManager.remove(object);
        this.entityManager.getTransaction().commit(); 
    }
}
