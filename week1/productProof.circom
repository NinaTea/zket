pragma circom 2.0.0;

template ProductProof(){
    signal input a;
    signal input b;
    signal output c;

    c <== a * b;
}

component main = ProductProof();	

/*
INPUT = {"a":3, "b":5}
*/
