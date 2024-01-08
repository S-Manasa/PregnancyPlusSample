//
//  ContentView.swift
//  PregencyPlus
//
//  Created by Manasa on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            TabView {
                NavigationView {
                    HomeView(articles: ArticleDetails.articleData)
                        .navigationTitle("Today")
                }
                .tabItem {
                    Label("Today", systemImage: "calendar")
                }
                NavigationView {
                    BabyView(cards: CardDetails.BabyData)
                        .navigationTitle("Baby")
                        
                }
                    .tabItem {
                        Label("Baby", systemImage: "figure.arms.open")
                    }
                NavigationView {
                    MeView(cards: CardDetails.MeData)
                        .navigationTitle("Me")
                       
                }
                    .tabItem {
                        Label("Me", systemImage: "person.circle")
                    }
                //Text("More")
                NavigationView {
                    MoreView(cards: CardDetails.sampleData)
                        .navigationTitle("More")
                        .navigationBarBackButtonHidden(false)
                        
                }
                .tabItem {
                    Label("More", systemImage: "ellipsis.circle")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
