//
//  ProfileView.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 9.12.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            Image(systemName: "person.crop.circle.fill.badge.plus")
            Text("Profilim")
                .bold()
            Text("Hesabını görüntüleyebilmek için üye ol ya da giriş yap.")
            
            Button(action: {}, label: {
                HStack{
                    Spacer()
                    Text("Giriş Yap")
                        .foregroundColor(.white)
                    Spacer()
                }.padding()
                    .background(.blue)
                 .cornerRadius(20)
            })
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
