public class Exemplo2Apex 
{
    @AuraEnabled
    public static String retornoBackend(String apelido)
    {
        String retorno = 'Recebi o apelido' + apelido + 'no bakend!';

        return retorno;
    }
}