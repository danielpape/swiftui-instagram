//
//  ContentView.swift
//  Rooms
//
//  Created by Pape, Daniel on 18/06/2019.
//  Copyright © 2019 Pape, Daniel. All rights reserved.
//

import SwiftUI

let posts = ["post 1","post 2","post 3"]

struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack(alignment: .top) {
                        StoryCell()
                        StoryCell()
                        StoryCell()
                        StoryCell()
                        StoryCell()
                        
                    }
                }
                Section {
                    ImageCell()
                    ImageCell()
                    ImageCell()
                }
            }
            }.navigationBarTitle(Text("Instagram"))
    }
    
    func tapButton() {
        print("button tapped")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct StoryCell : View {
    var body: some View {
        return  VStack(){
            Image("logo").resizable()
                .frame(width: 64.0, height: 64.0)
                .cornerRadius(32.0)
            Text("Your Story")
                .font(.caption)
            }.frame(minWidth: 0, maxWidth: 82.0, minHeight: 0, maxHeight: 72, alignment: .topLeading)
            .padding(.all)
    }
}

struct ImageCell : View {
    var body: some View {
        return  VStack{
            HStack {
                Image("logo").resizable()
                    .frame(width: 32.0, height: 32.0)
                    .cornerRadius(16.0)
                    .multilineTextAlignment(.leading)
                Text("Hello World").multilineTextAlignment(.leading)
                Spacer()
                Image(systemName: "ellipsis").multilineTextAlignment(.trailing)
                }.padding(.all)
            Image("logo").resizable().frame(minWidth: 0, maxWidth: 414, minHeight: 414, maxHeight: 414, alignment: .topLeading)
            HStack {
                Image(systemName: "heart").resizable().frame(minWidth: 0, maxWidth: 24, minHeight: 0, maxHeight: 24, alignment: .leading)
                Image(systemName: "bubble.left").resizable().frame(minWidth: 0, maxWidth: 24, minHeight: 0, maxHeight: 24, alignment: .leading)
                Image(systemName: "paperplane").resizable().frame(minWidth: 0, maxWidth: 24, minHeight: 0, maxHeight: 24, alignment: .leading)
                Spacer()
                Image(systemName: "bookmark").resizable().frame(minWidth: 0, maxWidth: 24, minHeight: 0, maxHeight: 24, alignment: .leading)
                }.padding(.all)
        }
    }
}
