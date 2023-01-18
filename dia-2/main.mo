import Text "mo:base/Text";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
import Debug "mo:base/Debug";

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
  public func find_duplicates(a : [Nat]) : async [Nat]{
    var numbers = Buffer.Buffer<Nat>(0);
    var repeat : Nat = 0;
    var contain : Bool = false;
    for(num in a.vals()){
      for(num2 in a.vals()){
        if(num == num2){
          repeat := repeat + 1;
        };
      };
      if(repeat > 1){
        contain := Buffer.contains<Nat>(numbers, num, func (x : Nat, y: Nat) : Bool {x==y});
        repeat := 0;
        if(contain != true){
            numbers.add(num);
        }; 
      };
      repeat := 0;
    };
    return Buffer.toArray(numbers);
  };

  //6. Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
  public func convert_to_binary(n : Nat) : async Text{
    var num : Text = Nat.toText(n);
    var blob : Blob = Text.encodeUtf8(num);
    Debug.print(debug_show(blob));
    return debug_show(blob);
  };
};
