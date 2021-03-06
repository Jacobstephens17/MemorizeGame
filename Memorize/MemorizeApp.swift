//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jacob Stephens on 5/21/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
                    ContentView(viewModel: game)
        }
    }
}
