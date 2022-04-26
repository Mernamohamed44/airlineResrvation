import 'package:flutter_test/flutter_test.dart';

import 'package:zeft/screens/booking.dart';

main(){
  
  test("Total price: 200",
      (){
         double x = Booking.calcPrice(2, 100);
         expect(x, 200);
      }
  );

  test("Total price: 80",
          (){
        double x = Booking.calcPrice(1, 80);
        expect(x, 80);
      }
  );

  test("Total price: 600",
          (){
        double x = Booking.calcPrice(5, 120);
        expect(x,600 );
      }
  );

  test("Total price: 140",
          (){
        double x = Booking.calcPrice(2, 70);
        expect(x, 140);
      }
  );
}