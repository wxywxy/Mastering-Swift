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
//: [Previous](@previous)

import Foundation

/*:
 # Anchored Option
 */


var str = "Swift Programming"

if let result = str.range(of: "Swift")
{
    print(str.distance(from: str.startIndex, to: result.lowerBound ))           // 0
}
else
{
    print("Not Found")
}

if let result = str.range(of: "Swift" , options: [.backwards])
{
    print(str.distance(from: str.startIndex, to: result.lowerBound ))           // 0
}
else
{
    print("Not Found")
}

if let result = str.range(of: "Swift" , options: [.anchored])
{
    print(str.distance(from: str.startIndex, to: result.lowerBound ))           // 0
}
else
{
    print("Not Found")
}

if let result = str.range(of: "Swift" , options: [.anchored, .backwards])
{
    print(str.distance(from: str.startIndex, to: result.lowerBound ))
}
else
{
    print("Not Found")          // Not Found ( Programming 만 검사 )
}

str = "Programming Swift"

if let result = str.range(of: "Swift" , options: [.anchored, .backwards])
{
    print(str.distance(from: str.startIndex, to: result.lowerBound ))   // 12 ( 뒤에 Swift 만 검사 )
}
else
{
    print("Not Found")
}

str = "Swift Programming"

str.lowercased().hasPrefix("swift") // 접두어 검사

if let _ = str.range(of: "swift" , options: [.anchored,.caseInsensitive] )  // 접두어 검사
{
    print("same prefix")        // same prefix
}


str.lowercased().hasSuffix("swift") // 접미어 검사

if let _ = str.range(of: "swift" , options: [.anchored,.caseInsensitive,.backwards] ) // 접미어 검사
{
    print("same Suffix")
}
else
{
    print("Not Found Suffix")   // Not Found Suffix
}





//: [Next](@next)
