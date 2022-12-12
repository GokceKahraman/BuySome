//
//  TicketViewRow.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 11.12.2022.
//

import SwiftUI

struct TicketViewRow: View {
    var name: String
    var itemCount: String //int yapıp body düzenle
    var dividedSymbol: String
    var maxCount : String
    
    
    
    var body: some View{
        HStack(alignment: .center, spacing: 40) {
            Text(name)
            Divider()
                .padding(.vertical, 88)
                .background(Color(.systemCyan))
            HStack(alignment: .center, spacing: 2) {
                Text(itemCount)
                    .bold()
                    .font(.body)
                Text(dividedSymbol)
                    .bold()
                    .font(.body)
                Text(maxCount)
                    .bold()
                    .font(.body)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.white)
        .cornerRadius(15)

    }
}

struct TicketViewRow_Previews: PreviewProvider {
    static var previews: some View {
        TicketViewRow(name: "Süt", itemCount: "0",dividedSymbol: "/", maxCount: "10")
    }
}
