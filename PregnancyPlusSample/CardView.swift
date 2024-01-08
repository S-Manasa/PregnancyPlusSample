//
//  CardView.swift
//  PregnancyPlusSample
//
//  Created by Manasa on 07/12/23.
//

import SwiftUI


struct CardView: View {
    let card: CardDetails


    var body: some View {
        VStack{
            Image(card.img)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .padding(10)
            Spacer()
            Text(card.title)
                .padding(10)
            
        }
        .background(Color.clear)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1) // Border
        )
        .padding(.vertical, 10)
        
    }
}


struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
        var card = CardDetails.sampleData[0]
        CardView(card: card)
            .background(Color.white)
            .previewLayout(.fixed(width: 150.0, height: 150))
    }
}
