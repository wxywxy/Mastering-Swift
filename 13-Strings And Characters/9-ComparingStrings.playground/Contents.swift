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
 # Comparing Strings
 */

let largeA = "Apple"
let smallA = "apple"
let b = "Banana"

largeA == smallA                                            // false
largeA != smallA                                            // true

largeA < smallA                                             // true
largeA < b                                                  // true
smallA < b                                                  // false

largeA.compare(smallA) == .orderedSame                      // 대소문자 비교 ( false )
largeA.caseInsensitiveCompare(smallA) == .orderedSame       // 대소문자 비교 안함 ( true )

largeA.compare(smallA, options: [.caseInsensitive] ) == .orderedSame // true


let str = "Hello,Swift Programming!"
let prefix = "Hello"
let suffix = "Programming"


str.hasPrefix(prefix)           // true 접두어같은지 비교

str.lowercased().hasPrefix( prefix.lowercased() )    // 모두 소문자로 만들어서 비교


str.hasSuffix(suffix)           // false !가있어서 접미어가 틀림






