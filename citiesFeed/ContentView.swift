//
//  ContentView.swift
//  citiesFeed
//
//  Created by Rosalie on 7/21/20.
//  Copyright © 2020 Rosalie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Cities").font(.largeTitle)
            ScrollView {
                VStack {
                    Card(imageName: "paris", cityName: "Paris")
                    Card(imageName: "la", cityName: "Los Angeles")
                    Card(imageName: "newyork", cityName: "New York")
                    Card(imageName: "london", cityName: "London")
                    Card(imageName: "rome", cityName: "Rome")
                }.padding(.horizontal)
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    @State var imageName : String
    @State var cityName : String
    var body: some View {
        ZStack {
            Image(imageName).resizable().aspectRatio(contentMode: .fit)
                .overlay(
                    Rectangle().opacity(0.2)
            )
            Text(cityName).font(.system(size: 60, weight: .black, design: .rounded)).foregroundColor(.white)
        }.cornerRadius(40)
    }
}
