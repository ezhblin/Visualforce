/**
 * Created by eshemetov on 04/10/2021.
 */

public with sharing class ContactsSet_customController {
    public Contact[] contacts {get; set;}

    public ContactsSet_customController() {
        contacts = [SELECT Id, Name FROM Contact];
    }

}