import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Buffer "mo:base/Buffer";
module {
  //1. In your file called utils.mo: create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.
  public func second_maximun(array: [Int]) : async Int {
    let sortedArray = Array.sort<Int>(array, Int.compare);
    return sortedArray[sortedArray.size()-1];
  };

  //2. In your file called utils.mo: create a function called remove_even that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
  public func remove_even (array : [Nat]) : async [Nat] {
    let oddArray = Buffer.Buffer<Nat>(0);
    for(num in array.vals()){
      if(num%2!=0){
        oddArray.add(num);
      };
    };
    return Buffer.toArray(oddArray);
  };

  //3. In your file called utils.mo: write a function drop that takes 2 parameters: an array [T] and a Nat n. This function will drop the n first elements of the array and returns the remainder.
  public func drop<T> (xs: [T], num: Nat) : [T] {
    let buff = Buffer.fromArray<T>(Array.reverse(xs));
    let subBuff = Buffer.subBuffer<T>(buff, 0, buff.size()-num);
    let res = Buffer.toArray(subBuff);
    let ress = Array.reverse(res);
    return ress;
  };
}