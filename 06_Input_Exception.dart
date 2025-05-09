
import 'dart:io' ; // Required for stdin

void main () async 
{
    // ===== 1. Basic String Input =====
    print ( " What's your name? " ) ;
    String name = stdin.readLineSync ()! ; // ! forces non-null
    print ( " Hello , $name! " ) ;

    // ===== 2. Number Input =====
    print ( " Enter your age : " ) ;
    int age = int.parse ( stdin.readLineSync ()! ) ;
    print ( " In 10 years, you'll be ${age + 10} " ) ;

    // ===== 3. Input Validation =====
    double? height ;
    do 
        {
            print ( " Enter your height ( meters ) : " ) ;
            try 
                {
                    height = double.parse ( stdin.readLineSync ()! ) ;
                } 
            catch ( e ) 
                {
                    print ( " Invalid number! Please try again." ) ;
                }
        } while ( height == null ) ;

    // ===== 4. Asynchronous Input =====
    print ( " Enter your email ( async ) : " ) ;
    String email = await readLineAsync () ;
    print ( " Email registered : $email " ) ;
}

Future < String > readLineAsync () async 
{
    return stdin.readLineSync () ?? "" ;
}