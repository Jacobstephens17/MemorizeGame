//
//  ContentView.swift
//  Memorize
//
//  Created by Jacob Stephens on 5/21/21.
//

import SwiftUI

struct ContentView: View {

    @State var emojiCount = 13
    var body: some View {
        VStack{
            // MARK: - SCROLLING GRID OF CARDS
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum:90))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }.foregroundColor(.blue)
            }
            // MARK: - SCROLLING GRID OF CARDS
            Spacer()
//            // MARK: - BUTTONS
//            HStack{
//                Spacer()
//                    Button(action:{
//                            if emojiCount > 1 {
//                                emojiCount -= 1
//                            }
//                        },
//                           label:{
//                        Image(systemName: "minus.circle")
//                    })
//                Spacer()
//                    Button(action:{
//                            if emojiCount < emojis.count{
//                                emojiCount += 1}
//                    },
//                           label:{
//                        Image(systemName: "plus.circle")
//                    })
//                Spacer()
//            }
//            .font(.largeTitle)
//            .padding(.top, 14.0)
//            // MARK: - BUTTONS
        }
        .padding(.horizontal)
    }
}
// MARK: - CARD VIEW
struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = false
    var body: some View{
        ZStack{
            let cardShape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                cardShape.fill().foregroundColor(.white)
                cardShape.strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            }else{
                cardShape.fill()
                Text("Memorize")
                    .font(.footnote)
                    .foregroundColor(Color.white)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}
// MARK: - CARD VIEW

// MARK: - PREVIEW VIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
// MARK: - PREVIEW VIEW
