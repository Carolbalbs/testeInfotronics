function encontrarDivisores(numero) {
    let divisores = [];
     
    for (let i = 1; i <= numero-1; i++) {
        if (numero % i === 0) {
            divisores.push(i);
        }
    }

    return divisores;
}
function numeroPerfeito(divisores) {
    
    let soma = encontrarDivisores(divisores).reduce((accumulator, value)=>accumulator+value,0)
   
    return soma;
}

const numeroParaVerificar = parseInt(prompt(`Digite o numero para verificar se ele é perfeito`))

alert(`Divisores de ${numeroParaVerificar}: ${encontrarDivisores(numeroParaVerificar).join(', ')}`);
alert(`Soma de Divisores e ${numeroPerfeito(numeroParaVerificar)}`);
if (numeroPerfeito(numeroParaVerificar) === numeroParaVerificar) {
    alert(`Esse é um numero perfeito`)
}else{
    alert(`Esse não é um numero perfeito`)

}