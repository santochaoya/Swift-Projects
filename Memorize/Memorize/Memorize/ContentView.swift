//
//  ContentView.swift
//  Memorize
//
//  Created by santochaoya on 15/09/20.
//  Copyright © 2020 Xiao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // a stack to hold multiple view
        return HStack {
            
        // combine multiple view
            ForEach(0..<3) { index in
                CardView()
            }
        }
            .padding()
            .font(Font.largeTitle)
            .foregroundColor(Color.orange) // set the color used to draw, can be called on any view, out of ZStack means to every view inside of this ZStack environment to use orange
    }
}

// make the combine view of one stack to a spcific struct
struct CardView: View {
    // make a condition for FaceUp and FaceDown
    var isFaceUp: Bool = false
    
    var body: some View {
        
        // combine Round rectange and ghost together, return can be removed as there is only one-liner content
        ZStack {
            if isFaceUp {
                
                // set the backgroup rectangle to make sure the background color whether black mode or white mode
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                
                // set a card round rectangle
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3) // make the shape stroked
                Text("👻")
            } else {
                
                // fill the card with background color when face down
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}


// for the preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


