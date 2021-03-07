import Cocoa


var str = "\"Hello\",Swift 5"
var rawStr = #""Hello",Swift 5"#


print(str)


print(rawStr)

str = "Lorem\nIpsum"

print( str )

rawStr = #"Lorem\#nIpsum"#

print(rawStr)

let value = 123

str = "The value is \(value)"

rawStr = #"The value is \#(value)"#


print(str)
print(rawStr)


var zipCodeRegex = "^\\d{3}-?\\d{3}$"

zipCodeRegex = #"^\d{3}-?\d{3}$"#


let zipCode = "123-456"

if let _ = zipCode.range(of: zipCodeRegex , options: [.regularExpression]) {
    print("Valid")
}


