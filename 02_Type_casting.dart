// The `main ()` function is the entry point of a Dart program.
void main () 
{
    // ========== Variable Declarations ==========
    // 1. `int` stores whole numbers ( e.g., 20 ) 
    int x = 20 ;
    // 2. `double` stores floating-point/decimal numbers ( e.g., 22.30 )
    double y = 22.30 ;
    // 3. `String` stores text ( e.g., 'hello' )
    String z = 'hello' ;

    // ========== Printing Variables ==========
    // String interpolation ( `$variable` ) embeds the value inside a string.
    print ( "x = $x" ) ; //  Output: x = 20
    print ( "y = $y" ) ; //  Output: y = 22.30
    print ( "z = $z" ) ; //  Output: z = hello

    // ========== Type Conversions ==========
    // 1. Convert `double` to `int` ( truncates decimal part )
    int q = y.toInt () ;       // q = 22 ( decimal part .30 is lost )
    // 2. Convert `int` to `double` ( adds .0 )
    double s = x.toDouble () ; // s = 20.0
    // 3. Convert `int` to `String` ( changes number to text )
    String h = x.toString () ; // h = "20" ( now a String, not a number )

    // ========== Printing Converted Values ==========
    print ( " q = $q " ) ; //  Correct output: q = 22
    print ( " s = $s " ) ; //  Correct output: s = 20.0
    print ( " h = $h " ) ; //  Correct output: h = 20
  }