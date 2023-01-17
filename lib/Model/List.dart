

List<Map<String, dynamic>> Product = [
  {
    'id': 1,
    'Product_name': 'Bag',
    'Price': '150 Rs.',
    'image': 'assets/images/bag.jpg',
  },
  {
    'id': 2,
    'Product_name': 'Goggles',
    'Price': '150 Rs.',
    'image': 'assets/images/Goggles.jpg',
  },
  {
    'id': 3,
    'Product_name': 'Watch',
    'Price': '150 Rs.',
    'image': 'assets/images/Watch.jpg',
  },
  {
    'id': 4,
    'Product_name': 'Perfume',
    'Price': '150 Rs.',
    'image': 'assets/images/Perfume.jpg',
  },
  {
    'id': 5,
    'Product_name': 'shoes',
    'Price': '150 Rs.',
    'image': 'assets/images/shoes.jpg',
  },
  {
    'id': 6,
    'Product_name': 'Earrings',
    'Price': '150 Rs.',
    'image': 'assets/images/earrings.jpg',
  },
  {
    'id': 7,
    'Product_name': 'Water Bottel',
    'Price': '150 Rs.',
    'image': 'assets/images/Bottel.jpg',
  },
  {
    'id': 8,
    'Product_name': 'Books',
    'Price': '150 Rs.',
    'image': 'assets/images/Books.jpg',
  },
  {
    'id': 9,
    'Product_name': 'Shampoo',
    'Price': '150 Rs.',
    'image': 'assets/images/shampoo.jpg',
  },

];


List<Map<String, dynamic>> Watch = [
  {
    'id': 1,
    'Product_name': 'HUBLOT',
    'Price': '9,00,000 Rs.',
    'image': 'assets/images/Hublot.jpg',
  },
  {
    'id': 2,
    'Product_name': 'ROLEX',
    'Price': '80,000  Rs.',
    'image': 'assets/images/Rolex.jpg',
  },
  {
    'id': 3,
    'Product_name': 'TITAN',
    'Price': '40,000 Rs.',
    'image': 'assets/images/Titan.jpg',
  },
  {
    'id': 4,
    'Product_name': 'TIMAX',
    'Price': '10,000 Rs.',
    'image': 'assets/images/Timax.jpg',
  },
];

List _CartItems = [];

get shopItems => Product;
get cartItems=> _CartItems;

void addItemstoCart(int index){
  _CartItems.add(Product[index]);
}