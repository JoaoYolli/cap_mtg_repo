using { sap.capire.cards as my } from '../db/schema';

service TaskService {

    entity Carts as projection on my.Carts;
    
}

    
    