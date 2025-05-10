


// ===================== FUNCTION DEFINITIONS =====================

// 1. Basic Functions
void greet () => print ( 'Hello, Dart Learners!' ) ;

int  sum ( int num1 , int num2 ) => num1 + num2 ;


// 2. Parameter Variations
void welcomeUser ( String name , [ String? greeting ] ) => 
    print ( greeting != null ? '$greeting, $name!' : 'Welcome , $name!' ) ;

void createUser ( { required String username , int age = 21 , bool isVerified = false } ) => 
    print ( 'User created : $username , $age years old , Verified : $isVerified' ) ;


// 3. Arrow Functions
double calculateCircleArea ( double radius ) => 3.14159 * radius * radius ;


// 4. Function Variables & Anonymous Functions
final multiplier = ( int x , int y ) => x * y ;
final temperatures = [ 22.5 , 18.3 , 30.1 , 15.7 ] ;
final hotDays = temperatures.where ( ( temp ) => temp > 25 ).length ;


// 5. Higher-Order Functions
String formatText ( String text , String Function ( String ) formatter ) => formatter ( text ) ;
final shout = ( String s ) => s.toUpperCase () ;
final whisper = ( String s ) => s.toLowerCase () ;


// 6. Closures
Function makeCounter () 
{
    var count = 0 ;
    return () => ++ count ;
}


// 7. Recursive Functions
int factorial ( int n ) => n <= 1 ? 1 : n * factorial ( n - 1 ) ;


// 8. Asynchronous Functions
Future <String> fetchData () 
 async  {
            print ( 'Fetching data...' ) ;
            await Future.delayed ( Duration ( seconds: 1 ) ) ;
            return 'Data : { id : 123 , name : "Sample" } ' ;
        }

Future <void> displayData () async => print ( 'Received : ${ await fetchData () } ' ) ;


// 9. Generator Functions
Iterable <int> generateSequence ( int start , int end ) 
 sync*  {
            for ( int i = start ; i <= end ; i++ ) yield i ;
        }


// 10. Typedef & Function Types
typedef StringProcessor = String Function ( String input ) ;
final reverseString = ( String s ) => s.split ( '' ).reversed.join () ; 
final capitalize = ( String s ) => s [0].toUpperCase () + s.substring (1) ;



// ===================== MAIN FUNCTION =====================
void main () 
{
    // 1. Basic Functions
    print ( '\n=== 1. Basic Functions ===' ) ;

    greet () ;
    print ( 'Sum of 7 and 8 : ${ sum( 7 , 8 ) }' ) ;
    

    // 2. Parameter Variations
    print ( '\n=== 2. Parameter Variations ===' ) ;

    welcomeUser ( 'Alice' ) ;
    welcomeUser ( 'Bob' , 'Good morning' ) ;
    createUser ( username : 'tech_guru' ) ;
    createUser ( username : 'code_master' , age: 25 , isVerified: true ) ;
    

    // 3. Arrow Functions
    print ( '\n=== 3. Arrow Functions === ' ) ;
    print ( 'Circle area ( r = 5 ) : ${calculateCircleArea (5).toStringAsFixed (2) }' ) ;


    // 4. Function Variables
    print ( '\n=== 4. Function Variables ===' ) ;
    print ( '5 × 6 = ${ multiplier ( 5 , 6 ) }' ) ;
    print ( 'Hot days: $hotDays' ) ;
    

    // 5. Higher-Order Functions
    print ( '\n=== 5. Higher-Order Functions ===' ) ;
    print ( 'Shout: ${ formatText ( 'hello', shout ) }' ) ;
    print ( 'Whisper: ${ formatText ( 'HELLO' , whisper ) }' ) ;
    

    // 6. Closures
    print ( '\n=== 6. Closures ===' ) ;

    final counter = makeCounter () ;
    print ( 'Counter : ${ counter () }' ) ;
    print ( 'Counter : ${ counter () }' ) ;
    print ( 'Counter : ${ counter () }' ) ;
    

    // 7. Recursive Functions
    print ( '\n=== 7. Recursive Functions ===' ) ;
    print ( '5! = ${ factorial (5) }' ) ;
    

    // 8. Async Functions
    print ( '\n=== 8. Async Functions ===' ) ;
    displayData () ;
    

    // 9. Generators
    print ( '\n=== 9. Generators ===' ) ;
    print ( 'Sequence: ${ generateSequence ( 3 , 7 ).join ( ' → ' ) }' ) ;
    

    // 10. Typedefs
    print ( '\n=== 10. Typedefs ===' ) ;
    print ( 'Reversed: ${ reverseString ( 'hello' ) }' ) ;
    print ( 'Capitalized: ${ capitalize ( 'world' ) }' ) ;
}   