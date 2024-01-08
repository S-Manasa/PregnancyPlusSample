//
//  MoreView.swift
//  PregnancyPlusSample
//
//  Created by Manasa on 07/12/23.
//

import SwiftUI


struct MoreView: View {
    
    let cards: [CardDetails]
    
    var rows: Int {
            (cards.count + 1) / 2
        }
    
    var body: some View {
        
      
        NavigationView{
            /*List(cards, id: \.title) { card in
                CardView(card: card)*/
            List {
                ForEach(0..<rows) { rowIndex in
                    let startIndex = rowIndex * 2
                    let endIndex = min(startIndex + 2, cards.count)
                    
                    HStack(spacing: 20) {
                        ForEach(startIndex..<endIndex, id: \.self) { columnIndex in
                            
                            CardView(card: cards[columnIndex])
                                
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                        }
                        .padding(.vertical, 20)
                    }
                    .cornerRadius(10)
                }
            }
            
            .padding(.horizontal, 20)
        }
        
    }
}


struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView(cards: CardDetails.sampleData)
        
    }
}
