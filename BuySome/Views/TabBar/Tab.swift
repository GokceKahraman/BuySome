//
//  Tab.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 11.12.2022.
//

import SwiftUI
//data model
struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab : Tab
}

var tabItems = [
    TabItem(text: "Ana Sayfa", icon: "house", tab: .home),
    TabItem(text: "QR Kod", icon: "qrcode.viewfinder", tab: .qrCode),
    TabItem(text: "Kampanya", icon: "gift.fill", tab: .campaigns),
    TabItem(text: "Profil", icon: "person.crop.circle", tab: .profile)
]

enum Tab: String{
    case home
    case qrCode
    case campaigns
    case profile
}
