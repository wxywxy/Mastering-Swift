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
 # String Basics
 */

var str = "Hello, Swift String"

var emptyStr = ""                   // 빈문자열
emptyStr = String()                 // 빈문자열

let a = String(true)

print(a)

let b = String(12)

print(b)

let c = String(12.34)

print(c)

let d = String(str)

print(d)

let hex = String(123,radix: 16)     // 16 진수
let octal = String(123,radix: 8)    // 8 진수
let binary = String(123,radix: 2)    // 2 진수

print(hex)
print(octal)
print(binary)

let repeatStr = String(repeating: "*", count: 7 )

print(repeatStr)

let unicode = "\u{1f44f}"

print(unicode)

let e = "\(a) \(b)"
let f = a + " " + b

str += "!!"

print(str)

str.count               // 문자열 길이

str.isEmpty

str == "Apple"

"apple" != "Apple"      // 대소문자 다름 ( 값 true )

"apple" < "Apple"       // 소문자 a 가 더크다 ( 값 false )

str.lowercased()
str.uppercased()

"apple ipad".capitalized         // 각 단어의 문자를 대문자로 ( "Apple Ipad" )

for char in "Hello"
{
    print(char)
}

let num = "1234567890"

num.randomElement()         // 랜덤으로 문자 한개 리턴

