import SwiftUI

struct Board: View {
    let size: CGFloat = 50
    
    var body: some View {
        VStack {
            Header()
            Spacer()
            GameArea()
            Spacer()
            Footer()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Board()
    }
}
