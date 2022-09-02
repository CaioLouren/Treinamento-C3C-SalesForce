public with sharing class Exemplo4 {
    @AuraEnabled
    public static void criarPadaria(String frios, String bolacha, String bolo, String pao, String numeroDoCliente, String emailDoProprietario ){
        try {
            Padaria__c novaPadaria = new Padaria__c();
            
            novaPadaria.Frios__c = frios;
            novaPadaria.Bolacha__c = bolacha;
            novaPadaria.Bolo__c = bolo;
            novaPadaria.P_o__c = pao;
            novaPadaria.Numero_do_Cliente__c = numeroDoCliente;
            novaPadaria.Email_do_proprietario__c = emailDoProprietario;

            insert novaPadaria;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
