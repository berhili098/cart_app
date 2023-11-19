import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wiggli_test/core/domain/product.dart';
import 'package:wiggli_test/gen/assets.gen.dart';

import '../home/domain/category.dart';

final categoriesProvider = StateProvider<List<Category>>((ref) => [
      const Category(
        name: 'All',
        isSelected: true,
      ),
      Category(
        name: 'Headphones',
        image: Assets.icons.headphones02.path,
      ),
      Category(
        name: 'Gaming',
        image: Assets.icons.gamingPad01.path,
      ),
      Category(
        name: 'Speaker',
        image: Assets.icons.speaker01.path,
      ),
    ]);

final newProductsProvider = StateProvider<List<Product>>((ref) {
  return [
    const Product(
      name: "PS5 Wireless Remote",
      company: "Sony",
      price: 59.99,
      description:
          "Take control of your gaming experience with the PS5 wireless remote.",
      picture:
          "https://media.direct.playstation.com/is/image/sierialto/dualsense-edge-ps5-controller-front",
    ),
    const Product(
      name: "AirPods Pro",
      company: "Apple",
      price: 249,
      description:
          "Experience the ultimate in wireless earbuds with AirPods Pro.",
      picture:
          "https://www.zdnet.com/a/img/resize/713757105549e1c4f3edc3071596cfe5d6b8bf68/2022/09/22/92cbda52-2e51-4e62-99b2-eca84b7e6d92/airpods-pro-2022.jpg?auto=webp&fit=crop&height=900&width=1200",
    ),
    const Product(
      name: "Powerbeats Pro",
      company: "Beats",
      price: 199.95,
      description:
          "Get the most out of your workouts with the Powerbeats Pro wireless earbuds.",
      picture:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MY582?wid=5645&hei=3816&fmt=jpeg&qlt=95&.v=1604515400000",
    ),
    const Product(
      name: "google nest hub max",
      company: "Google",
      price: 99.99,
      description:
          "Get hands-free help around the house with the Google Nest Hub.",
      picture:
          "https://www.androidauthority.com/wp-content/uploads/2019/09/Google-Home-Hub-Max-review-13.jpg",
    ),
    const Product(
      name: "Samsung Galaxy Watch 4",
      company: "Samsung",
      price: 249.99,
      description: "Stay connected on the go with the Samsung Galaxy Watch.",
      picture:
          "https://tabtel.ma/6933-large_default/montre-galaxy-watch-4-bluetooth-sport-sm-r860nzdamea-40mm.jpg",
    ),
  ];
});

final productsProvider = StateProvider<List<Product>>((ref) => [
      const Product(
          name: "iPhone 13",
          company: "Apple",
          price: 1099,
          description:
              "The latest iPhone with a stunning Super Retina XDR display.",
          picture:
              "https://images.unsplash.com/photo-1580566231970-2c91d3f49637?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
      const Product(
          name: "Galaxy S22",
          company: "Samsung",
          price: 999,
          description:
              "Experience the ultimate in smartphone technology with the Galaxy S21.",
          picture:
              "https://images.samsung.com/is/image/samsung/p6pim/n_africa/2202/gallery/n-africa-galaxy-s22-plus-s906-412939-sm-s906ezggmwd-530964132"),
      const Product(
          name: "Pixel 7 pro",
          company: "Google",
          price: 799,
          description:
              "The Pixel 7 is the perfect phone for those who value simplicity and ease of use.",
          picture:
              "https://lh3.googleusercontent.com/2QKYQg6WuyEbx0Kd83N8-_lhs0Vk-GYQWCqsQjtuGejiimGFRTp-FEc9tDfMer_xoj7FaOMuAE7pg0Uj-rpWS9A2RpZiCQpZSXi3=rw-e365-w1050"),
      const Product(
          name: "OnePlus 10",
          company: "OnePlus",
          price: 799,
          description:
              "Get flagship-level performance at an affordable price with the OnePlus 10.",
          picture:
              "https://fdn2.mobgsm.com/vv/pics/oneplus/oneplus-10-pro-2.jpg"),
      const Product(
          name: "Mi 12",
          company: "Xiaomi",
          price: 749,
          description:
              "The Mi 12 is a high-performance smartphone with a sleek design.",
          picture:
              "https://images.frandroid.com/wp-content/uploads/2021/12/xiaomi-12-france-frandroid-2022.png"),
    ]);
