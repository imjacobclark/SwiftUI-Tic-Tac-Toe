    import SwiftUI

struct Header: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 0) {
                Text("Tic")
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                Text("Tac")
                    .fontWeight(.ultraLight)
                    .font(.largeTitle)
                Text("Toe")
                    .fontWeight(.semibold)
                    .font(.largeTitle)
            }
            
            HStack {
                Text("Play 3 in a row horizontal, vertical or diagonal.")
                    .fontWeight(.regular)
                    .font(.footnote)
            }
        }
        .padding()
        .padding(.top, 20)
        .frame(minWidth: 0,
                maxWidth: .infinity,
                alignment: .leading
        )
        .foregroundColor(Color.white)
        .background(Color.init(red: 66/255, green: 75/255, blue: 84/255))
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
