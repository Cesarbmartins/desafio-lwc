public with sharing class FAQController {
    @AuraEnabled(cacheable=true)
    public static List<FAQ__c> getFAQs(String searchText, Integer page) {
        String query = 'SELECT Id, Question__c, Answer__c FROM FAQ__c';
        List<FAQ__c> faqs;
        
        if (!String.isEmpty(searchText)) {
            query += ' WHERE Question__c LIKE :searchText';
        }
        
        query += ' LIMIT 300';
        
        if (!String.isEmpty(searchText)) {
            faqs = Database.query(query.replace(':searchText', '%' + searchText + '%'));
        } else {
            faqs = Database.query(query);
        }
        
        return faqs;
    }
}
