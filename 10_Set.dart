


void main () 
{
    // ===================== 1. Creating Sets =====================
    print ( '\n=== 1. Creating Sets ===' ) ;
    
    // Empty set of strings
    var emptySet = <String> {} ;
    print ( 'Empty set :  $emptySet' ) ; // Empty set: {}
    
    // Empty set of numbers with type specified
    Set <int> numbers = {} ;
    print ( 'Empty numbers set : $numbers ' ) ;  // Empty numbers set: {}
    

    // Set containing fruits
    var fruits = { 'apple' , 'banana' , 'orange' } ;
    print ( 'Fruits set : $fruits' ) ;  // Fruits set : { apple , banana , orange }
    

    // Colors set with type specified
    Set <String> colors = { 'red' , 'green' , 'blue' } ;
    print ( 'Colors set : $colors' ) ; // Colors set : { red , green , blue }
    

    // Creating a set from a list with duplicates removed
    var uniqueNumbers = { 1 , 2 , 2 , 3 , 3 , 3 }.toSet () ;
    print ( 'Unique numbers set : $uniqueNumbers' ) ; // Unique numbers set: { 1 , 2 , 3 }


    // ===================== 2. Adding Elements =====================
    print ( '\n=== 2. Adding Elements ===' ) ;
    
    
    var letters = { 'a' , 'b' } ;
    print ( 'Original set : $letters' ) ; // Original set: { a , b }
    

    // Adding a single element
    letters.add ( 'c' ) ;
    print ( 'After adding "c" : $letters' ) ; // After adding "c" : { a , b , c }
    

    // Adding multiple elements
    letters.addAll ( { 'd' , 'e' } ) ;
    print ( 'After adding "d" and "e" : $letters' ) ; // After adding "d" and "e": { a , b , c , d , e }
    

    // Trying to add an existing element (won't affect the set)
    letters.add ( 'a' ) ;
    print ( 'After trying to add existing "a" : $letters' ) ; // After trying to add existing "a": { a , b , c , d , e }


    // ===================== 3. Removing Elements =====================
    print ( '\n=== 3. Removing Elements === ' ) ;
    
    var numbersSet = { 1 , 2 , 3 , 4 , 5 } ;
    print ( 'Original set : $numbersSet' ) ; // Original set: { 1 , 2 , 3 , 4 , 5 }
    

    // Removing a specific element
    numbersSet.remove (3) ;
    print ( 'After removing number 3 : $numbersSet' ) ; // After removing number 3: { 1 , 2 , 4 , 5 }
    

    // Removing multiple elements
    numbersSet.removeAll ( { 1 , 4 } ) ;
    print ( 'After removing numbers 1 and 4 : $numbersSet' ) ; // After removing numbers 1 and 4: { 2 , 5 }
    

    // Removing elements that meet a certain condition
    numbersSet.removeWhere ( ( n ) => n.isEven ) ;
    print ( 'After removing even numbers : $numbersSet' ) ; // After removing even numbers: { 5 }
    

    // Clearing the entire set
    numbersSet.clear () ;
    print ( 'After clearing the set : $numbersSet' ) ; // After clearing the set : {}


    // ===================== 4. Checking Elements =====================
    print ( '\n=== 4. Checking Elements ===' ) ;
    
    var primes = { 2 , 3 , 5 , 7 } ;
    print ( 'Prime numbers set : $primes' ) ; // Prime numbers set : { 2 , 3 , 5 , 7 }
    

    // Checking if an element exists
    print ( 'Does it contain number 3? ${ primes.contains (3) } ' ) ; // true
    print ( 'Does it contain number 4? ${ primes.contains (4) } ' ) ; // false
    

    // Checking if multiple elements exist
    print ( 'Does it contain numbers 2 and 5? ${ primes.containsAll ( { 2 , 5 } ) } ' ) ;  // true
    

    // Number of elements in the set
    print ( 'Number of elements : ${ primes.length } ' ) ; // 4
    

    // Is the set empty?
    print ( 'Is the set empty? ${ primes.isEmpty } ' ) ;  // false


    // ===================== 5. Set Operations =====================
    print ( '\n=== 5. Set Operations ===' ) ;
    
    var setA = { 1 , 2 , 3 } ;
    var setB = { 3 , 4 , 5 } ;

    print ( 'Set A : $setA' ) ; // Set A : { 1 , 2 , 3 }
    print ( 'Set B : $setB' ) ; // Set B : { 3 , 4 , 5 }
    

    // Union (all elements from both sets)
    print ( 'Union : ${ setA.union ( setB ) } ' ) ; // { 1 , 2 , 3 , 4 , 5 }
    

    // Intersection (only common elements)
    print ( 'Intersection : ${ setA.intersection ( setB ) } ' ) ; // {3}
    

    // Difference (elements in A but not in B)
    print ( 'Difference ( A - B ) : ${ setA.difference ( setB ) } ' ) ; // { 1 , 2 }
    

    // Difference (elements in B but not in A)
    print ( 'Difference ( B - A ) : ${ setB.difference ( setA ) } ' ) ; // {4, 5}


    // ===================== 6. Converting Sets =====================
    print ( '\n=== 6. Converting Sets ===' ) ;
    

    var numbersSet2 = { 5 , 3 , 1 , 4 , 2 } ; 
    print ( 'Original set : $numbersSet2' ) ; // Original set : { 5 , 3 , 1 , 4 , 2 }
    

    // Converting set to a list (note order is not guaranteed)
    var listFromSet = numbersSet2.toList () ;
    print ( 'Converted list : $listFromSet' ) ; // Example : [5,3,1,4,2]
    

    // Finding an element (returns null if not found)
    print ( 'Looking for number 3 : ${ numbersSet2.lookup (3) } ' ) ;  // 3
    print ( 'Looking for number 6 : ${ numbersSet2.lookup (6) } ' ) ;  // null


    // ===================== 7. Practical Examples =====================
    print ( '\n=== 7. Practical Examples ===' ) ;
    
    // Example 1: Removing duplicates from a list
    var duplicates = [ 1 , 2 , 2 , 3 , 4 , 4 , 4 , 5 ] ;
    var uniqueList = duplicates.toSet().toList() ;
    print ( 'Original list : $duplicates' ) ; // [ 1 , 2 , 2 , 3 , 4 , 4 , 4 , 5 ]
    print ( 'List without duplicates : $uniqueList' ) ; // [ 1 , 2 , 3 , 4 , 5 ]


    // Example 2: Finding common elements between two sets
    var group1 = { 'Alice' , 'Bob' , 'Charlie' } ;
    var group2 = { 'Bob' , 'Diana' , 'Eve' } ;
    var common = group1.intersection ( group2 ) ;
    print ( 'Common people : $common' ) ; // {Bob}
}   