//
//  HomeView.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 8.12.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack (){
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
