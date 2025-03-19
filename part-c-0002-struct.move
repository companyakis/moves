// Add a struct called SpiderDna with a single field called dna_digits of type u64 to the spider_nest module.

module 0xcafe::spider_nest {

    struct SpiderDna has key {
        dna_digits: u64,
    }
}


/*
On Aptos, all data written to global storage needs to be declared in a struct that has the key attribute. 

One common confusion is between global storage and local variables. Unless explicitly declared in a struct with the key attribute, 
all variables declared and modified in a function are local variables and thus not stored on the blockchain (in global storage). 
Also note that the struct name is capitalized by convention


*/
