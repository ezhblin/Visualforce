/**
 * Created by eshemetov on 04/10/2021.
 */

public with sharing class ContactURL_customController {
    public Contact contact {get; set;}

    public ContactURL_customController() {
        contact = [SELECT Id, Name FROM Contact WHERE Id = :ApexPages.currentPage().getParameters().get('Id')];
    }

    public PageReference toAll() {
        PageReference allContacts = new PageReference('/apex/ContactsSet_custom');

        return allContacts;
    }
}