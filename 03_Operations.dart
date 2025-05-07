/*
 * DART LANGUAGE FUNDAMENTALS - COMPREHENSIVE EXAMPLE
 * Covers:
 * - Variable declaration and initialization
 * - Arithmetic operations
 * - Type conversion and dynamic typing
 * - Increment/decrement operators
 * - Compound assignment
 * - Comparison and logical operators
 * - Type checking
 */

void main() {
    // ========== 1. VARIABLE INITIALIZATION ==========
    int x = 10 , y = 5 ;   // Declare and initialize two integers
    var tmp ;  // Dynamic variable ( type determined at runtime )
    
    // ========== 2. ARITHMETIC OPERATIONS ==========
    // Addition
    tmp = x + y ;  // 10 + 5
    print ( " * Addition : $tmp " ) ;  // 15
    
    // Multiplication
    tmp = x * y ;  // 10 * 5
    print ( " * Multiplication : $tmp " ) ;  // 50
    
    // Division ( returns double )
    tmp = x / y ;  // 10 / 5
    print ( " * Division : $tmp " ) ;  // 2.0
    
    // Modulus ( remainder )
    tmp = x % y ;  // 10 % 5
    print ( " * Modulus : $tmp " ) ;  // 0
    
    // ========== 3. COMPOUND ASSIGNMENT ==========
    tmp += y ;  // Equivalent to tmp = tmp + y
    print ( " += Operator : $tmp " ) ;  // 0 + 5 = 5
    
    tmp *= y ;  // tmp = tmp * y
    print ( " *= Operator : $tmp " ) ;  // 5 * 5 = 25
    
    // ========== 4. INCREMENT/DECREMENT ==========
    // Post-increment ( use then increment )
    print ( " x ++ : ${x ++} " ) ;   // Prints 10 , then x becomes 11
    print ( " After x ++ : $x " ) ;  // 11
    
    // Pre-increment ( increment then use )
    print ( " ++ x : ${++ x}" ) ;  // x becomes 12 , then prints 12
    
    // ========== 5. COMPLEX EXPRESSIONS ==========
    // Combined operations with side effects
    tmp = ( x += y ) ;  // x = 12 + 5 = 17 , tmp = 17
    print ( " Combined Assignment : $tmp " ) ;
    
    // Chained operations
    tmp /= y *= ++ x ;  // ++x → 18 , y = 5*18 = 90 , ( tmp =  17/90 ) ≈ 0.189
    print ( " Chained Operations : $tmp " ) ; // tmp ≈ 0.189
    
    // ========== 6. COMPARISON OPERATORS ==========
    print ( " x > y : ${x > y} " ) ;   // 18 > 90 → false
    print ( " x <= y : ${x <= y} " ) ; // 18 <= 90 → true
    
    // ========== 7. LOGICAL OPERATORS ==========
    print ( " OR :  ${ (x > 0) || (y < 0) } " ) ;  // true OR false → true
    print ( " AND : ${ (x > 0) && (y < 0) } " ) ;  // true AND false → false
    
    // ========== 8. TYPE CHECKING ==========
    print ( " Type Check : ${ tmp is double } " ) ;         // true ( tmp is double )
    print ( " Negative Type Check : ${ x is! String } " ) ; // true ( x isn't String )
}

