//
//  ContentView.swift
//  ColoredCards
//
//  Created by Roxy Mardare on 31.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        GeometryReader{geo in
            
            TabView{
            
                ForEach (0..<50){index in
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color(.sRGB, red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1), opacity: 1))
                        Image (systemName: "\(index+1).circle")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        
                    }
                    .frame(width: geo.size.width - 20, height: geo.size.height-40, alignment: .center)
                    .cornerRadius(20)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6), radius: 10, x: -5, y: 5)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
