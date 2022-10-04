class CategoriesData {
  // ADD TO LIST !!!!!!!!!!(IN ADMIN APP)
  static void addToList(Map<String, String> categorieInfo) {
    categoriesDataList.add(categorieInfo);
  }

  // DELETE FROM LIST !!!!!!!!!!(IN ADMIN APP)
  static void deleteFromList(int categorieIndex) {
    categoriesDataList.remove(categoriesDataList[categorieIndex]);
  }

  // GET DATA LIST => USED TO GET CATEGORIES FROM DATABASE
  static void getcategories(List<Map<String, String>> categoriesFromDATABASE) {
    categoriesDataList = categoriesFromDATABASE;
  }

  static List<Map<String, String>> categoriesDataList = [
    {
      'image':
          'https://static.toiimg.com/thumb/56933159.cms?imgsize=686279&width=800&height=800',
      'categorie': 'Pizza',
    },
    {
      'image':
          'https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/119674.jpg?output-format=auto&output-quality=auto&resize=600:*',
      'categorie': 'Pan-cake',
    },
    {
      'image':
          'https://cdn.pratico-pratiques.com/app/uploads/sites/3/2019/06/27093512/sandwich-au-thon-et-avocat.jpg',
      'categorie': 'Sandwich',
    },
    {
      'image':
          'https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/homemade-ice-cream-recipe.jpg',
      'categorie': 'Ice-cream',
    },
    {
      'image':
          'https://www.loveandoliveoil.com/wp-content/uploads/2015/03/soy-sauce-noodlesH2.jpg',
      'categorie': 'Noodle',
    },
    {
      'image':
          'https://images.immediate.co.uk/production/volatile/sites/30/2013/05/Cheeseburger-3d7c922.jpg',
      'categorie': 'Burger',
    },
  ];
}
