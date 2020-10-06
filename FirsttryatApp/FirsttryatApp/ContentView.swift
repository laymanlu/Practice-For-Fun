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
    
    var items = [Data]()
    
    var body: some View {
        NavigationView {
            List(items) { data in
                NavigationLink(destination: DataView(data: data)) {
                    HStack {
                        Image(data.imageName)
                            .resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                                               height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                                               alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                        
                        Text(data.title)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                    }
                }
            }
            .navigationBarTitle("Photos")
        }
    }
}


struct DataView: View {
    
    var data: Data
    
    var body: some View {
        VStack {
            Image(data.imageName)
                .resizable().frame(width: 400,
                                   height: 200,
                                   alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
            
            Text(data.imageDescription)
                .font(.largeTitle)
                .padding(5)
            
            Spacer()
            
            Text(data.imageTakenDate)
                .padding(5)
        }
        .navigationBarTitle(data.title)
        
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

