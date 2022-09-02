({
    enviarApelido: function (component, event) {
        var action = component.get('c.retornoBackend');

        action.setParams({
            apelido: component.get('v.apelido')
        });

        action.setCallback(this, function (response) {
            let resposta = response.getReturnValue();
            console.log('Voltamos do back-end');
            console.log('Recebemos isso: ', resposta);
        });

        $A.enqueueAction(action);
    }
})