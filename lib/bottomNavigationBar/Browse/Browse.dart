import 'package:flutter/material.dart';

class Browse extends StatefulWidget {
  static const String routeName = '/browse';

  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  List<String> categories = [];
  String selectedCategory = "";
  List<Map<String, String>> movies = [];

  @override
  void initState() {
    super.initState();
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    await Future.delayed(Duration(seconds: 1));
    List<String> apiCategories = [
      "Action",
      "Adventure",
      "Animation",
      "Biography"
    ];

    setState(() {
      categories = apiCategories;
      selectedCategory = categories.isNotEmpty ? categories[0] : "";
      fetchMovies();
    });
  }

  Future<void> fetchMovies() async {
    await Future.delayed(Duration(seconds: 1));
    List<Map<String, String>> apiMovies = [
      {
        "title": "Black Widow",
        "image": "https://via.placeholder.com/150",
        "rating": "7.7"
      },
      {
        "title": "Joker",
        "image": "https://via.placeholder.com/150",
        "rating": "7.7"
      },
      {
        "title": "Iron Man 3",
        "image": "https://via.placeholder.com/150",
        "rating": "7.7"
      },
      {
        "title": "Civil War",
        "image": "https://via.placeholder.com/150",
        "rating": "7.7"
      },
    ];

    setState(() {
      movies = apiMovies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // ✅ *خلفية الشاشة سوداء*
      body: Padding(
        padding: EdgeInsets.only(top: 25, left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // *قائمة التصنيفات*
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: categories.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView(
                      scrollDirection: Axis.horizontal,
                      children: categories
                          .map((category) => _buildCategoryChip(category))
                          .toList(),
                    ),
            ),

            // *قائمة الأفلام*
            Expanded(
              child: movies.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : GridView.builder(
                      padding: EdgeInsets.all(8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        return _buildMovieCard(movies[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  // *تصميم زر التصنيف*
  Widget _buildCategoryChip(String category) {
    bool isSelected = category == selectedCategory;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
          fetchMovies();
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.yellow : Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Colors.yellow, width: 1), // ✅ *إضافة بوردر للـ Categories*
        ),
        child: Text(category,
            style: TextStyle(color: isSelected ? Colors.black : Colors.yellow)),
      ),
    );
  }

  // *تصميم كارت الفيلم بدون اسم الفيلم*
  Widget _buildMovieCard(Map<String, String> movie) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      // ✅ *الحواف ناعمة بس مش دائرية بالكامل*
      child: Stack(
        children: [
          // *صورة الفيلم*
          Positioned.fill(
            child: Image.asset(
              // movie["image"] ?? "",
              "assets/images/OnBoarding2.png",
              fit: BoxFit.cover,
            ),
          ),
          // *التقييم في الزاوية العلوية اليسرى*
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  SizedBox(width: 4),
                  Text(movie["rating"] ?? "N/A",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
