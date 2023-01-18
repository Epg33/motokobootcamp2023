import Text "mo:base/Text";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";

actor {
  //1. Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
  var sum : Nat = 0;
  var avg : Nat = 0;
  public func average (array : [Nat]) :  async Nat {
    for (val in array.vals()) {
      sum := sum + val;
    };
    avg := sum / array.size();
    return avg;
  };

  //2. Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
  var count : Nat = 0;
  public func count_character (t:Text, char : Char) : async Nat {
    for(letter in t.chars()){
      if(letter==char) {
        count += 1
      };
    };
    return count;
  };

  //3. Write a function factorial that takes a natural number n and returns the factorial of n.
  public func factorial (num : Nat ) : async Nat {
    var sum : Nat = 1;
    var range = Iter.range(1, num);
    for (value in range){
      sum := sum * value;
    };
    return sum;
  };

  //4. Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
  type Pattern = Text.Pattern;
  let char : Pattern = #char(' '); 
  public func number_of_words (phrase : Text ) : async Nat {
    var num = Text.split(phrase, char);
    var textArray = Iter.toArray(num);
    var sum = textArray.size();
    return sum;
  };

  //5. Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
  public func find_duplicatess (nums : [Nat] ) : async [Nat] {
    var size : Nat = 0;
    for (num in nums.vals()) {
      for (val in arr.vals() ) {
        if (val == num ) {
          size := size + 1; 
          Array.chain(duplicates, Array.make(val));
        };
      };
    };

    let arr : [ var Nat ] = Array.init<Nat>(size, 3);
    return nums;
  };







  public func find_duplicates(a : [Nat]) : async [Nat]{
    var buffer = Buffer.Buffer<Nat>(3);
    for (num in a.vals()){
      for (num2 in a.vals()){
        if(num==num2){
          if(Buffer.contains(num)){
            null;
          }else {
            buffer.add(num2);
          }
          
        };
      };
    }; 
    let arr = buffer.toVarArray();
    let newArr = Array.freeze<Nat>(arr);
   return newArr;
  }
};
