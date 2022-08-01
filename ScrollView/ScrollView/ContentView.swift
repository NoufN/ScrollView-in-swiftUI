//
//  ContentView.swift
//  ScrollView
//
//  Created by nouf on 02/08/2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        //   vertical ScrollView
        ScrollView{
            ForEach(0 ..< 10) { i in
                //          horizontal ScrollView
                ScrollView(.horizontal, showsIndicators: false) {
                   LazyHStack{
                        ForEach(0 ..< 5) { i in
                            
                            Rectangle()
                                .fill(Color.blue)
                                .cornerRadius(50)
                                .frame(width: 250, height: 150)
                                .padding()
                        }
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
