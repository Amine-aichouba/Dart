void main () 
{
  // ========== 1. FOR LOOP ==========
    print ( " Standard for loop : " ) ;
    for ( int i = 1 ; i <= 5 ; i ++ ) 
        {
            print ( " Count : $i " ) ; // Prints 1 through 5
        }

  // ========== 2. WHILE LOOP ==========
    print ( "\n While loop : " ) ;
    int j = 1 ;
    while ( j <= 3 ) 
        {   
            print ( " While count : $j " ) ;
            j ++ ;  // Don't forget to increment!
        }   

  // ========== 3. DO-WHILE LOOP ==========
    print ( "\n Do-while loop : " ) ;
    int k = 1 ;
    do 
        {
            print ( " Do-while count : $k " ) ; 
            k ++ ;
        } while ( k <= 3 ) ;  // Condition checked AFTER first execution

  // ========== 4. FOR-IN LOOP (ITERABLES) ==========
    print ( "\n For-in loop with list : " ) ;
    var fruits = [ 'apple' , 'banana' , 'orange' ] ;
    for ( var fruit in fruits ) 
        {
            print ( fruit.toUpperCase () ) ;  // Prints each fruit in uppercase
        }

  // ========== 5. FOR-EACH LOOP ==========
  print ( "\n ForEach method : " ) ;
  fruits.forEach ( ( fruit ) => print ( " I love $fruit " ) ) ;

  // ========== 6. LOOP CONTROL STATEMENTS ==========
    print ( "\n Loop control : " ) ;
    for ( int i = 1 ; i <= 10 ; i ++ ) 
        {   
            if ( i == 3 )  continue ;   // Skip iteration 3
            if ( i == 8 )  break ;      // Exit loop at 8
            print ( " Control : $i " ) ;// Prints 1 , 2 , 4 , 5 , 6 , 7
        }   

  // ========== 7. NESTED LOOPS ==========
    print ( "\n Nested loops ( multiplication table ) : " ) ;
    for ( int row = 1 ; row <= 3 ; row ++ ) 
        {
            String line = "" ;
            for ( int col = 1 ; col <= 3 ; col ++ ) 
                {
                    line += "${row * col}\t" ;  // \t for tab spacing
                }
      print ( line ) ;
    }
}