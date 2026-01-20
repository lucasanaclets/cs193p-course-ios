//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Lucas Anacleto on 13/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            pegs(colors: [.red, .green, .green, .blue])
            pegs(colors: [.green, .green, .green, .blue])
            pegs(colors: [.blue, .red, .red, .blue])
        }
        .padding()
    }
    
    func pegs(colors: Array<Color>) -> some View {
        HStack{
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10).foregroundStyle(colors[index])
                    .aspectRatio(1, contentMode: .fit)
            }
            MatchMarkers(matches: [.exact,.inexact,.nomatch,.exact])
        }
    }
}



#Preview {
    ContentView()
}
