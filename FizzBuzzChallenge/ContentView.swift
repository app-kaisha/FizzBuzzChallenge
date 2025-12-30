//
//  ContentView.swift
//  FizzBuzzChallenge
//
//  Created by app-kaihatsusha on 30/12/2025.
//  Copyright © 2025 app-kaihatsusha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1..<101) { number in
                    //Text("\(getString(number: number))")
//                    Text("\(singleString(number: number))")
                    Text("\(switchString(number: number))")
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding()
    }
    
    func getString(number: Int) -> String {
        if (number % 3 == 0) && (number % 5 == 0) {
            return "FizzBuzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else if number % 5 == 0 {
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
    
    func singleString(number: Int) -> String{
        return "\(number%3 == 0 ? "Fizz" : "")\(number%5 == 0 ? "Buzz" : "")\(number%3 != 0 && number%5 != 0 ? "\(number)" : "")"
    }
    
    func switchString(number: Int) -> String {
        let tuple = (number % 3, number % 5)
        switch tuple {
        case(0,0):
            return "FizzBuzz"
        case(_, 0):
            return "Buzz"
        case(0,_):
            return "Fizz"
        default:
            return "\(number)"
        
        }
    }
}

#Preview {
    ContentView()
}
