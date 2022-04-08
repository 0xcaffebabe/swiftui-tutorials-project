//
//  ContentView.swift
//  Landmarks
//
//  Created by mymac on 2022/4/8.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    var body: some View {
        VStack {
            MapView()
                .frame(height:300)
                .ignoresSafeArea(edges: .top)
            VStack(alignment: .center) {
                
                Image("cxk")
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.gray, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                Text("Hello, world!")
                    .padding()
                    .font(.title2)
                    .foregroundColor(.green)
                HStack(alignment: .center) {
                    Text("姓名: cxk")
                    Text("爱好: ctrl")
                }
                Divider()
                Text("jntm").font(.title2)
                Text("jntjtnmtjtjtjtjt")
            }
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
