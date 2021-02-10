import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:example/ingredients/model.dart';

final ingredientsProvider = Provider((ref) => [
      Ingredient(
        id: "1",
        name: "Tomatoes",
        bigImageURL: "https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg",
      ),
      Ingredient(
        id: "2",
        name: "Parmigiano Reggiano",
        bigImageURL: "https://images-na.ssl-images-amazon.com/images/I/31Bn086vc-L._AC_.jpg",
      ),
      Ingredient(
        id: "3",
        name: "Spaghetti",
        bigImageURL: "https://cdn.pixabay.com/photo/2013/07/13/13/57/spaghetti-161834_1280.png",
      ),
    ]);
