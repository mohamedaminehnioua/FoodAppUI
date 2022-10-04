class RestaurantData {
  // ADD TO LIST !!!!!!!!!!(IN ADMIN APP)
  static void addToList(Map<String, dynamic> restaurantsInfo) {
    restaurantsDataList.add(restaurantsInfo);
  }

  // DELETE FROM LIST !!!!!!!!!!(IN ADMIN APP)
  static void deleteFromList(int categorieIndex) {
    restaurantsDataList.remove(restaurantsDataList[categorieIndex]);
  }

  // GET DATA LIST => USED TO GET RESTAURANTS FROM DATABASE
  static void getRestaurants(
      List<Map<String, dynamic>> restaurantsFromDATABASE) {
    restaurantsDataList = restaurantsFromDATABASE;
  }

  static List<Map<String, dynamic>> restaurantsDataList = [
    {
      'image':
          'https://i.pinimg.com/564x/a7/d7/f0/a7d7f07a47f2b671ef292b989fe55700.jpg',
      'restaurantName': 'Nobu Malibu',
      'stars': '4.5',
      'timeDeleverie': '30-40',
      'isnew': false
    },
    {
      'image':
          'https://i.pinimg.com/736x/20/52/3f/20523fb2778c317339aa546be71166fe.jpg',
      'restaurantName': 'Elephante',
      'stars': '4.8',
      'timeDeleverie': '30-40',
      'isnew': false
    },
    {
      'image':
          'https://i.pinimg.com/564x/f3/8b/46/f38b46172efebc230e0badb1d6763556.jpg',
      'restaurantName': 'The Lobster',
      'stars': '5',
      'timeDeleverie': '20-40',
      'isnew': false
    },
    {
      'image':
          'https://i.pinimg.com/564x/44/30/d5/4430d58ada6ee7cda5a45dfadd603d40.jpg',
      'restaurantName': 'The Strand House',
      'stars': '4.1',
      'timeDeleverie': '25-40',
      'isnew': false
    },
    {
      'image':
          'https://i.pinimg.com/564x/60/c8/90/60c89046e6fc496100321181424ec70a.jpg',
      'restaurantName': 'Yamashiro Hollywood',
      'stars': '4.9',
      'timeDeleverie': '20-30',
      'isnew': false
    },
    {
      'image':
          'https://i.pinimg.com/736x/99/8d/f0/998df0f636d3415d4913eb2c8be353cf.jpg',
      'restaurantName': 'Mama Shelter ',
      'stars': '4.5',
      'timeDeleverie': '20-40',
      'isnew': false
    },
  ];
}
