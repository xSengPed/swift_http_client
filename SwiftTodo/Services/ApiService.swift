//
//  ApiService.swift
//  SwiftTodo
//
//  Created by Donnukrit Satirakul on 14/9/2566 BE.
//

import Foundation
import Alamofire

struct TodoItem: Identifiable , Codable {
    let id =  UUID()
    var title : String
    var desc : String
    var completed: Bool

    enum CodingKeys : String , CodingKey {
        case title
        case desc
        case completed
    }
}

enum APIError : Error {
    case invalidUrl, requestError, decodingError, statusNotOk
}

let BASE_URL: String = "https://jsonplaceholder.typicode.com/todos"

struct ApiService {
    
    
 
    static func getTodoNew() {
                
    }
    
    
    func getTodo() async throws -> [TodoItem]{
        
        
        var todos : [TodoItem] = []
        debugPrint("SVC gettodo")

        AF.request(BASE_URL , method: .get).responseDecodable(of : [TodoItem].self) { response in

            switch response.result {

            case .success(let data) :
                
//                debugPrint("Success")
//                debugPrint(data)
                
                todos = data
                
//                debugPrint(todos)

            case .failure(let err) :
                debugPrint("FAILED")
                debugPrint(err)

            }
            
            debugPrint("end get todo")

        }
        
        
        
        debugPrint("end get todo func")
        
//        return [TodoItem(id: 1, title: "String", completed: false)];
        
        debugPrint(todos)
        
        return todos
    }
    
}
