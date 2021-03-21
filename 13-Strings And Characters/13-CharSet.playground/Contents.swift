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
import Foundation

/*:
 # Character Set
 */


let a = CharacterSet.uppercaseLetters           // 대문자셋

let b = a.inverted                              // 소문자 셋


var str = "loRem Ipsum"
var charSet = CharacterSet.uppercaseLetters     // 대문자셋

if let range = str.rangeOfCharacter(from: charSet)  // R 첫번째 대문자
{
    print(str.distance(from: str.startIndex, to: range.lowerBound ))
}

if let range = str.rangeOfCharacter(from: charSet , options: [.backwards])  // I backwards 첫번째 대문자
{
    print(str.distance(from: str.startIndex, to: range.lowerBound ))
}

str = " A p p l e "

charSet = .whitespacesAndNewlines

let trimmed = str.trimmingCharacters(in: charSet  )   // 문자열에 앞쪽 뒤쪽에 있는 문자중 in 에 포함된 문자를 삭제후 리턴
print(str)          // A p p l e
print(trimmed)      //A p p l e         ( 시작과 끝에있는 공백이 없어짐 )

var editTarget = CharacterSet.uppercaseLetters

editTarget.insert("#")                  // 새로운 문자열 추가
editTarget.insert(charactersIn: "~!@")  // 여러개 문자열 추가

editTarget.remove("A")                  // 문자 삭제
editTarget.remove(charactersIn: "ABC")  // 문자열 삭제


let customCharSet = CharacterSet(charactersIn: "@.")
let email = "userId@example.com"

let components = email.components(separatedBy: customCharSet)    // 문자열이 분리됨 ["userId", "example", "com"]

