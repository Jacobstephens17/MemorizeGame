//
//  ContentView.swift
//  Memorize
//
//  Created by Jacob Stephens on 5/21/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
// MARK: - SCROLLING GRID OF CARDS
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum:90))]) {
                ForEach(viewModel.cards) { card in
                    CardView(card:card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }.foregroundColor(.blue)
        }.padding(.horizontal)
    }
}
// MARK: - SCROLLING GRID OF CARDS



// MARK: - CARD VIEW
struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack{
            let cardShape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp{
                cardShape.fill().foregroundColor(.blue)
                cardShape.strokeBorder(lineWidth: 3)
                Text(card.content)
                    .font(.largeTitle)
            }else if card.isMatched {
                cardShape.opacity(0)
            }
            else{
                cardShape.fill().foregroundColor(.red)
                Text("Memorize")
                    .font(.subheadline)
                    .foregroundColor(Color.black)
            }
        }
    }
}
// MARK: - CARD VIEW

// MARK: - PREVIEW VIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
    }
}
// MARK: - PREVIEW VIEW
