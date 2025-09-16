pragma circom 2.0.0;

template binaryProductProof(){
    signal input a;
    signal input b;
    signal output result;

    result <== a * b;
}

template ProductProof3(){
    signal input a;
    signal input b;
    signal input c;
    signal output result;

    // No podemos hacer productos no cuadraticos
    // Necesitamos instanciar 2 productos binarios
    // y separar el producto de 3 números en 2 partes
    component product1 = binaryProductProof();
    component product2 = binaryProductProof();

    product1.a <== a;
    product1.b <== b;
    
    product2.a <== product1.result;
    product2.b <== c;
    
    result <== product2.result;
    
}

component main = ProductProof3();	

/*
INPUT = {"a":3, "b":5, "c":2}
*/
