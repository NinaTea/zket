pragma circom 2.2.2;

include "../node_modules/circomlib/circuits/poseidon.circom";

template InputToHash(){

    signal input preimage;
    signal input hash; //es necesaria? no se usa en el circuito
    signal output hashOutput;

    component hasher = Poseidon(1);

    hasher.inputs[0] <== preimage;
    hashOutput <== hasher.out;

}

component main =  InputToHash();

/* INPUT = {
    "preimage": "12345",
    "hash": "4267533774488295900887461483015112262021273608761099826938271132511348470966"
} */