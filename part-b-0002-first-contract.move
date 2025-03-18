module mustafa::first_steps {

    use std::string::{String,utf8};
    use std::signer;

    struct MyMessage has key {
        my_msg: String
    }

    public entry fun create_message(account: &signer) {

        if (!exists<MyMessage>(signer::address_of(account))) {

            let message = MyMessage {
                my_msg: utf8(b"I'm here. How can I help you?")
            };
            move_to(account, message);
        }
        
    }

    public fun get_message(account: &signer): String acquires MyMessage {

        let content = borrow_global<MyMessage>(signer::address_of(account));

        content.my_msg
    }
}
