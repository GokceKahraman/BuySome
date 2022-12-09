//
//  LoginView.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 9.12.2022.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State var phoneNumber = " "
    @State var alanCode =  "0"
    
//    animation properties
    @State var isTapped = false
    
    var body: some View {
        VStack {
            Text("Öncelikle aşağıdaki alana telefon numaranı yaz.")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                       TextField("545 000 00 00", text: $phoneNumber)
//                            .padding(.leading, 16)
//                            .padding(.trailing, 16)
                            .keyboardType(.decimalPad)
                       Rectangle()
                    .fill(isTapped ? Color.accentColor: .blue)
                    .opacity(isTapped ? 1 : 0.5)
                            .frame(height: 1)
                            .foregroundColor(.blue)
//                            .padding(.leading, 16)
//                            .padding(.trailing, 16)
                  }
            .padding(.bottom,30)
                
//                TextField("Enter your phone number", value: ($phoneNumber), format: .number)
//                    .padding()
//                    .keyboardType(.decimalPad)
//                    .padding()
                
//                    TextField("\(alanCode) " + "545 000 00 00", text: $phoneNumber)
////                        .padding()
//                        .keyboardType(.decimalPad)
//                        .padding(.horizontal)
                    
//                    //Divider Color for text
//                    Rectangle()
//                        .fill(isTapped ? Color.accentColor: .gray)
//                        .opacity(isTapped ? 1 : 0.5)
//                        .frame(height: 1)
//                        .padding(.top,10)

                Text("Girmiş olduğun telefon numarasına bir doğrulama SMS'i göndereceğiz.")
                    .font(.system(size: 14))
                    .fontWeight(.ultraLight)
                Spacer()
                
            Button(action: {}, label: {
              HStack {
                Spacer()
                  Text("Üye olmadan devam et").underline()
                   .foregroundColor(Color(hue: 240, saturation: 0.02, brightness: 0.54))
                Spacer()
                }.padding()
                    
            })
                Button(action: {}, label: {
                  HStack {
                    Spacer()
                    Text("Devam Et")
                       .foregroundColor(.white)
                    Spacer()
                    }.padding()
                        .background(Color(hue: 240, saturation: 0.02, brightness: 0.54))
                     .cornerRadius(20)
                })
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
