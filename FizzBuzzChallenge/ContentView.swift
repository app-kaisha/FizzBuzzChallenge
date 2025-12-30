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
                    Text("\(getString(number: number))")
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding()
    }
    
    func getString(number: Int) -> String {
        if (number % 3 == 0) && (number % 5 == 0) {
            return "FizzBuzz"
        }
        if number % 3 == 0 {
            return "Fizz"
        }
        if number % 5 == 0 {
            return "Buzz"
        }
        return "\(number)"
    }
}

#Preview {
    ContentView()
}
