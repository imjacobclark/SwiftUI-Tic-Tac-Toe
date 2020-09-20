import SwiftUI

struct Footer: View {
    var body: some View {
        VStack(){
            Divider()
            
            HStack() {
                Text("You're ⭕️, it is currently ❌'s turn...")
                    .font(.body)
                    .padding()
            }
            
            HStack() {
                Text("Turns taken: 3")
                    .font(.subheadline)
                    .padding()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .frame(minWidth: 0,
                maxWidth: .infinity,
                alignment: .bottom
        )
        .foregroundColor(Color.white)
        .background(Color.init(red: 66/255, green: 75/255, blue: 84/255))
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
    }
}
