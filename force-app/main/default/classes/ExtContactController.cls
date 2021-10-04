/**
 * Created by eshemetov on 04/10/2021.
 */

public with sharing class ExtContactController {
    public ExtContactController(ApexPages.StandardController standardController) {

    }

    public PageReference toAll() {
        PageReference allContacts = new PageReference('/apex/ContactsSet');

        return allContacts;
    }
}