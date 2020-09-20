import SwiftUI

struct PlayerSlot: View {
    @Binding var currentPlayer: Bool
    @State var currentPlayerAtSlot = " "
    
    var body: some View {
        Button(action: {
            if(self.currentPlayer == true){
                self.currentPlayer = false
                self.currentPlayerAtSlot = "❌"
            }else{
                self.currentPlayer = true
                self.currentPlayerAtSlot = "⭕️"
            }
        }) {
            Text(self.currentPlayerAtSlot)
                .font(.custom("player", size: 80))
        }
        .frame(width: 115, height: 115)
    }
}

struct GridItem_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSlot(currentPlayer: Binding.constant(true), currentPlayerAtSlot: "⭕️")
    }
}
