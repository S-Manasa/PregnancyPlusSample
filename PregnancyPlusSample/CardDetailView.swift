//
//  CardDetailView.swift
//  PregnancyPlusSample
//
//  Created by Manasa on 05/01/24.
//

import SwiftUI

struct CardDetailView: View {
    let card: CardDetails
    var body: some View {
        ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        // Display article image
                        Image(card.img)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity) // Adjust image frame size

                        // Display article title
                        Text(card.title)
                            .font(.title)
                            .foregroundColor(.black)


                        Spacer()
                    }
                }
                .navigationTitle(card.title)
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: CardDetails.sampleData[0])
    }
}
