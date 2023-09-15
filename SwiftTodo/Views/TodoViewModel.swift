//
//  TodoViewModel.swift
//  SwiftTodo
//
//  Created by Donnukrit Satirakul on 14/9/2566 BE.
//

import Alamofire
import Foundation

class TodoViewModel: ObservableObject {
    @Published var todos: [TodoItem] = []
    @Published var errorMessage: String = ""
    @Published var hasError: Bool = false

    func getTodo() {
        AF.request("http://localhost:3000/get_todos", method: .get)
            .responseDecodable(of: [TodoItem].self) { response in
                switch response.result {
                case let .success(res):
                    self.todos = res
                case let .failure(err):
                    debugPrint(err)
                }
            }
    }

    func createTodo(todo: TodoItem) {
        let parameters: Parameters = [
            "title": todo.title,
            "desc": todo.desc,
            "completed": todo.completed,
        ]

        AF.request("http://localhost:3000/create", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseData { response in
            switch response.result {
            case let .success(res):
                debugPrint(res)
            case let .failure(err):
                debugPrint(err)
                
            }
        }

        getTodo()
    }
}
