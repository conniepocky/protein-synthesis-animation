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
                Text("Stage One - Transcription")
                    .padding(5)
                    .font(.title2)
                
                Text("DNA is found in the nucleus of a cell, but proteins are produced in the cytoplasm in the ribosome. DNA is too large to leave the nucleus and so must be transferred some other way.")
                    .multilineTextAlignment(.center)
                    .italic()
                
            } else if stage == 2 {
                Text("Stage One - Transcription")
                    .padding(5)
                    .font(.title2)
                
                Text("RNA polymerase, an enzyme, binds to the non coding region of DNA in front of a gene....")
                    .multilineTextAlignment(.center)
                    .italic()
                
                Image("enzyme")
                    .resizable()
                    .scaledToFit()
                
            } else if stage == 3 {
                Text("Stage One - Transcription")
                    .padding(5)
                    .font(.title2)
                
                Text("...the two strands of DNA unzip and the RNA polymerase moves along one of the strands...")
                    .multilineTextAlignment(.center)
                    .italic()
                
                Image("unzipped")
                    .resizable()
                    .scaledToFit()
            } else if stage == 4 {
                Text("Stage One - Transcription")
                    .padding(5)
                    .font(.title2)
                
                Text("...the RNA polymerase then uses the coding section of DNA (the gene) as a template to make mRNA. Base pairing between the DNA and RNA ensures that the mRNA is complementary to the gene. A-U, C-G.")
                    .multilineTextAlignment(.center)
                    .italic()
                
                Image("mrna")
                    .resizable()
                    .scaledToFit()
            } else if stage == 5 {
                Text("The mRNA molecule now moves out of the nucleus and joins with a ribosome.")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(5)
                Image("ribosome")
                    .resizable()
                    .scaledToFit()
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
