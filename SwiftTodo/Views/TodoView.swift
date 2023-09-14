

import SwiftUI

struct TodoView: View {
    
    var body: some View {
        VStack {

            Text("Todo View")
        }
        .task {
            
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
