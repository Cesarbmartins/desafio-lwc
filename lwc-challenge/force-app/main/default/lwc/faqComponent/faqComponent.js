import { LightningElement, track, wire } from 'lwc';
import getFAQs from '@salesforce/apex/FAQController.getFAQs';

const ITEMS_PER_PAGE = 10;

export default class FaqComponent extends LightningElement {
    @track faqList = [];
    @track displayedFaqs = [];
    @track searchText = '';
    currentPage = 1;

    @wire(getFAQs, { searchText: '$searchText', page: '$currentPage' })
    wiredFAQs({ error, data }) {
        if (data) {
            this.faqList = data;
            this.updateDisplayedFaqs();
        } else if (error) {
            console.error('Erro ao buscar FAQs', error);
        }
    }

    get isFirstPage() {
        return this.currentPage === 1;
    }

    get isLastPage() {
        const startIndex = (this.currentPage - 1) * ITEMS_PER_PAGE;
        const endIndex = startIndex + ITEMS_PER_PAGE;
        return endIndex >= this.faqList.length;
    }

    handleSearch(event) {
        this.searchText = event.target.value;
        this.currentPage = 1;
    }

    handleNext() {
        this.currentPage++;
    }

    handlePrevious() {
        this.currentPage--;
    }

    updateDisplayedFaqs() {
        const startIndex = (this.currentPage - 1) * ITEMS_PER_PAGE;
        const endIndex = startIndex + ITEMS_PER_PAGE;
        this.displayedFaqs = this.faqList.slice(startIndex, endIndex);
    
        if (this.displayedFaqs.length === 0 && this.searchText.length > 0) {
            this.displayedFaqs.push({
                Id: '0',
                Question__c: 'Essa pergunta não existe em nossa base de dados.',
                Answer__c: ''
            });
        }
    }
    
}
