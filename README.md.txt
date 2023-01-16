# Questions

1. How much is the current memory capacity of a canister?
>A= 8 gigabytes

2. What is the issue with the following code sample?
~~~
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
~~~
>A= let is a contant varible so it can't change the value in the increment_counter function.

3. What is the issue with the following code sample?
~~~
  var message : Text = 0;
    public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  public query func see_message() : async Text {
    return(message);
  };
~~~

>A= message is a text type variable, but it assingment is a nat type value 

4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.
>A=false;
