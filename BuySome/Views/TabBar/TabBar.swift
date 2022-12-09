//
//  TabBar.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 9.12.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Ana Sayfa")
                }
            QRCodeView()
                .tabItem{
                    Image(systemName: "qrcode.viewfinder")
                    Text("QR Kod")
                }
            CampaignsView()
                .tabItem{
                    Image(systemName: "gift.fill")
                    Text("Kampanya")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("Profil")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
