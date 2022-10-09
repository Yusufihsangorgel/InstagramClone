//
//  ContentView.swift
//  InstagramClone
//
//  Created by Yusuf İhsan Görgel on 8.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            
            Storys()
           
            Divider()
            
            
            Post(text: $text)
            
            
   
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

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack{
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("Yusuf İhsan")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            
            Image("more")
        }
        .padding(.vertical,10)
        .padding(.horizontal,10)
    }
}

struct PostContent: View {
    var image: String = "profile"
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            HStack{
                HStack(spacing: 10){
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                Spacer()
                Image("bookmark")
            }
            .padding(.vertical,5)
            .padding(.horizontal,12)
        }
    }
}

struct Post: View {
    var text : Binding<String>
    var image: String = "profile"
    var description: String = "I miss travling to Japan"
    
    var body: some View {
        VStack(alignment: .leading){
            PostHeader()
            
            PostContent()
            
            Text("Liked by Meng To and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal,12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal,12)
            
            HStack{
                HStack(spacing:7.0){
                    Image(image)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    TextField("Add comment..", text: self.text)
                    
                }
                
                
                Spacer()
                
                HStack{
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal,12)
            .padding(.vertical,9)
            
        }
    }
}
