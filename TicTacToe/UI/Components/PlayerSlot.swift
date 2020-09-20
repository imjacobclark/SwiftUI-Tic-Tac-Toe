import SwiftUI

struct PlayerSlot: View {
    @Binding var currentPlayer: Bool
    @State var currentPlayerAtSlot = PlayerStrings.empty
    
    fileprivate func togglePlayer() {
        if(self.currentPlayer == true){
            self.currentPlayer = false
            self.currentPlayerAtSlot = PlayerStrings.cross
        }else{
            self.currentPlayer = true
            self.currentPlayerAtSlot = PlayerStrings.naught
        }
    }
    
    var body: some View {
        Button(action: {
            togglePlayer()
        }) {
            Text(self.currentPlayerAtSlot.rawValue)
                .font(.custom("player", size: 80))
        }
        .frame(width: 115, height: 115)
    }
}

struct GridItem_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSlot(currentPlayer: Binding.constant(true), currentPlayerAtSlot: PlayerStrings.naught)
    }
}
