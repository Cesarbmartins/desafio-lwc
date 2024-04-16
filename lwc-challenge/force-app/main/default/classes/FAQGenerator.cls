public with sharing class FAQGenerator {
 
    public static void createFAQ(){
        FAQ__c faq = new FAQ__c();
        faq.Question__c = 'Como codar';
        faq.Answer__c = 'Com a mão';

        try {
            if (Schema.sObjectType.FAQ__c.isCreateable()) {
                insert faq;
            }
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
    }

    public static void createMultipleFAQ(Integer quantity){
        List<FAQ__c> faqs = new List<FAQ__c>();

        for(Integer i = 0; i < quantity; i++){
            FAQ__c faq = new FAQ__c();
            faq.Question__c = 'Como codar' + i;
            faq.Answer__c = 'Mussum Ipsum, cacilds vidis litro abertis.  Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies. Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. Segunda-feiris nun dá, eu vô me pirulitá!';
            faqs.add(faq);
        }

        try {
            if (Schema.sObjectType.FAQ__c.isCreateable()) {
                insert faqs;
            }
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

    }
}