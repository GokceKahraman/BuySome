//
//  HomeView.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 8.12.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .leading){
            VStack(){
                HStack{
                    Text("Hoş geldin 👋")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    
                    Button(action: {}, label: {
                        HStack{
                            Text("Giriş Yap").underline(pattern: .dash)
                                .foregroundColor(.white)
                        }
                    })
                }
                .padding()
                
                HStack{
                    Button(action: {}, label: {
                        VStack{
                            Image(systemName: "person.circle")
                            Text("Üye ol")

                        }
                    })
                    .font(.body)
                    .overlay(
                      RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.white, lineWidth: 1)
                    )
                    .frame(maxWidth: .infinity)

                    
                    Button(action: {}, label: {
                        VStack{
                            Image(systemName: "person.circle")
                            Text("Mağazadan Alışveriş yap")
                                .font(.body)
                                .lineLimit(2)
                        }
                    })
                    .frame(width: 100, height: 160)
                    .cornerRadius(10)

                    
                    Button(action: {}, label: {
                        VStack{
                            Image(systemName: "person.circle")
                            Text("Bakiye kazan doya doya harca")
                                .font(.body)
                                .lineLimit(3)
                        }
                    })
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)

                }
                .frame(height: 170)
                .padding()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(.systemCyan))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
