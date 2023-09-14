

import SwiftUI

struct TodoView: View {
    @StateObject var vm = TodoViewModel()
    var body: some View {
        VStack {
            Text("TODO")
            Button("POST") {
                vm.createTodo()
            }.buttonStyle(.borderedProminent)
            Text(String(vm.todos.count))
            
            List(vm.todos) {
                item in
                Text(item.title)
            }

        }
        .task {
          vm.getTodo()
        }.onAppear()  {

        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
