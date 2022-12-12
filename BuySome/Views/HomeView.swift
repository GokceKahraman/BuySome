//
//  HomeView.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 8.12.2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var sheetManager: SheetManager

    
    var body: some View {
        ZStack(alignment: .top){
            Color
                .mint
                .ignoresSafeArea()
            VStack( spacing: 8){
                HStack{
                    Text("Hoş geldin 👋")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    
                    Button(action: {sheetManager.present()}, label: {
                        HStack{
                            Text("Giriş Yap").underline(pattern: .dash)
                                .foregroundColor(.white)
                        }
                    })
                }
                .padding()
                
                HStack{
                    Spacer()

                    Button(action: {sheetManager.present()}, label: {
                        VStack(spacing: 10){
                            Image(systemName: "person.circle")
                            Text("Üye ol")
                                
                        }
                    })
                    .padding()
                    .frame(height: 135)
                    .frame(maxWidth: 120)
                    .symbolVariant(.fill)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 2)
                    )
                    Spacer()

                    
                    
                    Button(action: {sheetManager.present()}, label: {
                        VStack(spacing: 10){
                            Image(systemName: "person.circle")
                            Text("Mağazadan Alışveriş yap")
                                .font(.body)
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                        }
                    })
                    .padding()
                    .frame(height: 135)
                    .frame(maxWidth: 120)
                    .symbolVariant(.fill)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 2)
                    )
                    Spacer()

                    
                    Button(action: {sheetManager.present()}, label: {
                        VStack{
                            Image(systemName: "person.circle")
                            Text("Bakiye kazan doya doya harca")
                                .lineLimit(3)
                                .multilineTextAlignment(.center)
                        }
                    })
                    .padding()
                    .frame(height: 135)
                    .frame(maxWidth: 120)
                    .symbolVariant(.fill)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 2)
                    )
                    Spacer()

                }
                
                           

                VStack(alignment: .center, spacing: 20){
                    HStack{
                        TicketViewRow(name: "Süt",itemCount: "0", dividedSymbol: "/", maxCount: "10")
                    Spacer()
                        TicketViewRow(name: "Yeşillik",itemCount: "0", dividedSymbol: "/", maxCount: "10")
                            
                    }
                    
                    HStack{
                        TicketViewRow(name: "Ekmek",itemCount: "0", dividedSymbol: "/", maxCount: "10")
                    Spacer()
                        TicketViewRow(name: "5L Su",itemCount: "0", dividedSymbol: "/", maxCount: "10")

                    }
                    
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            .overlay(alignment: .bottom){
                if sheetManager.action.isPresented{
                    RegisterPopupView()
                }
            }

        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(SheetManager())
    }
}
