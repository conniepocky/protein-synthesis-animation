//
//  ContentView.swift
//  Protein Synthesis
//
//  Created by Connie Waffles on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var stage = 0
    var body: some View {
        VStack {
            if stage == 0 {
                Text("Proteins are made from amino acids.")
                    .padding(5)
                    .font(.title3)
                Text("A section of DNA that codes for a particular protein is called a gene. Each amino acid is coded for by a sequence of three bases in a gene")
                    .multilineTextAlignment(.center)
                    .italic()
                Image("dna")
                    .resizable()
                    .scaledToFit()
            } else if stage == 1 {
                Text("hey")
                    .transition(.opacity)
            }
            
            Button("Tap to continue") {
                stage += 1
            }.fontWeight(.bold)
                .padding()
            
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .animation(Animation.easeInOut(duration: 1).delay(0.5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
