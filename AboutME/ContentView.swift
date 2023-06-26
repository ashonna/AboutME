//
//  ContentView.swift
//  AboutME
//
//  Created by Aditi  Honna on 6/23/23.
//

import SwiftUI

//
//  ContentView.swift
//  AboutME
//
//  Created by Aditi  Honna on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false // Move the declaration here
    
    var body: some View {
        ZStack {
            VStack {
                Text("Hi there! I'm Aditi. Welcome to my chaotic world!")
                    .font(.headline)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                Image("FIRST")
                    .resizable()
                    .padding(15.0)
                    .frame(width: 350, height: 431.0)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Text("Proceed with CAUTION!")
                    .multilineTextAlignment(.center)
                Button("CAUTION") {
                    self.showDetails = true
                    
                }
                .buttonStyle(OutlineButtonStyle())
                
                    VStack {
                        Text("Here's more context...")
                            .font(.title)
                            .padding()
                        
                        VStack {
                            HStack {
                                Image("loveFAM")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                
                                Text("My true best friends right here. I love family; they always stick with me through thick and thin.")
                            }
                            .padding()
                            .background(Color.cyan)
                            //end of first HSTACK
                            
                            HStack {
                                Image("Nature")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                    
                                Text("I love the outdoors despite the bugs and the scary stuff but sometimes i get really tired and started grumbling about regretting the trip to my fam.")
                            }
                            .padding()
                            .background(Color.blue)
                            //end of second HSTACK
                            
                            HStack {
                                Image("me&brother")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                
                                Text("I have a brother who said he didn't want to be on this app but i put him on anyway cause i love him.")
                            }
                            .padding()
                            .background(Color.cyan)
                            //end of third HSTACK
                            
                            HStack {
                                Image("dog")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                
                                Text("I LOVE DOGS!!I really want a golden retiever so I'm trying convice my parents which has been going on since i was 9. Good luck to me.")
                            }
                            .padding()
                            .background(Color.blue)
                            //end of fourth HSTACK
                        }
                    }
                }
            }
            .padding()
        }
    }


struct OutlineButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 2)
                    .background(Color.cyan)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
