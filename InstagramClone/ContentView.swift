//
//  ContentView.swift
//  InstagramClone
//
//  Created by Yusuf İhsan Görgel on 8.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            
            Storys()
           
           
            
            Spacer()
        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            
            Spacer()
            HStack(spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
            
            
        }
        .padding(.horizontal,15)
        .padding(.vertical,3)
    }
}

struct UserStory: View {
    var image: String = "profile"
    var name: String = "Yusuf İhsan"
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red,.purple,.red,.orange,.yellow,.orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            Text(name)
                .font(.caption)
        }
    }
}

struct Storys: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15) {
                UserStory(image: "profile", name: "Yusuf ihsan")
                UserStory(image: "profile2", name: "Yusuf ihsan")
                UserStory(image: "profile3", name: "Yusuf ihsan")
                UserStory(image: "profile4", name: "Yusuf ihsan")
                UserStory(image: "profile5", name: "Yusuf ihsan")
                UserStory(image: "profile6", name: "Yusuf ihsan")
                UserStory(image: "profile7", name: "Yusuf ihsan")
                UserStory(image: "profile8", name: "Yusuf ihsan")
                
            }
            .padding(.horizontal,8)
        }
        .padding(.vertical,10)
    }
}
