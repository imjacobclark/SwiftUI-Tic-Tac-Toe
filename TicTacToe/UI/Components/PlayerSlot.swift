import SwiftUI

struct PlayerSlot: View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("❌")
                .font(.custom("player", size: 80))
        }
        .frame(width: 115, height: 115)
    }
}
struct GridItem_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSlot()
    }
}
