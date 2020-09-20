import SwiftUI

struct GameArea: View {
    @State var currentPlayer = true

    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 0) {
                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white)
                    .border(width: 1, edge: .bottom, color: .black))
                
                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white)
                    .border(width: 1, edge: .bottom, color: .black)
                    .border(width: 1, edge: .leading, color: .black))

                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white)
                    .border(width: 1, edge: .bottom, color: .black)
                    .border(width: 1, edge: .leading, color: .black))
            }
            
            HStack(alignment: .center, spacing: 0) {
                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white)
                    .border(width: 1, edge: .bottom, color: .black))
                    
                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white)
                    .border(width: 1, edge: .bottom, color: .black)
                    .border(width: 1, edge: .leading, color: .black))
                    

                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white)
                    .border(width: 1, edge: .bottom, color: .black)
                    .border(width: 1, edge: .leading, color: .black))
            }
            
            HStack(alignment: .center, spacing: 0) {
                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white))
                
                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white)
                    .border(width: 1, edge: .leading, color: .black))

                PlayerSlot(currentPlayer: $currentPlayer)
                    .background(Rectangle()
                    .fill(Color.white)
                    .border(width: 1, edge: .leading, color: .black))
            }
        }
    }
}

struct GameArea_Previews: PreviewProvider {
    static var previews: some View {
        GameArea()
    }
}
