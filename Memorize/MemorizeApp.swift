//
//  MemorizeApp.swift
//  Memorize
//
//  Created by KNG001 on 10/21/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(gameViewModel: game)
        }
    }
}
