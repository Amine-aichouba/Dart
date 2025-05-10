


void main () 
{
    // ===================== 1. Creating Maps =====================
    print ( '\n=== 1. Creating Maps ===' ) ;
    
    // Empty map with type inference
    var emptyMap = < String , int > {} ;
    print ( 'Empty map : $emptyMap' ) ; // Prints : {}
    

    // Map with initial values
    var capitals = 
        {
            'USA' : 'Washington D.C.' ,
            'France' : 'Paris' ,
            'Japan' : 'Tokyo'
        } ;

    print ( 'Capitals map : $capitals' ) ; // Prints: { USA: Washington D.C., France: Paris, Japan: Tokyo}


    // ===================== 2. Adding/Updating Entries =====================
    print ( '\n=== 2. Adding/Updating Entries ===' ) ;
    
    var user = {} ;
    user ['name'] = 'Alice' ;
    user ['age'] = 30 ;
    print ( 'After adding name and age : $user' ) ; // { name: Alice , age: 30 }


    user ['age'] = 31 ; // Update existing value
    print ( 'After updating age : $user' ) ; // { name: Alice , age: 31 }


    user.addAll ( {
            'email': 'alice@example.com' ,
            'isActive': true
        } ) ;
    print ( 'After adding multiple entries : $user' ) ; // {name: Alice , age: 31 , email: alice@example.com, isActive: true}


    // ===================== 3. Accessing Values =====================
    print ( '\n=== 3. Accessing Values ===' ) ;
    
    var book = 
        {
            'title' : 'Dart in Action' , 
            'pages' : 350 ,
            'published' : true
        } ;  
    

    // Access existing key
    print ( 'Book title : ${ book ['title'] } ' ) ; // Dart in Action
    

    // Access non-existent key
    print ( 'Book author : ${ book ['author'] } ' ) ; // null
    

    // Access with null safety
    print ( 'Page count : ${ book ['pages'] ?? 'unknown' } ' ) ; // 350


    // ===================== 4. Checking Map Contents =====================
    print ( '\n=== 4. Checking Map Contents ===' ) ;
    
    var config = 
        {
            'theme' : 'dark' ,
            'fontSize' : 14 ,
            'notifications' : true
        } ;
    
    print ( 'Contains "theme" key : ${ config.containsKey ( 'theme' ) } ' ) ; // true
    print ( 'Contains value 14: ${ config.containsValue ( 14 ) } ' ) ; // true
    print ( 'Map size: ${ config.length } ' ) ;  // 3
    print ( 'Is map empty: ${ config.isEmpty } ' ) ; // false


    // ===================== 5. Removing Entries =====================
    print ( '\n=== 5. Removing Entries ===' ) ;
    
    var inventory = 
        {
            'apples': 5 ,
            'oranges': 3 ,
            'bananas': 7 ,
            'grapes': 10
        } ;
    print ( 'Original inventory : $inventory' ) ;
    

    inventory.remove ( 'oranges' ) ;
    print ( 'After removing oranges : $inventory' ) ; // { apples: 5 , bananas: 7 , grapes: 10 }
    

    inventory.removeWhere ( ( key , value ) => value < 6 ) ;
    print ( 'After removing items with quantity < 6 : $inventory' ) ; // { bananas: 7 , grapes: 10 }
    
    inventory.clear () ;
    print ( 'After clearing inventory : $inventory' ) ; // {}


    // ===================== 6. Iterating Over Maps =====================
    print ( '\n=== 6. Iterating Over Maps ===' ) ;
    
    var scores = 
        {
            'Alice': 90 ,
            'Bob': 85 ,
            'Charlie': 95
        } ;
    
    print ( 'All scores : ' ) ;
    scores.forEach ( ( name , score ) 
        {
            print ( '$name: $score' ) ;
        } ) ;
    
    print ( '\nKeys only : ' ) ;
    for ( var name in scores.keys )  
        {   
            print ( name ) ; 
        }   
    
    print ( '\nEntries :' ) ;
    for ( var entry in scores.entries ) 
        {
            print ( '${ entry.key } scored ${ entry.value } ' ) ; 
        }


    // ===================== 7. Map Transformations =====================
    print ( '\n=== 7. Map Transformations ===' ) ;
    
    var prices = 
        {
            'apple': 1.99 ,
            'banana': 0.99 ,
            'orange': 2.49
        } ;
    

    // Convert all prices to discounted prices
    var discountedPrices = prices.map ( ( fruit , price ) => 
      MapEntry ( fruit , ( price * 0.9 ).toStringAsFixed (2) ) ) ; 
    print ( 'Discounted prices : $discountedPrices' ) ; // { apple: 1.79 , banana: 0.89 , orange: 2.24 }
    

    // Convert map to list of formatted strings
    var priceList = prices.entries.map ( (e) => '${ e.key }: \$${ e.value }' ).toList () ;
    print ( 'Price list : $priceList' ) ; // [ apple: $1.99, banana: $0.99, orange: $2.49 ]


    // ===================== 8. Practical Examples =====================
    print ( '\n=== 8. Practical Examples ===' ) ;
    
    // Example 1: Word frequency counter
    String text = 'hello world hello dart hello world' ;
    var words = text.split (' ') ;
    var wordCount = < String , int > {} ;
    
    for ( var word in words ) 
        {
            wordCount [word] = ( wordCount [word] ?? 0 ) + 1 ;
        }
    print ( 'Word counts : $wordCount' ) ; // { hello: 3 , world: 2 , dart: 1 }
    

    // Example 2: Merging maps
    var defaultSettings = 
        {
            'theme': 'light' ,
            'fontSize': 14 ,
            'notifications': true
        } ;
    
    var userSettings = 
        {
            'theme': 'dark' ,
            'language': 'en'
        } ;
    
    var finalSettings = { ...defaultSettings , ...userSettings } ;
    print ( 'Merged settings: $finalSettings') ;  // {theme: dark, fontSize: 14, notifications: true, language: en}
    
}   