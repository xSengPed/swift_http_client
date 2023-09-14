
import Foundation



class TodoViewController : ObservableObject {
    
    @Published var todoList : [Todo] = [Todo]()
    @Published var title : String = ""
    @Published var desc : String = ""
    
    
    init() {
//        debugPrint("[INITIALIZED] - TodoView Controller")
        todoList = [
//            Todo(title: "Learning Flutter", desc: "...", completed: false),
//            Todo(title: "Learngn Swift UI", desc: "...", completed: false),
        ]
    }
    
    func addTodo() {
        todoList.append(Todo(title: title, desc: desc, completed: false))
        title = ""
        desc = ""
    }
    
    func getTodoCount() -> Int {
        return todoList.count
    }
    
    
}
