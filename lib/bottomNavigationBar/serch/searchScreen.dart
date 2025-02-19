import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const String routeName = '/brows';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Map<String, String>> movies = [];

  @override
  void initState() {
    super.initState();
    fetchMovies();
  }

  Future<void> fetchMovies() async {
    await Future.delayed(Duration(seconds: 1));
    List<Map<String, String>> apiMovies = [
      {"title": "Black Widow", "image": "https://via.placeholder.com/150", "rating": "7.7"},
      {"title": "Captain America", "image": "https://via.placeholder.com/150", "rating": "7.7"},
      {"title": "Iron Man 3", "image": "https://via.placeholder.com/150", "rating": "7.7"},
      {"title": "Civil War", "image": "https://via.placeholder.com/150", "rating": "7.7"},
    ];

    setState(() {
      movies = apiMovies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // ✅ الخلفية سوداء
      body: Column(
        children: [
          // ✅ خانة البحث
         Padding(
  padding: EdgeInsets.all(10),
  child: TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey[800],
      hintText: "Search",
      hintStyle: TextStyle(color: Colors.white54),
      prefixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10), // مسافة جانبية بسيطة
        child: SizedBox(
          width: 24, // التحكم في عرض الأيقونة
          height: 24, // التحكم في ارتفاع الأيقونة
          child: Image.asset("assets/icon/Vector.png", color: Colors.white),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
    ),
    style: TextStyle(color: Colors.white),
    onChanged: (query) {
      // ✅ زميلك هيضيف اللوجيك هنا
    },
  ),
),



          // ✅ قائمة الأفلام
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
    );
  }

  // ✅ تصميم كارت الفيلم بدون اسم الفيلم
  Widget _buildMovieCard(Map<String, String> movie) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15), // ✅ الحواف ناعمة بس مش دائرية بالكامل
      child: Stack(
        children: [
          // ✅ صورة الفيلم
          Positioned.fill(
            child: Image.network(
              movie["image"] ?? "",
              fit: BoxFit.cover,
            ),
          ),
          // ✅ التقييم في الزاوية العلوية اليسرى
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
                  Text(movie["rating"] ?? "N/A", style: TextStyle(color: Colors.white)),
                  SizedBox(width: 4),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
