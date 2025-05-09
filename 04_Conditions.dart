void main () 
{
    int x = 5 ;  // Initialize variable x with value 5

    // ========== 1. BASIC IF STATEMENT ==========
    if ( x == 5 ) 
        {
            print ( " x equals 5 " ) ;  // This will execute since x is 5
        } 
    
    // ========== 2. IF-ELSE STATEMENT ==========
    if ( x > 0 ) 
        {
            print ( " x is positive " ) ;  // Will execute (5 > 0 is true)
        } 
    else 
        {
            print ( " x is negative " ) ;  // Skipped
        }
    
    // ========== 3. ELSE-IF LADDER ==========
    if ( x > 5 ) 
        {
            print ( " x is greater than 5 " ) ;  // False (5 > 5 is false)
        } 
    else if ( x > 8 ) 
            {
                print ( " x is greater than 8 " ) ;  // Not evaluated (first condition false)
            } 
        else if ( x > 10 ) 
                {
                    print ( " x is greater than 10 " ) ;  // Not evaluated
                } 
            else 
                {
                    print ( " x + 1 = ${x + 1}" ) ;  // Executes (6) since all above false
                }
                
    // ========== 4. TERNARY OPERATOR ==========
    // Compact if-else alternative
    ( x > 0 ) ? print ( "x is positive" ) : print ( "x is negative" ) ;  // Prints "x is positive"

    // ========== 5. SWITCH STATEMENT ==========
    switch ( x ) 
        {
            case 1: 
                print ( "x is 1" ) ;
                break ;  // Exit switch
            case 2: 
                print ( "x is 2" ) ;
                break ;
            case 5:
                print ( "x is 5" ) ;  // This will execute (x matches 5)
                break ;
            default:
                print ( x > 5 ) ;  // Fallback if no cases match
                break ;
        }
}