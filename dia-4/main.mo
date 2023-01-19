import List "mo:base/List";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";

actor {
  type List<T> = List.List<T>;
  func unique<T>(l : List<T>) : List<T> {
    var newList = Buffer.Buffer<T>(0);
    var a = List.toArray<T>(l);
    var repeat : Nat = 0;
    var contain : Bool = false;
    for(num in a.vals()){
      for(num2 in a.vals()){
        if(num == num2){
          repeat := repeat + 1;
        };
      };
      if(repeat > 1){
        contain := Buffer.contains<T>(newList, num, func (x : T, y: T) : Bool {x==y});
        repeat := 0;
        if(contain != true){
            newList.add(num);
        }; 
      };
      repeat := 0;
    };
    return List.fromArray<T>(Buffer.toArray<T>(newList));
  };
};
