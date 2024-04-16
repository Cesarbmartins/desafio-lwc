import { LightningElement, track, wire } from 'lwc';
import getFAQs from '@salesforce/apex/FAQController.getFAQs';

const ITEMS_PER_PAGE = 5;

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
        return this.displayedFaqs.length < ITEMS_PER_PAGE;
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
    }
}
