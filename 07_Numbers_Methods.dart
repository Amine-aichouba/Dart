import 'dart:math' ;

void main () 
{
    // ========== 1. BASIC NUMBER METHODS ==========
    int age = 25 ;
    double price = 19.99 ;
    
    // Convert numbers to strings with different formats
    print ( ' Age as string : ${ age.toString () }' ) ;  // "25"
    print ( ' Price ( 1 decimal ) : \$${ price.toStringAsFixed(1) } ' ) ; // "20.0"
    print ( ' Price ( 3 sig figs ) : ${ price.toStringAsPrecision (3) } ' ) ; // "20.0"
    
    // ========== 2. TYPE CONVERSION ==========
    print ( ' \n=== TYPE CONVERSION === ' ) ;
    // Convert strings to numbers
    print ( ' Parsed integer : ${ int.parse ( "42" ) } ' ) ;     // 42
    print ( ' Parsed double : ${ double.parse ( "3.14" ) } ' ) ; // 3.14
    
    // Safe parsing that won't throw exceptions
    print ( ' Failed int parse : ${ int.tryParse ( "abc" ) } ' ) ;  // null
    print ( ' Failed double parse : ${ double.tryParse ( "1.23x" ) } ' ) ;  // null
    
    // Convert between number types
    print ( ' Int to double : ${ age.toDouble () } ' ) ;  // 25.0
    print ( ' Double to int : ${ price.toInt () } ' ) ;   // 19 (truncates decimal)
    
    // ========== 3. MATH OPERATIONS ==========
    print ( '\n === MATH OPERATIONS === ' ) ;
    print ( ' Comparison ( 10 vs 5 ) : ${ 10.compareTo (5) } ' ) ; // 1 (10 > 5)
    print ( ' Absolute value : ${ (-5).abs () } ' ) ;      // 5
    print ( ' Rounded 3.6: ${ 3.6.round () } ' ) ;         // 4
    print ( ' Floored 3.2: ${ 3.2.floor () } ' ) ;         // 3
    print ( ' Ceiling 3.2: ${ 3.2.ceil () } ' ) ;          // 4
    print ( ' Truncated pi: ${ 3.14159.truncate () } ' ) ; // 3
    
    // ========== 4. ADVANCED MATH ==========
    print ( '\n === ADVANCED MATH === ' ) ;
    print ( ' Square root of 16 : ${ sqrt (16) } ' ) ;         // 4.0
    print ( ' 2 to the power of 3 : ${ pow ( 2 , 3 ) } ' ) ;   // 8
    print ( ' Max between 5 and 10 : ${ max ( 5 , 10 ) } ' ) ; // 10
    print ( ' Min between 5 and 10 : ${ min ( 5 , 10 ) } ' ) ; // 5
    print ( ' Sine of pi/2 : ${ sin ( pi / 2 ) } ' ) ;     // 1.0
    print ( ' Natural log of 10 : ${ log ( 10 ) } ' ) ;    // 2.302585
    
    // ========== 5. NUMBER PROPERTIES ==========
    print ( ' \n=== NUMBER PROPERTIES === ' ) ;
    print ( ' Is 5 even? ${ 5.isEven } ' ) ;             // false
    print ( ' Is 5 odd? ${ 5.isOdd } ' ) ;               // true
    print ( ' Is 15.5 finite? ${ 15.5.isFinite } ' ) ;   // true
    print ( ' Is infinity infinite? ${ double.infinity.isInfinite } ' ) ; // true
    print ( ' Is 0.0 NaN? ${ 0.0.isNaN } ' ) ;     // false
    print ( ' Is 0/0 NaN? ${ (0/0).isNaN } ' ) ;   // true
    
    // ========== 6. RANDOM NUMBERS ==========
    print ( ' \n=== RANDOM NUMBERS === ' ) ;
    var random = Random () ;
    print ( ' Random 0-9 : ${ random.nextInt (10) } ' ) ;      // 0-9
    print ( ' Random 0.0-1.0 : ${ random.nextDouble () } ' ) ; // 0.0-1.0
    print ( ' Random boolean : ${ random.nextBool () } ' ) ;   // true / false
    
    // ========== 7. REAL-WORLD EXAMPLES ==========
    print ( ' \n=== PRACTICAL APPLICATIONS === ' ) ;
    
    // Currency formatting
    double amount = 1234.5678 ;
    print ( ' Formatted amount : \$${ amount.toStringAsFixed (2) } ' ) ; // "$1234.57"
    
    // Percentage calculation
    double score = 17.5 ;
    double maxScore = 20 ;
    double percentage = ( score / maxScore * 100 ).roundToDouble () ;
    print ( ' Test score : $percentage% ' ) ;  // "88.0%"
    
    // Distance conversion
    double km = 5 ;
    double miles = km * 0.621371 ;
    print ( ' $km kilometers = ${ miles.toStringAsFixed (2) } miles ' ) ; // "5 km = 3.11 miles"
    
    // Temperature conversion
    double celsius = 25 ;
    double fahrenheit = celsius * 9/5 + 32 ;
    print ( ' $celsius°C = ${ fahrenheit.toStringAsFixed (1) } °F ' ) ; // "25.0°C = 77.0°F"
}   