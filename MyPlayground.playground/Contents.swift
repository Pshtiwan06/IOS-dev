import UIKit

var text = "SWIFT"
let max = 10
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

reversedString = "Hello"

if let reversedString = reversedString{
    print("\(reversedString)")
}else{
    print("no result")
}


func reverseString(str: String?) -> String {
    if let str = str{
        return String(str.reversed())
    }else{
        return ""
    }
}

print(reverseString(str: "Vives"))
print(reverseString(str: nil))


func getUpperLowerCount(text: String) -> (upper: String, lower: String, count: Int){
    return (text.uppercased(), text.lowercased(), text.count)
}

var result = getUpperLowerCount(text: "iOS 26")

print(result.upper)
print(result.lower)
print(result.count)
print(result)


func divide(a: Int, b: Int) -> Double{
    return Double(a) / Double(b)
}

print(divide(a: 10, b: 2))
print(divide(a: 10, b: 0))


func calculate(_ numbers: Double...) -> (avg: Double, min: Double, max: Double, count: Int)?{
    if numbers.isEmpty{
        return nil
    }

    var total = 0.0

    for number in numbers{
        total += number
    }

    return (
        total / Double(numbers.count),
        numbers.min()!,
        numbers.max()!,
        numbers.count
    )
}

print(calculate(10, 0, 5) as Any)
print(calculate(4, 5, 6, -3) as Any)
print(calculate(-3) as Any)
print(calculate() as Any)


var x = 10.0
var y = 3

func increment(_ x: inout Double, _ y: inout Int){
    x += 1
    y += 1
}

increment(&x, &y)

print(x)
print(y)


enum StringConversionError: Error{
    case nilParameter
    case emptyParameter
}


func getUpperLowerCount(text: String?) throws -> (upper: String, lower: String, count: Int){

    guard let text = text else{
        throw StringConversionError.nilParameter
    }

    guard !text.isEmpty else{
        throw StringConversionError.emptyParameter
    }

    return (text.uppercased(), text.lowercased(), text.count)
}


var nilText: String? = nil

do{
    let result = try getUpperLowerCount(text: nilText)
    print(result)
}catch StringConversionError.nilParameter{
    print("Nil value parameter not allowed")
}catch StringConversionError.emptyParameter{
    print("Empty String parameter not allowed")
}


var emptyText: String? = ""

do{
    let result = try getUpperLowerCount(text: emptyText)
    print(result)
}catch StringConversionError.nilParameter{
    print("Nil value parameter not allowed")
}catch StringConversionError.emptyParameter{
    print("Empty String parameter not allowed")
}


var iosText: String? = "iOS 26"

do{
    let result = try getUpperLowerCount(text: iosText)
    print(result)
}catch StringConversionError.nilParameter{
    print("Nil value parameter not allowed")
}catch StringConversionError.emptyParameter{
    print("Empty String parameter not allowed")
}


enum PhoneType{
    case iPhoneAir
    case iPhone17Pro
    case iPhone17ProMax
    case iPhone17
}


struct iPhone{

    let supplier = "Apple"

    var type: PhoneType?

    struct Dimension{
        var height: Double
        var width: Double
    }

    var dimension: Dimension

    init(){
        self.dimension = Dimension(height: 0.0, width: 0.0)
        self.type = nil
    }

    init(height: Double, width: Double, type: PhoneType){
        self.dimension = Dimension(height: height, width: width)
        self.type = type
    }

    var description: String{
        switch type{
        case .some(.iPhoneAir):
            return "Apple iPhone Air"

        case .some(.iPhone17Pro):
            return "Apple iPhone 17 Pro"

        case .some(.iPhone17ProMax):
            return "Apple iPhone 17 Pro Max"

        case .some(.iPhone17):
            return "Apple iPhone 17"

        case nil:
            return "Unknown iPhone model"
        }
    }
}


var iPhoneAir = iPhone()

var iPhoneAir2 = iPhone(
    height: 15.62,
    width: 7.47,
    type: .iPhoneAir
)

print(iPhoneAir.description)
print(iPhoneAir2.description)


var arr = ["Dirk", "Els", "Marc", "Eline", "Dominiek"]

var filtered = arr.filter{
    name in name.hasPrefix("D")
}

print(filtered)


func filterArr(name: String) -> Bool{
    return name.hasPrefix("D")
}

let filtered2 = arr.filter(filterArr)

print(filtered2)


func filterArrayExtended(letter: String) -> (String) -> Bool{
    return {
        name in name.hasPrefix(letter)
    }
}

let filtered3 = arr.filter(filterArrayExtended(letter: "E"))

print(filtered3)


var upperNames = arr.map{
    name in name.uppercased()
}

print(upperNames)


var lengths = arr.map{
    name in name.count
}.sorted()

print(lengths)
