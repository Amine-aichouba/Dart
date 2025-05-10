

void main () 
{
    // ===================== 1. LIST CREATION =====================
    print ( ' \n=== 1. LIST CREATION === ' ) ;
    

    var emptyList = [] ;
    print ( 'Empty list : $emptyList ' ) ; // []
    

    List <int> emptyTypedList = <int>[] ;
    print ( 'Empty typed list : $emptyTypedList ' ) ; // []

    
    var fruits = [ 'apple' , 'banana' , 'orange' ] ;
    print ( 'Fruits list : $fruits ' ) ; // [ apple , banana , orange ]
    

    List <int> numbers = [ 1 , 2 , 3 ] ;
    print ( 'Numbers list : $numbers ' ) ; // [ 1 , 2 , 3 ]

    
    var fixedList = List <int>.filled ( 3 , 0 ) ;
    print ( 'Fixed-length list : $fixedList ' ) ; // [ 0 , 0 , 0 ] 
    

    var generated = List <int>.generate ( 5 , (i) => i * 2 ) ;
    print ( 'Generated list : $generated ' ) ; // [ 0 , 2 , 4 , 6 , 8 ]


    // ==================== 2. ACCESSING ELEMENTS ====================
    print ( ' \n=== 2. ACCESSING ELEMENTS === ' ) ;
    
    var languages = [ 'Dart' , 'JavaScript' , 'Python' ] ;
    
    print ( 'Languages : $languages' ) ; // [ Dart , JavaScript , Python ]
    print ( 'First element : ${ languages [0] }' ) ; // Dart
    print ( 'First item : ${ languages.first } ' ) ; // Dart
    print ( 'Last item : ${ languages.last } ' ) ;   // Python
    print ( 'Length : ${ languages.length } ' ) ;    // 3
    print ( 'Is empty? ${ languages.isEmpty } ' ) ;  // false


    // ==================== 3. ADDING ELEMENTS ====================
    print ( '\n === 3. ADDING ELEMENTS === ' ) ;
    
    var colors = [ 'red' , 'green' ] ;
    print ( 'Original colors : $colors ' ) ; // [ red , green ]


    colors.add ( 'blue' ) ;
    print ( 'After add () : $colors' ) ; // [ red , green , blue ]
    

    colors.addAll ( [ 'yellow' , 'purple' ] ) ;
    print ( 'After addAll () : $colors' ) ; // [ red , green , blue , yellow , purple ]
    

    colors.insert ( 1 , 'orange' ) ;
    print ( 'After insert () : $colors' ) ; // [ red , orange , green , blue , yellow , purple ]
    

    colors.insertAll ( 2 , [ 'black' , 'white' ] ) ;
    print ( 'After insertAll () : $colors ' ) ; // [ red , orange , black , white , green , blue , yellow , purple ]


    // ==================== 4. REMOVING ELEMENTS ====================
    print ( '\n=== 4. REMOVING ELEMENTS === ' ) ;
    
    numbers = [ 1 , 2 , 3 , 2 , 4 , 2 ] ;
    print ( 'Original numbers : $numbers' ) ; // [ 1 , 2 , 3 , 2 , 4 , 2 ]
    

    numbers.remove (2) ;
    print ( 'After remove ( 2 ) : $numbers ' ) ; // [ 1 , 3 , 2 , 4 , 2 ]
    

    numbers.removeAt (0) ;
    print ( 'After removeAt ( 0 ) : $numbers ' ) ; // [ 3 , 2 , 4 , 2 ]
    

    numbers.removeLast () ;
    print ( 'After removeLast () : $numbers' ) ; // [ 3 , 2 , 4 ]
    

    numbers.removeRange ( 1 , 3 ) ;
    print ( 'After removeRange ( 1 , 3 ) : $numbers ' ) ; // [3]
    

    numbers.removeWhere ( ( n ) => n == 2 ) ;
    print ( 'After removeWhere () : $numbers ' ) ; // [3]
    

    numbers.clear () ;
    print ( 'After clear () : $numbers ' ) ; // []


    // ==================== 5. SORTING ====================
    print ( '\n=== 5. SORTING ===' ) ;
    
    var nums = [ 3 , 1 , 4 , 1 , 5 , 9 ] ;
    print ( 'Original nums : $nums ' ) ; // [ 3 , 1 , 4 , 1 , 5 , 9 ]
    

    nums.sort () ;
    print ( 'After sort () : $nums' ) ; // [ 1 , 1 , 3 , 4 , 5 , 9 ]
    

    nums.sort ( ( a , b ) => b.compareTo ( a ) ) ;
    print ( 'After descending sort : $nums' ) ; // [ 9 , 5 , 4 , 3 , 1 , 1 ]
    

    var words = [ 'banana' , 'apple' , 'cherry' ] ;
    print ( 'Original words : $words' ) ; // [ banana , apple , cherry ]
    words.sort ( ( a , b ) => a.length.compareTo ( b.length ) ) ;
    print ( 'After length sort : $words' ) ; // [ apple , banana , cherry ]


    // ==================== 6. SEARCHING ====================
    print ( '\n=== 6. SEARCHING ===' ) ;
    
    var letters = [ 'a' , 'b' , 'c' , 'd' ] ;
    
    print ( 'Letters : $letters' ) ; // [ a , b , c , d ]
    print ( "Contains 'c'? ${ letters.contains ( 'c' ) } " ) ; // true
    print ( "Index of 'b' : ${ letters.indexOf ( 'b' ) } " ) ; // 1
    print ( "Last index of 'a' : ${ letters.lastIndexOf ( 'a' ) } " ) ; // -1
    print ( "First where 'b' : ${ letters.firstWhere ( ( l ) => l == 'b' ) } " ) ; // b
    print ( "First where 'x' : ${letters.firstWhere ( ( l ) => l == 'x' , orElse: () => 'not found' ) } " ) ; // not found
  

    // ==================== 7. COLLECTION OPERATORS ====================
    print ( '\n=== 7. COLLECTION OPERATORS ===' ) ;
    
    var isAdmin = true ;
    var menuItems = 
        [
            'home' ,
            'profile' ,
            if ( isAdmin ) 'admin' ,
        ] ;

    print ( 'Menu items : $menuItems' ) ; // [ home , profile , admin ]
    
    numbers = [ 1 , 2 , 3 ] ;
    var squares = [ for ( var n in numbers ) n * n ] ;
    print ( 'Squares : $squares' ) ; // [ 1 , 4 , 9 ]


    // ==================== 8. SUBLIST OPERATIONS ====================
    print ( '\n=== 8. SUBLIST OPERATIONS ===' ) ;
    
    nums = [ 1 , 2 , 3 , 4 , 5 ] ;  
    print ( 'Original nums : $nums' ) ; // [ 1 , 2 , 3 , 4 , 5 ]
    
    
    var middle = nums.sublist ( 1 , 4 ) ;
    print ( 'Sublist ( 1 , 4 ) : $middle' ) ; // [ 2 , 3 , 4 ]
    
    
    var skipped = nums.skip(2).toList () ;
    print ( 'Skip ( 2 ) : $skipped' ) ; // [ 3 , 4 , 5 ]
    
    
    var taken = nums.take(2).toList () ;
    print ( 'Take ( 2 ) : $taken' ) ; // [ 1 , 2 ]


    // ==================== 9. TYPE SAFETY ====================
    print ( '\n=== 9. TYPE SAFETY ===' ) ;
    
    List <String> names = [ 'Alice' , 'Bob' ] ;
    List <int> ages = [ 25 , 30 ] ;
    List <dynamic> mixed = [ 'text' , 42 , true ] ;
    
    print ( 'Names is List <String>? ${ names is List <String> } ' ) ; // true
    print ( 'Names is List <int>? ${ names is List <int> } ' ) ; // false

    // ==================== 10. 2D LISTS ====================
    print ( '\n=== 10. 2D LISTS === ' ) ;
    
    var matrix = 
        [
            [ 1 , 2 , 3 ] ,
            [ 4 , 5 , 6 ] ,
            [ 7 , 8 , 9 ] 
        ] ;

    print ( 'Matrix : $matrix' ) ; // [ [1,2,3] , [4,5,6] , [7,8,9] ]
    print ( 'Element at [1][2] : ${ matrix [1][2] } ' ) ; // 6
    

    matrix.add ( [10 , 11 , 12] ) ;
    print ( 'After adding row : $matrix' ) ; // [ [1,2,3] , [4,5,6] , [7,8,9] , [10,11,12] ]
    

    matrix [0][1] = 20 ;
    print ( 'After modification : $matrix' ) ; // [ [1,20,3] , [4,5,6] , [7,8,9] , [10,11,12] ]



    // ==================== 11. LIST ITERATION ====================
    print ( '\n=== 11. LIST ITERATION ===' ) ;
    
    var items = [ 'a' , 'b' , 'c' ] ;
    print ( 'Standard for loop : ' ) ;
    for ( var i = 0 ; i < items.length ; i ++ ) 
        {
            print ( '  Item $i : ${ items [i] } ' ) ;
        }
    /* Output:
        Item 0 : a
        Item 1 : b
        Item 2 : c
    */
    
    print ( 'For-in loop : ' ) ;
    for ( var item in items ) 
        {   
            print ( '  $item' ) ;
        }   
    /* Output:
        a
        b
        c
    */
    
    print ( 'ForEach method : ' ) ;
    items.forEach ( ( item ) => print ( '  $item' ) ) ;
    /* Output :
        a
        b
        c
    */
    
    print ( 'Map with index : ' ) ;
    items.asMap().forEach ( ( i , item ) => print ( '  $i: $item' ) ) ;
    /* Output :
        0: a
        1: b
        2: c
    */
}   