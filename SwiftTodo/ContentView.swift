//
//  ContentView.swift
//  SwiftTodo
//
//  Created by Donnukrit Satirakul on 13/9/2566 BE.
//

import SwiftUI

struct ContentView: View {
        

    
    var body: some View {
//        VStack {
//            Text(String(counterProvider.count))
//            HStack {
//
//
//                Button("Increment") {
//                    counterProvider.increment()
//                }
//                .buttonStyle(.borderedProminent)
//                Button("Decrement") {
//                    counterProvider.decrement()
//                }
//                .buttonStyle(.borderedProminent)
//            }
//        }
        TodoView()
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
