//
//  ContentView.swift
//  Spotify_Layout
//
//  Created by Lily Ramon on 2/22/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // change background color
        ZStack {
            Color("burgundy_background")
                .ignoresSafeArea()
           // add album cover
            VStack {
                Image("albumcover")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .offset(y: -50)
                // add song title and artist name
                VStack {
                    Text("affection")
                        .font(.title)
                        .bold()
                        .foregroundStyle(Color.white)
                        .offset(x: -110, y: -10)
                    Text("BETWEEN FRIENDS")
                        .foregroundStyle(Color.white)
                        .offset(x: -92, y:-10)
                    Image(systemName:"checkmark.circle.fill")
                        .foregroundStyle(Color("spotify_green"))
                        .font(.system(size: 30))
                        .offset(x: 150, y: -50)
                    }
                // add album title
                HStack {
                    Text("we just need some time together")
                        .bold()
                        .foregroundStyle(Color.white)
                        .offset(y: -549)
                        .font(.system(size: 14))
                    }
                }
            // add drop down and 3 dots
            HStack {
                Image(systemName:"chevron.down")
                    .foregroundStyle(Color.white)
                    .offset(x: -150, y: -325)
                Image(systemName:"ellipsis")
                    .foregroundStyle(Color.white)
                    .offset(x: 150, y: -325)
                }
            // add play button, next/back, loop, shuffle
            HStack {
                Image(systemName:"shuffle")
                    .foregroundStyle(Color("spotify_green"))
                    .offset(x: -100)
                    .font(.system(size: 23))
                Image(systemName: "backward.end.fill")
                    .foregroundStyle(Color.white)
                    .offset(x:-70)
                    .font(.system(size: 25))
                Image(systemName: "forward.end.fill")
                    .foregroundStyle(Color.white)
                    .offset(x:34)
                    .font(.system(size: 25))
                }
                .offset(y:325)
            HStack {
                Image(systemName: "repeat")
                    .foregroundStyle(Color.white)
                    .offset(x: 130, y:325)
                    .font(.system(size:23))
            }
            VStack {
                Image(systemName: "play.circle.fill")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 55))
                    .offset(y:325)
            
                }
            VStack {
                    ProgressView(value: 0.5)
                        .padding()
                        .offset(y: 250)
                        .tint(.white)
                Image(systemName:"circle.fill")
                    .offset(y:225)
                    .foregroundStyle(Color.white)
                    .font(.system(size:9))
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
