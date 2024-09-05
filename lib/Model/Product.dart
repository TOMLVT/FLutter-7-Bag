import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
        required this.title,
        required this.description,
        required this.price,
        required this.size,
        required this.id,
        required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Mẫu túi xanh",
      price: 345,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Mẫu túi da cam",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Mẫu túi đen",
      price: 654,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Mẫu túi cam",
      price: 343,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Mẫu túi hồng đỏ",
      price: 349,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Mẫu túi xám đen",
    price: 333,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Túi đeo chéo da nữ khóa xoay Lata HN104 được thiết kế với kiểu dáng ngang, khóa xoay tạo nên sự sang trọng, quý phái cho người sử dụng. Form sản phẩm hình hộp, bề mặt da mềm mại, đường chỉ đẹp mắt. Bên trong ngăn chứa rộng, bạn có thể đựng điện thoại, ví tiền, quyền note nhỏ để mang đi làm đều được.";