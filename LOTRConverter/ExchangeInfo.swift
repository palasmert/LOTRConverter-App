//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Mert Palas on 24.02.2025.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            // Background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                // Desc text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                
                // Exchange rates
                
                HStack {
                    // Left currency image
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                    // Exchange rate text
                    Text("1 gold piece = 4 gold pennies")
                    
                    // Right currency image
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                    
                }//: HSTACK
                
                // Done Button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.3))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }//: VSTACK
            .foregroundStyle(.black)

        }//: ZSTACK

    }
}

#Preview {
    ExchangeInfo()
}
