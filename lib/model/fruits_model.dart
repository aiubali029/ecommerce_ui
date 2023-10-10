class FruitsModel {
  int id;
  String img;
  String name ;
  int qty;
  double price;

  FruitsModel(this.id,this.img,this.name,this.qty,this.price);

  // static List<Fruits> fruits_details(){
  //   return [
  //     Fruits(1,'images/strawberry.png','Strawberry',75,10.14),
  //     Fruits(2,'images/strawberry2.jpeg','Strawberry',57,14.10),
  //     Fruits(3,'images/apple.jpg','Apple',75,10.14),
  //     Fruits(4,'images/orange.png','Orange',44,10.14),
  //     Fruits(5,'images/dragon.jpg','Dragon',60,11.14),
  //     Fruits(6,'images/capsicum.jpg','Capsicum',70,10.14),
  //     Fruits(7,'images/orange2.jpeg','Orange2',16,78.14),
  //     Fruits(8,'images/dragon2.png','Dragon2',18,67.14)
  //   ];
  // }



}

 List<FruitsModel> fruitList =
 [
FruitsModel(1,'images/strawberry.png','Strawberry',75,10.14),
FruitsModel(2,'images/strawberry2.jpeg','Strawberry',57,14.10),
FruitsModel(3,'images/apple.jpg','Apple',75,10.14),
FruitsModel(4,'images/orange.png','Orange',44,10.14),
FruitsModel(5,'images/dragon.jpg','Dragon',60,11.14),
FruitsModel(6,'images/capsicum.jpg','Capsicum',70,10.14),
FruitsModel(7,'images/orange2.jpeg','Orange2',16,78.14),
FruitsModel(8,'images/dragon2.png','Dragon2',18,67.14)
];
