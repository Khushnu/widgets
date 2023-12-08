class NavModel{
final String? name; 
final String image;

NavModel(this.name, {required this.image});
}

List<NavModel> modelNav = [
  NavModel('', image: 'Images/home (1).png'),
  NavModel('', image: 'Images/user.png'),
  NavModel('', image: 'Images/shopping-cart (1).png'),
  NavModel('', image: 'Images/burger-bar.png'),
];
