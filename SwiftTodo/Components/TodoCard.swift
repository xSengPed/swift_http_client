//
//  TodoCard.swift
//  SwiftTodo
//
//  Created by Donnukrit Satirakul on 15/9/2566 BE.
//

import SwiftUI

struct TodoCard: View {
    
    var todo : TodoItem?
    var body: some View {
        VStack {
            HStack {
                Text(todo?.title ?? "title")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                Spacer()
            }
            HStack {
                Text(todo?.desc ?? "desc")
                    .font(.system(size: 16))
                Spacer()
            }
        }
        .frame(height: 75)
    }
}

struct TodoCard_Previews: PreviewProvider {
    static var previews: some View {
        TodoCard()
    }
}
