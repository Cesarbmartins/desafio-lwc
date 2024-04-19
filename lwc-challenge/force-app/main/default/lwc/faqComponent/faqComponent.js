import { LightningElement, track, wire } from 'lwc';
import getFAQs from '@salesforce/apex/FAQController.getFAQs';

const MIN_LOADING_TIME = 600;

export default class FaqComponent extends LightningElement {
    @track faqList = [];
    @track displayedFaqs = [];
    @track searchText = '';
    @track currentPage = 1;
    @track itemsPerPage = 10;
    loading = false;

    @wire(getFAQs, { searchText: '$searchText', page: '$currentPage', pageSize: '$itemsPerPage' })
    wiredFAQs({ error, data }) {
        if (data) {
            this.faqList = data;
            this.updateDisplayedFaqs();
            this.hideLoadingAfterDelay();
        } else if (error) {
            console.error('Erro ao buscar FAQs', error);
            this.hideLoading();
        } else {
            this.showLoading();
        }
    }

    get isFirstPage() {
        return this.currentPage === 1;
    }

    get isLastPage() {
        const startIndex = (this.currentPage - 1) * this.itemsPerPage;
        const endIndex = startIndex + this.itemsPerPage;
        return endIndex >= this.faqList.length;
    }

    handleSearch(event) {
        this.searchText = event.target.value;
        this.currentPage = 1;
    }

    handleItemsPerPageChange(event) {
        this.itemsPerPage = parseInt(event.target.value, 10);
        this.currentPage = 1;
    }

    handleNext() {
        this.currentPage++;
    }

    handlePrevious() {
        this.currentPage--;
    }

    updateDisplayedFaqs() {
        const startIndex = (this.currentPage - 1) * this.itemsPerPage;
        const endIndex = startIndex + this.itemsPerPage;
        this.displayedFaqs = this.faqList.slice(startIndex, endIndex);
    
        if (this.displayedFaqs.length === 0 && this.searchText.length > 0) {
            this.displayedFaqs.push({
                Id: '0',
                Question__c: 'Essa pergunta não existe em nossa base de dados.',
                Answer__c: ''
            });
        }
    }

    showLoading() {
        this.loading = true;
    }

    hideLoading() {
        this.loading = false;
    }

    hideLoadingAfterDelay() {
        setTimeout(() => {
            this.hideLoading();
        }, MIN_LOADING_TIME);
    }
}
