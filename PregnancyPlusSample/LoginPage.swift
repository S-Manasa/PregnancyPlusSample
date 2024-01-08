//
//  LoginPage.swift
//  PregencyPlus
//
//  Created by Manasa on 27/11/23.
//

import SwiftUI

struct LoginPage: View {
    @State var isClicked = false
    var body: some View {
        NavigationStack{
            VStack {
                Image("animation")
                    .resizable()
                    .padding()
            }
            VStack {
                Text("Welcome to Pregnancy+")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Button(action: { isClicked = true}) {
                NavigationLink(destination: UserDetails().navigationBarBackButtonHidden(true)) {
                    Text("Continue without an account")
                        .fontWeight(.regular)
                        .font(.title3)
                    //.frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(40)
                }
                
            }
            .sheet(isPresented: $isClicked) {
                NavigationStack{
                    UserDetails()
                }
            }
            HStack {
                Button(action: {}){
                    NavigationLink(destination: SigninView().navigationBarBackButtonHidden(true)){
                        Text("Already have an account?")
                            .foregroundColor(.black)
                        Text("Log in")
                            .foregroundColor(Color.blue)
                    }.fontWeight(.thin)
                }
            }
            
            Text("By creating an account, you give us permission to securely store the data.")
                .font(.footnote)
                .padding()
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
