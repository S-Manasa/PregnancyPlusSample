//
//  UserDetails.swift
//  PregencyPlus
//
//  Created by Manasa on 27/11/23.
//

import SwiftUI

struct UserDetails: View {
    @State var name: String = ""
    @State var age: String = ""
    @State var ifPregnamt: String = ""
    @State var relationship: String = ""
    @State var children: String = ""
    @State var value1: String = ""
    @State var value2: String = ""
    @State var value3: String = ""
    @State var placeholder: String = "Select"
    @State var isClicked = false
    @State var navigateToTerms = false
    var dropDownList = ["Yes", "No"]
    let dropDownList3 = ["Yes", "Not yet"]
    let dropDownList4 = ["Mother", "Father"]
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Text("About you")
                    .font(.title)
                    .fontWeight(.bold)
                
                VStack {
                    TextField("Your name", text: $name)
                        .padding(.horizontal, 10.0)
                        .frame(height: 42)
                        .overlay(
                            RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                                .stroke(Color.gray, lineWidth: 1)
                        ).padding()
                   
                    
                    
                    
                    TextField("Age", text: $age)
                        .padding(.horizontal, 10)
                        .frame(height: 42)
                        .overlay(
                            RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                                .stroke(Color.gray, lineWidth: 1)
                        ).padding(.horizontal)
                    
                    Menu {
                        ForEach(dropDownList3, id: \.self){ client in
                            Button(client) {
                                value1 = client
                            }
                        }
                    }label:{
                        ZStack {
                            TextField("", text: $ifPregnamt)
                                .padding(.horizontal, 10)
                                .frame(height: 42)
                                .overlay(
                                    RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                            HStack {
                                Text("Are you Pregnant?")
                                    .font(.headline)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                                    .padding(4)
                                    .background(.white)
                                Spacer()
                            }
                            .padding(.leading, 8)
                            .offset(CGSize(width: 0, height: -20))
                            HStack {
                                Text(value1)
                                    .font(.headline)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(4)
                                    .background(.white)
                                Spacer()
                            }.padding()
                        }.padding()
                    }
                    
                    Menu {
                        ForEach(dropDownList4, id: \.self){ x in
                            Button(x) {
                                value2 = x
                            }
                        }
                    }label:{
                        ZStack {
                            TextField("", text: $relationship)
                                .padding(.horizontal, 10)
                                .frame(height: 42)
                                .overlay(
                                    RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                            HStack {
                                Text("Relationship")
                                    .font(.headline)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                                    .padding(4)
                                    .background(.white)
                                Spacer()
                            }
                            .padding(.leading, 8)
                            .offset(CGSize(width: 0, height: -20))
                            HStack{
                                Text(value2)
                                    .font(.headline)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(4)
                                    .background(.white)
                                Spacer()
                            }.padding()
                        }.padding(.horizontal)
                    }
                    
                    Menu {
                        ForEach(dropDownList, id: \.self){ client in
                            Button(client) {
                                value3 = client
                            }
                        }
                    }label:{
                        TextField(value3.isEmpty ? "Do you have children?" : value3, text: $children)
                            .padding(.horizontal, 10.0)
                            .frame(height: 42)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .overlay(
                                RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .padding()
                    }
                }
                Spacer()
                NavigationLink(destination: termsView().navigationBarBackButtonHidden(false).navigationTitle("Terms of Use")) {
                    Text("By tapping continue, you agree to our ")
                        .font(.footnote)
                        .foregroundColor(Color.black) +
                    Text("terms and  our privacy policy")
                        .foregroundColor(Color.blue)
                        .font(.footnote)
                }
                Text("")
                Text("")
                Button(action: {}) {
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                        Text("Continue")
                            .fontWeight(.regular)
                            .font(.title3)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(40)
                    }
                }
            }.padding()
        }
    }
}

struct UserDetails_Previews: PreviewProvider {
    static var previews: some View {
        UserDetails()
    }
}
