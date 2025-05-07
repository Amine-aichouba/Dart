// Dart entry point: Every Dart program starts executing from the `main()` function.
void main () 
{
    // ========== Basic Data Types ==========
    // 1. Integer ( whole numbers )
    int x = 10 ;  
    // 2. Double ( floating-point / decimal numbers )
    double z = 13.89 ;  
    // 3. String ( sequence of characters, in single or double quotes )
    String e = 'koko' ;  
    // 4. Boolean ( true or false )
    bool r = true ;  

    // ========== Type Inference ( using `var` ) ==========
    // Dart automatically detects the type based on the assigned value.
    var X = 10 ;       // Inferred as `int`
    var Z = 13.89 ;    // Inferred as `double`
    var E = "koko" ;   // Inferred as `String`
    var R = true ;     // Inferred as `bool`

    // ========== Constants ==========
    // `const` → Compile-time constant ( value must be known at compile-time )
    const t = 39 ;  
    // `final` → Runtime constant ( value assigned once at runtime ) 
    final y = true ;  

    // ========== Collections ( Structured Data Types ) ==========
    // 1. List ( ordered collection , allows duplicates )
    var u = <int> [1, 2, 3, 4, 5] ;  // Explicitly typed as `List<int>`
    // 2. Set ( unordered collection , unique elements )
    var i = <int> {1, 2, 3, 4, 5} ;  // Explicitly typed as `Set<int>`
    // 3. Map ( key-value pairs )
    var o = <int, int> {1:2, 2:3, 3:4, 4:9, 5:7} ;  // `Map<int, int>`

    // ========== Dynamic Collections ( Mixed Types ) ==========
    // Dart infers the most general type ( `Object` ) when mixed types are used.
    var U = [1, 2.20, true, "hello"] ;  // Inferred as `List < Object >`
    var I = {1, 2.20, true, "hello"} ;  // Inferred as `Set < Object >`
    var O = {1:2, 2.20:0.6, true:false, 'hello':"hi"} ;  // `Map < Object , Object >`

    // ========== Printing Values ==========
    print ( " x = $x " ) ;  // Output: x = 10
    print ( " z = $z " ) ;  // Output: z = 13.89
    print ( " e = $e " ) ;  // Output: e = koko
    print ( " r = $r " ) ;  // Output: r = true
    print ( " X = $X " ) ;  // Output: X = 10
    print ( " Z = $Z " ) ;  // Output: Z = 13.89
    print ( " E = $E " ) ;  // Output: E = koko
    print ( " R = $R " ) ;  // Output: R = true
    print ( " t = $t " ) ;  // Output: t = 39
    print ( " y = $y " ) ;  // Output: y = true

    // ========== String Interpolation & Operations ==========
    print ( 'x + z = ${x + z}' ) ;  // Output: x + z = 23.89 ( arithmetic operation )
    print ( 'x + X = $x + $X ' ) ;   // Output: x + X = 10 + 10 ( string concatenation , no addition )

    // ========== Printing Collections ==========
    print ( " u = $u " ) ; //   Output: u = [1, 2, 3, 4, 5] ( List )
    print ( " i = $i " ) ; //   Output: i = {1, 2, 3, 4, 5} ( Set )
    print ( " o = $o " ) ; //   Output: o = {1: 2, 2: 3, 3: 4, 4: 9, 5: 7} ( Map )
    print ( " U = $U " ) ; //   Output: U = [1, 2.2, true, hello] ( Dynamic List )
    print ( " I = $I " ) ; //   Output: I = {1, 2.2, true, hello} ( Dynamic Set ) 
    print ( " O = $O " ) ; //   Output: O = {1: 2, 2.2: 0.6, true: false, hello: hi} ( Dynamic Map )
}

