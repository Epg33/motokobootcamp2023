# Questions day 4: 

1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?
>A= false. a canister has 4GB of heap memory;

2. How much accounts can a unique Principal own?.
>A= almost unlimited accounts;

3. Can we safely upgrade a canister from interface A to interface B?
~~~
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```motoko
Interface B
```motoko
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
~~~
>A=true