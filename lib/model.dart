class NavModel{
final String name; 
final String image;

NavModel({required this.name , required this.image});
}

List<NavModel> modelNav = [
  NavModel(name: 'Home', image: 'Images/home (1).png'),
  NavModel(name:'User', image: 'Images/user.png'),
  NavModel( image: 'Images/shopping-cart (1).png', name: 'Cart'),
  NavModel(name: 'Menu', image: 'Images/burger-bar.png'),
];
