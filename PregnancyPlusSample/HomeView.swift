//
//  HomeView.swift
//  PregencyPlus
//
//  Created by Manasa on 27/11/23.
//

import SwiftUI

struct HomeView: View {
    let articles: [ArticleDetails]
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(articles) { article in
                    NavigationLink(destination: ArticleDetailView(article: article)) {
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Image(article.img)
                                .frame(height: 150)
                               
                            Spacer().frame(height: 10)
                            
                            Text(article.title)
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            
                            Text(article.content.prefix(200))
                                .foregroundColor(.gray)
                                .lineLimit(2)
                        }
                        .padding(8)
                    }
                }
                
            }
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeView(articles: ArticleDetails.articleData)
    }
}
