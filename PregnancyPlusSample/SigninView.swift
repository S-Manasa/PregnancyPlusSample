//
//  LoginPage.swift
//  PregencyPlus
//
//  Created by Manasa on 27/11/23.
//

import SwiftUI

struct SigninView: View {
    @State var isClicked = false
    var body: some View {
        NavigationStack{
            VStack {
                Image("animation")
                    .resizable()
                    .padding()
            }
            VStack {
                Text("Welcome to Pregnancy +")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Button(action: { isClicked = true}) {
                NavigationLink(destination: UserDetails().navigationBarBackButtonHidden(true)) {
                    Text("Continue with Google")
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
                    NavigationLink(destination: LoginPage().navigationBarBackButtonHidden(true)){
                        Text("Don't have an account?")
                            .fontWeight(.thin)
                            .foregroundColor(.black)
                        Text("Sign up")
                            .fontWeight(.thin)
                            .foregroundColor(Color.blue)
                    }
                }
            }
            
            Text("By creating an account, you give us permission to securely store the data.")
                .font(.footnote)
                .padding()
        }
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
