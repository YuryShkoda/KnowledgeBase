import UIKit

// References are shared on assignment and so can have multiple owners, whereas values are copied on assignment and therefore only ever have one owner.
// Reference type: Class, closures
// Value type: Struct, Enum, Dictionary, Array, Tuple and all basic types (Int, Bool, String...)

// Use a value type when:
//  * Comparing instance data with == makes sense
//  * You want copies to have independent state
//  * The data will be used in code across multiple threads
// Use a reference type (e.g. use a class) when:
//  * Comparing instance identity with === makes sense
//  * You want to create shared, mutable state

