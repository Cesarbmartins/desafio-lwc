public with sharing class FAQGenerator {
 
    public static void createFAQ(){
        FAQ__c faq = new FAQ__c();
        faq.Question__c = 'Como fais pra durmi direito';
        faq.Answer__c = 'Cara, punheta basicamente';

        try {
            insert faq;
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
    }

    public static void createMultipleFAQ(Integer quantity){
        List<FAQ__c> faqs = new List<FAQ__c>();

        for(Integer i = 0; i < quantity; i++){
            FAQ__c faq = new FAQ__c();
            faq.Question__c = 'Como fais pra durmi direito' + i;
            faq.Answer__c = 'Cara, punheta basicamente' + i;
            faqs.add(faq);
        }

        try {
            insert faqs;
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

    }
}