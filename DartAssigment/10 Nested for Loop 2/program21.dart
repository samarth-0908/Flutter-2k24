class Demo {
  void playerInfo(String? pName, int? jerNo, [String? countryName]) {
    print("Player Name: $pName , Jersey No: $jerNo , CountryName: $countryName");

  }

// Compulsory we have to give the optional parameter at last only even we cant write in at start or at middle
//   void playerInfo2(String? pName, [String? countryName] , int? jerNo ) {
//     print("Player Name: $pName  , CountryName: $countryName" , Jersey No: $jerNo);
    
//   }


 }

void main() {
  Demo obj = Demo();
  obj.playerInfo("Virat", 18);
}
