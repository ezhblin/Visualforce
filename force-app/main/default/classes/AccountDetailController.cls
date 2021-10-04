/**
 * Created by eshemetov on 04/10/2021.
 */

public with sharing class AccountDetailController {
    public Id cContactId {get; set;}

    public Account getAccount() {
        Contact contact = [
                SELECT Id, Name, AccountId
                FROM Contact
                WHERE Id = :cContactId
        ];
        Account account = [
                SELECT Name, AccountNumber, Phone, BillingCountry, BillingCity, BillingStreet
                FROM Account
                WHERE Id = :contact.AccountId
        ];

        return account;
    }

}