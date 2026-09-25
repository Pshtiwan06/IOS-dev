import UIKit

var text = "SWIFT"
var max = 10
var average = 0.0

for c in text{
    print(c)
}
var name = ("Voornaam", "Achternaam")
print(name.0)
print(name.1)

var reversedString: String? = nil
if let reversedString = reversedString{
    print("\(reversedString)")
}else{
    print("no result")
}

func reverseString(str: String) -> String {
    return "\(str.reversed())"
}
print(reverseString(str: "Hello"))
