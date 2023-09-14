//
//  Card.swift
//  SwiftTodo
//
//  Created by Donnukrit Satirakul on 13/9/2566 BE.
//

import SwiftUI

struct Card: View {
    
    var todo : Todo
    var body: some View {
        VStack {
            HStack {
                Text(todo.title)
                Spacer()
            }
            HStack {
                Text(todo.desc)
                Spacer()
            }
            
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(todo: Todo(title: "Title", desc: "DESC", completed: false))
    }
}
