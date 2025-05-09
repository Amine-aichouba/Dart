
 
void main () 
{
    // ===== 1. STRING CREATION =====
    print ( ' === STRING CREATION === ' ) ;
    String singleLine = 'Hello Dart' ;
    String multiLine = '''
      This string
      spans multiple
      lines
    ''' ;
    String rawString = r'Raw \n string' ; // Escapes are literal
    
    print ( singleLine ) ;
    print ( multiLine ) ; 
    print ( rawString ) ;  // Prints "Raw \n string" (no newline)

    // ===== 2. STRING PROPERTIES =====
    print ( ' \n=== STRING PROPERTIES === ' ) ;
    String message = 'Dart Programming' ;
    
    print ( ' Length : ${ message.length } ' ) ;       // 16
    print ( ' First character : ${ message [0] } ' ) ; // 'D'
    print ( ' Is empty: ${ message.isEmpty } ' ) ;     // false
    print ( ' Code units: ${ message.codeUnits } ' ) ; // Unicode values

    // ===== 3. STRING MANIPULATION =====
    print ( ' \n=== STRING MANIPULATION === ' ) ;

    // Concatenation
    print ( 'Hello ' + 'Dart' ) ; // Old way
    print ( ' ${ message } Language ' ) ; // String interpolation
    
    // Case conversion
    print ( message.toUpperCase () ) ; // 'DART PROGRAMMING'
    print ( message.toLowerCase () ) ; // 'dart programming'
    
    // Trimming
    String padded = '   Dart   ' ;
    print ( ' |${ padded.trim () }| ' ) ;      //  '|Dart|'
    print ( ' |${ padded.trimLeft () }| ' ) ;  //  '|Dart   |'
    print ( ' |${ padded.trimRight () }| ' ) ; //  '|   Dart|'

    // Padding
    print ( message.padLeft ( 20 , '*' ) ) ;  // '****Dart Programming'
    print ( message.padRight ( 20 , '-' ) ) ; // 'Dart Programming----'

    // ===== 4. STRING SEARCHING =====
    print ( ' \n === STRING SEARCHING === ' ) ;
    String text = 'Dart is awesome and Dart is productive' ;
    
    print ( text.contains ( 'Dart' ) ) ;      // true
    print ( text.startsWith ( 'Dart' ) ) ;    // true
    print ( text.endsWith ( 'productive' ) ) ;// true
    print ( text.indexOf ( 'is' ) ) ;         // 5
    print ( text.lastIndexOf ( 'is' ) ) ;     // 25
    print ( text.indexOf ( 'Flutter' ) ) ;    // -1 ( not found )

    // ===== 5. STRING EXTRACTION =====
    print ( '\n === STRING EXTRACTION === ' ) ;
    print ( text.substring (5) ) ;     // 'is awesome and Dart is productive'
    print ( text.substring ( 5 , 12 ) ) ;   // 'is awes'
    print ( text.replaceAll ( 'Dart' , 'Flutter' ) ) ; // Replaces all occurrences

    // ===== 6. SPLITTING AND JOINING =====
    print ( ' \n=== SPLITTING AND JOINING === ' ) ;
    String csv = 'apple,banana,orange' ;
    List < String > fruits = csv.split ( ',' ) ;
    print ( fruits ) ; // [ 'apple' , 'banana' , 'orange' ]
    
    print ( fruits.join ( '; ' ) ) ;  // 'apple; banana; orange'
    
    // Split with pattern
    String sentence = 'Hello Dart, how are you?' ;
    print ( sentence.split ( RegExp ( r'[ ,?]' ) ) ) ; // Split on space, comma, or question mark

    // ===== 7. STRING VALIDATION =====
    print ( '\n === STRING VALIDATION === ' ) ;
    String? userInput = '   ' ;
    
    print ( userInput.isEmpty ) ;    // false (has whitespace)
    print ( userInput.trim().isEmpty ) ; // true
    print ( userInput.isNotEmpty ) ;  // true

    // ===== 8. STRING COMPARISON =====
    print ( ' \n === STRING COMPARISON === ' ) ;
    String a = 'apple' ;
    String b = 'Apple' ;
    
    print ( a == b ) ; // false
    print ( a.toLowerCase () == b.toLowerCase () ) ; // true
    print ( a.compareTo (b) ) ; // 1 ( ASCII comparison )

    // ===== 9. REGULAR EXPRESSIONS =====
    print ( '\n=== REGULAR EXPRESSIONS === ' ) ;
    String phone = '+1 (555) 123-4567' ;
    String digits = phone.replaceAll ( RegExp ( r'[^0-9]' ) , '' ) ; 
    print ( digits ) ; // '15551234567'
    
    // Email validation
    bool isValidEmail ( String email )  {
        return RegExp ( r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$' ).hasMatch ( email ) ;
    }

    print ( isValidEmail ( 'user@example.com' ) ) ; // true
    print ( isValidEmail ( 'invalid.email' ) ) ;   // false

    // ===== 10. REAL-WORLD EXAMPLES =====
    print ( ' \n=== REAL-WORLD EXAMPLES === ' ) ;
    
    // Password strength checker
    bool isStrongPassword ( String password ) 
    {
        return     password.length >= 8 
                && password.contains ( RegExp ( r'[A-Z]' ) ) 
                && password.contains ( RegExp ( r'[a-z]' ) ) 
                && password.contains ( RegExp ( r'[0-9]' ) ) 
                && password.contains ( RegExp ( r'[!@#$%^&*(),.?":{}|<>]' ) ) ;
    }
    
    print ( isStrongPassword ( 'Pass123!' ) ) ; // true
    print ( isStrongPassword ( 'weak' ) ) ;   // false

    // URL parameter extraction
    String url = 'https://example.com/search?q=dart&page=2' ;
    Uri uri = Uri.parse ( url ) ;
    print ( 'Query parameters : ${ uri.queryParameters } ' ) ; // { q: dart , page: 2 }
    print ( 'Path segments : ${ uri.pathSegments } ' ) ; // [ 'search' ]

    // String buffer for efficient concatenation
    StringBuffer buffer = StringBuffer () ;
    buffer.write ( 'Dart' ) ;
    buffer.write ( ' is' ) ;
    buffer.write ( ' awesome!' ) ;
    print ( buffer.toString () ) ; // 'Dart is awesome!'
}