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
 # Removing Substrings
 */



var str = "Hello, Awesome Swift!!!"

/*
let lastCharIndex = str.index(before: str.endIndex)

var removed = str.remove(at: lastCharIndex)

print(removed)
print(str)

removed = str.removeFirst()
print(removed)
print(str)

str.removeFirst(2)

print(str)

str.removeLast(2)

print(str)

if let range = str.range(of: "Awesome" ) {
    str.removeSubrange(range)
    print(str)
}

str.removeAll() // 메모리 공간도 같이 삭제함

str.removeAll(keepingCapacity: true) // 메모리 공간은 남겨둠

*/




str = "Hello, Awesome Swift!!!"

var substr = str.dropLast()    // SubString 으로 메모리 공간을 공유함

print(substr)

substr = str.dropLast(3)

print(substr)

substr = str.drop(while: { (ch) -> Bool in
    return ch != ","
})

print(substr)
