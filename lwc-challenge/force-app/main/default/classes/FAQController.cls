public with sharing class FAQController {
    @AuraEnabled(cacheable=true)
    public static List<FAQ__c> getFAQs(String searchText, Integer page) {
        String query = 'SELECT Id, Question__c, Answer__c FROM FAQ__c';
        if (!String.isEmpty(searchText)) {
            query += ' WHERE Question__c LIKE \'%' + searchText + '%\'';
        }
        return Database.query(query);
    }
}
