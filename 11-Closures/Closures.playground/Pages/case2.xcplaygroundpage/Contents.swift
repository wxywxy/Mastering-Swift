//: [Previous](@previous)

import Foundation


print("Start")

DispatchQueue.main.asyncAfter(deadline: .now() + 5 , execute: { print("End")})

DispatchQueue.main.asyncAfter(deadline: .now()+5) {
    print("End")
}

