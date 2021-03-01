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
 # Function Types
 ![ftype](ftype.png)
 */






func sayHello() {
    print("Hello Swift")
}

let f1 = sayHello

f1()



func printHello(with name:String)
{
    print("hello, \(name)")
}

let f2:(String)->() = printHello(with:)
let f3 = printHello(with:)

f3("World")

// f2(with:"test")
// f3(with:"error")

func add(a:Int,b:Int)->Int
{
    return a+b
}

var f4 : (Int,Int) -> Int = add(a:b:)

f4(10,20)


func add(_ a:Int,with b:Int) -> Int
{
    return a+b
}

f4 = add(_:with:)

f4(30,40)


func swapNumbers(_ a:inout Int,_ b:inout Int)
{
    let temp = a
    
    a = b
    b = temp
}

let f5 = swapNumbers(_:_:)

var x = 10
var y = 20

f5(&x,&y)

x
y

func sum(of sums:Int...)
{
    
}

let f6 = sum(of:)

f6(10,20,30)

func add(_ a:Int,_ b:Int) -> Int
{
    return a+b
}


func subtract(_ a:Int,_ b:Int) -> Int
{
    return a - b
}

func multiply(_ a:Int,_ b:Int) -> Int
{
    return a * b
}

func divide(_ a:Int,_ b:Int) -> Int
{
    return a / b
}

typealias ArithmeticFunction = (Int,Int)->Int

//func selectFunction(from op:String) -> (Int,Int) -> Int?
func selectFunction(from op:String) -> ArithmeticFunction?
{
    switch(op)
    {
        case "+":
            return add(_:_:)
        case "-":
            return subtract(_:_:)
        case "*":
            return multiply(_:_:)
        case "/":
            return divide(_:_:)
        default:
            return nil
    }
}

let af = selectFunction(from: "+")

af?(10,20)
selectFunction(from: "*")?(12,34)







