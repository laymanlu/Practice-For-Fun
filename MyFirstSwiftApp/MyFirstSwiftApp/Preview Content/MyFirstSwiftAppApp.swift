//
//  ContentView.swift
//  MyFirstSwiftApp
//
//  Created by Luke Layman on 10/6/20.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}


struct ContentView: View {
    
    var items: [Data]
    
    var body: some View {
        List(items) { data in
            Image(data.imageName)
                
            Text(data.title)
                .foregroundColor(.green)
                .fontWeight(.bold)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: [
            Data(title: "Beach 1",
                 imageName: "beach1",
                 imageDescription: "This is a beach",
                 imageTakenDate: "1/1/2020"),
            Data(title: "Beach 2",
                 imageName: "beach2",
                 imageDescription: "This is a beach",
                 imageTakenDate: "1/1/2020"),
            Data(title: "Dog",
                 imageName: "dog",
                 imageDescription: "This is a beach",
                 imageTakenDate: "1/1/2020"),
            Data(title: "Car",
                 imageName: "car",
                 imageDescription: "This is a beach",
                 imageTakenDate: "1/1/2020"),
            Data(title: "Nature",
                 imageName: "nature",
                 imageDescription: "This is a beach",
                 imageTakenDate: "1/1/2020"),
            Data(title: "Wedding",
                 imageName: "wedding",
                 imageDescription: "This is a beach",
                 imageTakenDate: "1/1/2020"),
            Data(title: "Fountain",
                 imageName: "fountain",
                 imageDescription: "This is a beach",
                 imageTakenDate: "1/1/2020"),
        ])
        .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


