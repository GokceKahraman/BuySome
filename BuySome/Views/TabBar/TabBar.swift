//
//  TabBar.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 9.12.2022.
//

import SwiftUI

struct TabBar: View {
//    @State var index = 0
    @State var selectedTab: Tab = .home
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            Group{
                switch selectedTab {
                case .home:
                    HomeView()
                case .qrCode:
                    QRCodeView()
                case .campaigns:
                    CampaignsView()
                case .profile:
                    ProfileView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
         
            HStack{
                ForEach(tabItems) { item in
                    Button {
                        selectedTab = item.tab
                    } label: {
                        HStack (spacing: 0){
                            Image(systemName: item.icon)
                            Text(item.text)
                                .font(.caption2)
                                .lineLimit(1)
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.cyan)
                    }
                    .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
                    }
                }
            .padding(.horizontal, 10)
            .frame(height: 60, alignment: .center)
            .cornerRadius(50)
            .background(.white, in: RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray ,radius: 8)
        }
    }
}
            

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
