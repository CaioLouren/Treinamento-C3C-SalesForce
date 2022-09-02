public with sharing class Exemplo3Apex {
    @AuraEnabled
    public static List<Account> buscarListaContas(){
        try {
            List<Account> listaContas = [SELECT Id, Name, Phone FROM Account WHERE Phone != NULL OR Name != NULL];

            return listaContas;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}