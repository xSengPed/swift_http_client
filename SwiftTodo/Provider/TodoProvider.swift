//
//  TodoProvider.swift
//  SwiftTodo
//
//  Created by Donnukrit Satirakul on 14/9/2566 BE.
//

import Foundation
import Alamofire



class TodoProvider : ObservableObject {
    @Published var todo : [Todo] = [Todo]()

    func fetchTodo() async {
        
        AF.request("http://localhost:3000/get_todos" , method: .get).responseDecodable(of : Todo.self) { response in
         
            
            switch response.result {
                
            case .success(let r) :
                debugPrint(r)
            case .failure(let err):
                debugPrint(err)
                break;
            }
                
        }
        

    }
    
}
