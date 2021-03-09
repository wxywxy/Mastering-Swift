//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit
/*:
 # String Interpolation
 ![placeholder](placeholder.png)
 */


var str = ""
let size = 12.34

str = String(size) + "KB"

str = "\(size) KB"












/*:
 ## Format Specifier
 ![format-specifier](format-specifier.png)
 */
str = String(format: "%.1fKB", size )

String(format: "Hello, %@", "Swift" )
String(format: "Hello, %d", 12 )
String(format: "Hello, %f", 12.34 )
String(format: "Hello, %10.3f", 12.34 )

print( String(format: "[%10d]", 123 ) )
print( String(format: "[%-10d]", 123 ) )

let firstName = "Yun-Seo"
let lastName = "Ji"

let korFormat = "그녀의 이름은 %2$@ %1$@ 입니다"
let engFormat = "Her name is %@ %@ 입니다"

print( String(format: korFormat, firstName , lastName ) )
print( String(format: engFormat, firstName , lastName ) )



str = "\\"
print(str)

print("A\tB")

print("C\nB")

struct Size
{
    var width = 0.0
    var height = 0.0
}

let s = Size(width: 1.2, height: 3.4)

print("\(s)")

/*
extension Size : CustomStringConvertible
{
    var description: String
    {
        return "\(width) x \(height)"
    }
}

extension String.StringInterpolation
{
    mutating func appendInterpolation(_ value:Size)
    {
        appendInterpolation("\(value.width) x \(value.height)")
    }
}
*/






