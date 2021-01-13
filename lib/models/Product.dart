import 'package:flutter/material.dart';

class Product {
  final String image, title, prize, description;
  final int size, id;
  final Color color;

  Product({
    this.id,
    this.size,
    this.prize,
    this.color,
    this.image,
    this.title,
    this.description,
  });
}

List<Product> products = [
  Product(
      id: 1,
      size: 12,
      prize: "Rs20 Per Kg",
      color: Colors.green[400],
      image: "assets/images/vegetables/broccoli.png",
      title: "Broccoli",
      description:
          "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable."),
  Product(
      id: 2,
      size: 12,
      prize: "Rs22 Per Kg",
      color: Colors.green[300],
      image: "assets/images/vegetables/cabbage.png",
      title: "Cabbage",
      description:
          "Cabbage is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads."),
  Product(
      id: 3,
      size: 12,
      prize: "Rs40 Per Kg",
      color: Colors.orange[200],
      image: "assets/images/vegetables/carrot.png",
      title: "Carrot",
      description:
          "The carrot is a root vegetable, usually orange in color, though purple, black, red, white, and yellow cultivars exist."),
  Product(
      id: 4,
      size: 12,
      prize: "Rs25 Per Kg",
      color: Colors.green[100],
      image: "assets/images/vegetables/cauliflower.png",
      title: "Cauliflower",
      description:
          "Cauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the Brassicaceae family. It is an annual plant that reproduces by seed."),
  Product(
      id: 5,
      size: 12,
      prize: "Rs40 Per Kg",
      color: Colors.yellow[300],
      image: "assets/images/vegetables/corn.png",
      title: "Corn",
      description:
          "Corn is a starchy vegetable and cereal grain that has been eaten all over the world for centuries. It's rich in fiber, vitamins and minerals."),
  Product(
      id: 6,
      size: 12,
      prize: "Rs27 Per Kg",
      color: Colors.green[200],
      image: "assets/images/vegetables/cucumber.png",
      title: "Cucumber",
      description:
          "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable."),
  Product(
      id: 7,
      size: 12,
      prize: "Rs25 Per Kg",
      color: Colors.purple[200],
      image: "assets/images/vegetables/eggplant.png",
      title: "Eggplant",
      description:
          "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable."),
  Product(
      id: 6,
      size: 12,
      prize: "Rs50 Per Kg",
      color: Colors.green[300],
      image: "assets/images/vegetables/potato.png",
      title: "Potato",
      description:
          "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable."),
  Product(
      id: 6,
      size: 12,
      prize: "Rs130 Per Kg",
      color: Colors.red[200],
      image: "assets/images/vegetables/redchilipepper.png",
      title: "Chilli",
      description:
          "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable."),
  Product(
      id: 6,
      size: 12,
      prize: "Rs40 Per Kg",
      color: Colors.red[300],
      image: "assets/images/vegetables/tomato.png",
      title: "Tomato",
      description:
          "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable."),
];
