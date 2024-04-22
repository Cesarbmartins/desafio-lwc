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

    public static void createFAQs() {
        List<FAQ__c> faqs = new List<FAQ__c>();
    
        // FAQ 1
        FAQ__c faq1 = new FAQ__c();
        faq1.Question__c = 'Como aprender programação?';
        faq1.Answer__c = 'Você pode aprender programação através de cursos online, tutoriais, livros e prática constante.';
        faqs.add(faq1);
    
        // FAQ 2
        FAQ__c faq2 = new FAQ__c();
        faq2.Question__c = 'Qual a linguagem de programação mais usada?';
        faq2.Answer__c = 'Atualmente, a linguagem de programação mais usada é JavaScript, seguida por Python e Java.';
        faqs.add(faq2);
    
        // FAQ 3
        FAQ__c faq3 = new FAQ__c();
        faq3.Question__c = 'Como resolver problemas de lógica de programação?';
        faq3.Answer__c = 'Para resolver problemas de lógica de programação, é útil praticar resolvendo exercícios e quebrar o problema em etapas menores.';
        faqs.add(faq3);
    
        // FAQ 4
        FAQ__c faq4 = new FAQ__c();
        faq4.Question__c = 'O que é um loop em programação?';
        faq4.Answer__c = 'Um loop é uma estrutura de controle que repete um bloco de código até que uma condição específica seja atendida.';
        faqs.add(faq4);
    
        // FAQ 5
        FAQ__c faq5 = new FAQ__c();
        faq5.Question__c = 'Qual é a diferença entre compilação e interpretação?';
        faq5.Answer__c = 'Na compilação, o código fonte é traduzido para linguagem de máquina antes da execução. Na interpretação, o código fonte é traduzido para linguagem de máquina linha por linha durante a execução.';
        faqs.add(faq5);
    
        // FAQ 6
        FAQ__c faq6 = new FAQ__c();
        faq6.Question__c = 'O que é versionamento de código?';
        faq6.Answer__c = 'Versionamento de código é o processo de rastrear e gerenciar alterações no código fonte ao longo do tempo, geralmente usando sistemas como Git.';
        faqs.add(faq6);
    
        // FAQ 7
        FAQ__c faq7 = new FAQ__c();
        faq7.Question__c = 'Qual é a diferença entre programação orientada a objetos e programação procedural?';
        faq7.Answer__c = 'Na programação orientada a objetos, os programas são estruturados em torno de objetos que podem conter dados e métodos. Na programação procedural, os programas são estruturados em torno de funções ou rotinas.';
        faqs.add(faq7);
    
        // FAQ 8
        FAQ__c faq8 = new FAQ__c();
        faq8.Question__c = 'O que é uma API?';
        faq8.Answer__c = 'Uma API (Interface de Programação de Aplicativos) é um conjunto de regras e definições que permite que diferentes softwares se comuniquem entre si.';
        faqs.add(faq8);
    
        // FAQ 9
        FAQ__c faq9 = new FAQ__c();
        faq9.Question__c = 'O que é debugging?';
        faq9.Answer__c = 'Debugging é o processo de identificar e corrigir erros em um programa de computador.';
        faqs.add(faq9);
    
        // FAQ 10
        FAQ__c faq10 = new FAQ__c();
        faq10.Question__c = 'Como melhorar minhas habilidades de programação?';
        faq10.Answer__c = 'Você pode melhorar suas habilidades de programação praticando regularmente, participando de projetos de código aberto e buscando feedback de outros programadores.';
        faqs.add(faq10);
    
        // FAQ 11
        FAQ__c faq11 = new FAQ__c();
        faq11.Question__c = 'Qual é a importância da documentação de código?';
        faq11.Answer__c = 'A documentação de código é importante para ajudar os desenvolvedores a entenderem como o código funciona, facilitando a manutenção e a colaboração.';
        faqs.add(faq11);
    
        // FAQ 12
        FAQ__c faq12 = new FAQ__c();
        faq12.Question__c = 'O que é um framework?';
        faq12.Answer__c = 'Um framework é uma estrutura de suporte definida em que outro software pode ser construído e executado.';
        faqs.add(faq12);
    
        // FAQ 13
        FAQ__c faq13 = new FAQ__c();
        faq13.Question__c = 'Como escolher a linguagem de programação certa para um projeto?';
        faq13.Answer__c = 'Ao escolher uma linguagem de programação para um projeto, considere os requisitos do projeto, a experiência da equipe e a escalabilidade da linguagem.';
        faqs.add(faq13);
    
        // FAQ 14
        FAQ__c faq14 = new FAQ__c();
        faq14.Question__c = 'O que é um banco de dados?';
        faq14.Answer__c = 'Um banco de dados é um sistema de armazenamento de dados que permite que os dados sejam facilmente acessados, manipulados e atualizados.';
        faqs.add(faq14);
    
        // FAQ 15
        FAQ__c faq15 = new FAQ__c();
        faq15.Question__c = 'O que é um algoritmo?';
        faq15.Answer__c = 'Um algoritmo é uma sequência finita de instruções ou regras que, se seguidas corretamente, resolverão um problema específico.';
        faqs.add(faq15);
    
        // FAQ 16
        FAQ__c faq16 = new FAQ__c();
        faq16.Question__c = 'Como lidar com requisitos em mudança durante o desenvolvimento de software?';
        faq16.Answer__c = 'Para lidar com requisitos em mudança, é importante adotar metodologias ágeis, como Scrum ou Kanban, que permitem uma resposta flexível a mudanças.';
        faqs.add(faq16);
    
        // FAQ 17
        FAQ__c faq17 = new FAQ__c();
        faq17.Question__c = 'O que é a metodologia Scrum?';
        faq17.Answer__c = 'Scrum é uma metodologia ágil de desenvolvimento de software que enfatiza a entrega contínua de valor ao cliente através de iterações curtas e colaborativas.';
        faqs.add(faq17);
    
        // FAQ 18
        FAQ__c faq18 = new FAQ__c();
        faq18.Question__c = 'O que é um IDE?';
        faq18.Answer__c = 'Um IDE (Ambiente de Desenvolvimento Integrado) é um software que fornece ferramentas integradas para desenvolvimento de software, como editor de código, depurador e compilador.';
        faqs.add(faq18);
    
        // FAQ 19
        FAQ__c faq19 = new FAQ__c();
        faq19.Question__c = 'O que é DevOps?';
        faq19.Answer__c = 'DevOps é uma cultura e conjunto de práticas que automatiza os processos entre desenvolvimento de software e operações de TI, permitindo entregas mais rápidas e confiáveis de software.';
        faqs.add(faq19);
    
        // FAQ 20
        FAQ__c faq20 = new FAQ__c();
        faq20.Question__c = 'Como evitar bugs em software?';
        faq20.Answer__c = 'Para evitar bugs em software, é importante realizar testes rigorosos, revisões de código e usar boas práticas de programação, como modularidade e coesão.';
        faqs.add(faq20);
    
        try {
            if (Schema.sObjectType.FAQ__c.isCreateable()) {
                insert faqs;
            }
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
    }
    

    public static void createMultipleFAQ(Integer quantity){
        List<FAQ__c> faqs = new List<FAQ__c>();

        for(Integer i = 0; i < quantity; i++){
            FAQ__c faq = new FAQ__c();
            faq.Question__c = 'Como posso fazer pra criar uma batch com Schedule?' + i;
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