//! Bank sistemi bizdən müştərilərin adlarını və kartdakı vəsaitlərini saxlamağımızı tələb edir
//!bir müştərinin ən azı 2 kartı olmalıdır
//! Hər bir müstərinin kart vəsaiti yoxlanılmalıdı
//! Əgər kartdakı vəsait 200-dən çoxdursan vəsaitin üzərinə 10 azn əlavə edilməlidi

void main() {
  Map<String, List<int>> customers = {
    'John Snow': [500, 200],
    'Elliot Anderson': [150, 900],
  };

  customers.forEach((key, value) {
    if (value.length < 2) {
      print('$key adli istifadeci en azi 2 kart olmalidir!');
    } else if (value.length >= 2) {
      for (int i = 0; i < value.length; i++) {
        if (value[i] > 200) {
          value[i] = value[i] + 10;
        }
      }
    }
  });
  print(customers);
}
