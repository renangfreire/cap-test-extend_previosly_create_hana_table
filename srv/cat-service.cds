using { hana_db_hotel.db as db } from '../db/schema';

service CatalogService @(path : '/srv') { 
    entity CITY as projection on db.HOTEL.CITY; 
    entity CUSTOMER as projection on db.HOTEL.CUSTOMER; 
    entity HOTEL as projection on db.HOTEL.HOTEL; 
    entity RESERVATION as projection on db.HOTEL.RESERVATION; 
    entity ROOM as projection on db.HOTEL.ROOM;
    entity Users as projection on db.MyDb.Users
};