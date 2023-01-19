import List "mo:base/List";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Iter "mo:base/Iter";

actor {
  // 1. Write a function unique that takes a list l of type List and returns a new list with all duplicate elements removed.

  type List<T> = List.List<T>;
  func unique<T>(l : List<T>) : List<T> {
    var newList = Buffer.Buffer<T>(0);
    var a = List.toArray<T>(l);
    var repeat : Nat = 0;
    var contain : Bool = false;
    for (num in a.vals()) {
      for (num2 in a.vals()) {
        if (num == num2) {
          repeat := repeat + 1;
        };
      };
      if (repeat > 1) {
        contain := Buffer.contains<T>(newList, num, func(x : T, y : T) : Bool { x == y });
        repeat := 0;
        if (contain != true) {
          newList.add(num);
        };
      };
      repeat := 0;
    };
    return List.fromArray<T>(Buffer.toArray<T>(newList));
  };

  //2. Write a function reverse that takes l of type List and returns the reversed list.
  func reverse<T>(l : List<T>) : List<T> {
    let reversedList = List.reverse<T>(l);
    return reversedList;
  };

  //3. Write a function is_anonymous that takes no arguments but returns a Boolean indicating if the caller is anonymous or not.
  shared ({ caller }) func isAnonymus() : async Bool {
    switch (caller) {
      case (caller) {
        return true;
      };
      case (_) {
        return false;
      };
    };
  };

  //4. Write a function find_in_buffer that takes two arguments, buf of type Buffer and val of type T, and returns the optional index of the first occurrence of "val" in "buf".
  private func find_in_buffer<T>(buf : Buffer.Buffer<T>, val : T) : ?Nat {
    var index = 0;
    var rightIndex = 0;
    for (vals in buf.vals()) {
      index += 1;
      if (val == vals) {
        rightIndex := index;
      };
    };
    return ?rightIndex;
  };

  //5.Add a function called get_usernames that will return an array of tuples (Principal, Text) which contains all the entries in usernames.
  let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);
  type X = (Principal, Text);
  public shared ({ caller }) func add_username(name : Text) : async () {
    usernames.put(caller, name);
  };

  public func get_usernames() : async [(Principal, Text)] {
    var e = Iter.toArray<X>(usernames.entries());

    return e;
  };

};
