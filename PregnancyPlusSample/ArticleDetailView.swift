//
//  ArticleDetailView.swift
//  PregnancyPlusSample
//
//  Created by Manasa on 05/01/24.
//

import SwiftUI

struct ArticleDetailView: View {
    let article: ArticleDetails
    var body: some View {
        ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        // Display article image
                        Image(article.img)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity) // Adjust image frame size

                        // Display article title
                        Text(article.title)
                            .font(.title)
                            .foregroundColor(.black)

                        // Display full article content
                        Text(article.content)
                            .font(.body)
                            .foregroundColor(.black)
                            .padding(.horizontal)

                        Spacer() // Spacer to push content to the top
                    }
                }
                .navigationTitle(article.title)
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleArticle = ArticleDetails(title: "Sample Article",img: "https://your-image-url.com/sample-image.jpg", content: "Full content of the sample article...")
        ArticleDetailView(article: sampleArticle)
    }
}
