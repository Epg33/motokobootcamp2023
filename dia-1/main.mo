actor {
  //Coding Challenges

  //1. Write a function multiply that takes two natural numbers and returns the product.
  var multiplied : Nat = 0;
  public func multiply(n : Nat, m : Nat) : async Nat {
    multiplied := n * m;
    return multiplied;
  };

  //2. Write a function volume that takes a natural number n and returns the volumte of a cube with side length n.
  var volume : Nat = 0;
  public func calculate_volume(n : Nat) : async Nat {
    volume := n * n * n;
    return volume;
  };

  //3. Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.
  var minutes : Nat = 0;
  public func hours_to_minutes(n : Nat) : async Nat {
    minutes := n * 60;
    return minutes;
  };

  //4. Write two functions set_counter & get_counter .
  //- set_counter sets the value of counter to n.
  var counter : Nat = 0;
  public func set_counter(n : Nat) : async () {
    counter := n;
  };

  //- get_counter returns the current value of counter.
  public func get_counter() : async Nat {
    return counter;
  };

  //5. Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
  var test : Bool = false;
  public func test_divide(n : Nat, m : Nat) : async Bool {
    if (n % m != 0) {
      test := false;
    } else {
      test := true;
    };
    return test;
  };

  //6. Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
  var isEven : Bool = false;
  public func test_number(n : Nat) : async Bool {
    if (n % 2 != 0) {
      isEven := false;
    } else {
      isEven := true;
    };
    return isEven;
  };
};
