import { LightningElement, wire } from 'lwc';
import getFAQs from '@salesforce/apex/FAQController.getFAQs';

const ITEMS_PER_PAGE = 5;

export default class FaqComponent extends LightningElement {
    faqList = [];
    displayedFaqs = [];
    searchText = '';
    showButton = false;

    @wire(getFAQs)
    wiredFAQs({ error, data }) {
        if (data) {
            this.faqList = data.map(faq => ({
                Id: faq.Id,
                Question__c: faq.Question__c,
                Answer__c: faq.Answer__c
            }));
            this.displayedFaqs = this.faqList.slice(0, ITEMS_PER_PAGE);
            if (this.faqList.length > ITEMS_PER_PAGE) {
                this.showButton = true;
            }
        } else if (error) {
            console.error('Erro ao buscar FAQs', error);
        }
    }

    get filteredFaqs() {
        return this.faqList.filter(faq => 
            faq.Question__c.toLowerCase().includes(this.searchText.toLowerCase()));
    }

    handleSearch(event) {
        this.searchText = event.target.value;
        this.displayedFaqs = this.filteredFaqs.slice(0, ITEMS_PER_PAGE);
        this.showButton = this.filteredFaqs.length > ITEMS_PER_PAGE;
    }

    handleViewMore() {
        const currentlyDisplayed = this.displayedFaqs.length;
        const remainingFaqs = this.filteredFaqs.slice(currentlyDisplayed, currentlyDisplayed + ITEMS_PER_PAGE);
        this.displayedFaqs = [...this.displayedFaqs, ...remainingFaqs];
        this.showButton = this.filteredFaqs.length > this.displayedFaqs.length;
    }
}
