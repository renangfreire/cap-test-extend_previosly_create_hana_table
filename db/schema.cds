namespace hana_db_hotel.db; 
context HOTEL { 
    @cds.persistence.exists 
    entity CITY { 
        key zip : String(5) not null; 
        name : String(30) not null; 
        state : String(2) not null;
    }; 
    @cds.persistence.exists 
    entity CUSTOMER { 
        key cno : Decimal(4,0) not null; 
        title : String(7); 
        firstname : String(20); 
        name : String(40) not null; 
        zip : String(5); 
        address : String(40) not null;
    }; 
    @cds.persistence.exists 
    entity HOTEL { 
        key hno : Decimal(4,0) not null; 
        name : String(50) not null; 
        zip : String(5); 
        address : String(40) not null;
    }; 
    @cds.persistence.exists 
    entity RESERVATION { 
        key rno : Decimal(4,0) not null; 
        cno : Decimal(4,0); 
        hno : Decimal(4,0); 
        type : String(6); 
        arrival : Date not null; 
        departure : Date not null;
    }; 
    @cds.persistence.exists 
    entity ROOM { 
        key hno : Decimal(4,0) not null; 
        key type : String(6) not null; 
        free : Decimal(3,0); 
        price : Decimal(6,2);
    };   
}

context MyDb {
    entity Users {
        key id : UUID;
        name : String
    }
}