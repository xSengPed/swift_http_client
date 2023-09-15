

import SwiftUI

struct TodoView: View {
    @StateObject var vm = TodoViewModel()

    @State var title: String = ""
    @State var desc: String = ""

    var body: some View {
        NavigationView {
            VStack {
                List(vm.todos) { item in
                    TodoCard(todo: item)
                }
                Spacer()

                VStack {
                    TextField("Todo Title", text: $title)
                    Spacer()
                        .frame(height: 16)
                    TextField("Description", text: $desc)
                    Spacer()
                        .frame(height: 16)
                    HStack {
                        Button("Create New Todo") {
                            vm.createTodo(todo: TodoItem(title: title, desc: desc, completed: false))
                            title = ""
                            desc = ""
                        }
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.capsule)
                        .controlSize(.large)
                    }
                }
                .padding()
            }

            .navigationTitle("My Todo Application")
            .navigationBarTitleDisplayMode(.automatic)

        }.onAppear {
            vm.getTodo()
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
