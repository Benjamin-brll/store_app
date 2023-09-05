import 'package:flutter/material.dart';
import 'package:store_app/app_styles.dart';
import 'package:store_app/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = ['All Items', 'Dress', 'Hat', 'Watch'];

  List<String> icons = [
    'all_items_icon',
    'dress_icon',
    'hat_icon',
    'watch_icon',
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
        child: ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: customPaddingHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello, Welcome 👋',
                    style: customEncodeSansRegular.copyWith(
                        color: customDarkBrown,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5),
                  ),
                  Text(
                    'Benjamin Llauca',
                    style: customEncodeSansBold.copyWith(
                        color: customDarkBrown,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4),
                  )
                ],
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: customGrey,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: customPaddingHorizontal),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                style: customEncodeSansRegular.copyWith(
                  color: customDarkGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
                controller: TextEditingController(),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                    prefixIcon: IconTheme(
                      data: IconThemeData(color: customDarkGrey),
                      child: const Icon(Icons.search),
                    ),
                    hintText: 'Search...',
                    border: customInputBorder,
                    errorBorder: customInputBorder,
                    disabledBorder: customInputBorder,
                    focusedBorder: customInputBorder,
                    focusedErrorBorder: customInputBorder,
                    enabledBorder: customInputBorder,
                    hintStyle: customEncodeSansRegular.copyWith(
                        color: customDarkGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5)),
              )),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 49,
                width: 49,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(customBorderRadius),
                    color: customBlack),
                child: Icon(
                  Icons.change_circle_outlined,
                  color: customWhite,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: double.infinity,
          height: 36,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? customPaddingHorizontal : 15,
                      right: index == categories.length - 1
                          ? customPaddingHorizontal
                          : 0,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: 36,
                    decoration: BoxDecoration(
                        color: current == index ? customBrown : customWhite,
                        borderRadius: BorderRadius.circular(8),
                        border: current == index
                            ? null
                            : Border.all(
                                color: customLightGrey,
                                width: 1,
                              )),
                    child: Row(
                      children: [
                        Text(
                          categories[index],
                          style: customEncodeSansMedium.copyWith(
                            color: current == index
                                ? customWhite
                                : customDarkBrown,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: customPaddingHorizontal),
          child: Column(
            children: _products(10),
          ),
        )
      ],
    ));
  }

  List<Widget> _products(quantity) {
    List<Widget> products = [];

    for (var i = 0; i < quantity; i++) {
      products.add(Card(
        margin: EdgeInsets.symmetric(vertical: 12.0),
        elevation: 3.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                image: NetworkImage(
                    'https://nautica.com.pe/cdn/shop/products/K71006_6NR_A_89ff13d1-839b-4423-8309-53bbb632f804.jpg?v=1652803427'),
                height: 250.0,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text('Gorro de playa'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: customPaddingHorizontal),
              child: Row(
                children: [
                  Expanded(
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white),
                          onPressed: () {},
                          child: Text('Add To Cart'))),
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        side: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        foregroundColor: Colors.black,
                      ),
                      child: Icon(Icons.heart_broken))
                ],
              ),
            )
          ],
        ),
      ));
    }

    return products;
  }
}
