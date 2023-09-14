//
//  TodoViewModel.swift
//  SwiftTodo
//
//  Created by Donnukrit Satirakul on 14/9/2566 BE.
//

import Foundation
import Alamofire


class TodoViewModel : ObservableObject {
    
    @Published var todos : [TodoItem] = []
    @Published var errorMessage : String = ""
    @Published var hasError : Bool = false
    

    func getTodo() -> Void {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        AF.request(BASE_URL , method: .get).responseDecodable(of : [TodoItem].self , decoder: decoder) { response in
            
            switch response.result {
                
            case .success(let res) :
                self.todos = res
            case .failure(let err) :
                debugPrint(err)
            }
            
            
            
        }
    }
    
}
