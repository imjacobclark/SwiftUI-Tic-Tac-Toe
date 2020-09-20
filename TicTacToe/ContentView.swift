import SwiftUI

struct Board: View {
    let size: CGFloat = 50
    
    var body: some View {
        VStack {
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
                        .multilineTextAlignment(.trailing)
                }
            }.padding().padding(.top, 20)

                .frame(minWidth: 0,
                        maxWidth: .infinity,
                        alignment: .leading
                )
                .foregroundColor(Color.white)
                .background(Color.init(red: 66/255, green: 75/255, blue: 84/255))
            
            Spacer()
                        
            VStack {
                HStack(alignment: .center, spacing: 0) {
                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white)
                        .border(width: 1, edge: .bottom, color: .black))
                    
                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white)
                        .border(width: 1, edge: .bottom, color: .black)
                        .border(width: 1, edge: .leading, color: .black))

                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white)
                        .border(width: 1, edge: .bottom, color: .black)
                        .border(width: 1, edge: .leading, color: .black))
                }
                
                HStack(alignment: .center, spacing: 0) {
                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white)
                        .border(width: 1, edge: .bottom, color: .black))
                        
                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white)
                        .border(width: 1, edge: .bottom, color: .black)
                        .border(width: 1, edge: .leading, color: .black))
                        

                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white)
                        .border(width: 1, edge: .bottom, color: .black)
                        .border(width: 1, edge: .leading, color: .black))
                }
                
                HStack(alignment: .center, spacing: 0) {
                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white))
                    
                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white)
                        .border(width: 1, edge: .leading, color: .black))

                    GridItem()
                        .background(Rectangle()
                        .fill(Color.white)
                        .border(width: 1, edge: .leading, color: .black))
                }
            }
            
            Spacer()
            
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
            }.edgesIgnoringSafeArea(.bottom)
            .frame(minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .bottom
            )
            .foregroundColor(Color.white)
            .background(Color.init(red: 66/255, green: 75/255, blue: 84/255))
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Board()
    }
}
