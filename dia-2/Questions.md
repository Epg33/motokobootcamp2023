# Questions: 

1. Who controls the ledger canister?

>A= The ledger canister is controlled by the NNS

2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?

>A= subnet : pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe, Nodes : 16

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

>A= the voting power would be 9.375

4. What is wrong with the following code?
~~~
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
~~~
>A= it isn't importing the Nat type so it can use the .toText method

5.  What is wrong with the following code?
~~~
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
~~~
>A = it cant declare languages as an mutable array if it's going to pass it to a public function

6. What is wrong with the following code?
~~~
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
~~~
>A= It's not importing the Array to so it can use the .append method