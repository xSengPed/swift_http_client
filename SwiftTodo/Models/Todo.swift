//
//  Todo.swift
//  SwiftTodo
//
//  Created by Donnukrit Satirakul on 13/9/2566 BE.
//

import Foundation

struct Todo : Decodable {
    var title : String = ""
    var desc  : String = ""
    var completed : Bool = false
}
