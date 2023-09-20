//
//  ContentView.swift
//  Tutorial101
//
//  Created by ธีระวุฒิ แซ่ซิ้ม on 20/9/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Seal คือแมวน้ำ")
                    .font(.title)
                    .foregroundColor(Color.blue)
                HStack {
                    Text("In The Water")
                        .font(.subheadline)
                    Spacer()
                    Text("Sea")
                        .font(.subheadline)
                }
                Divider()
                Text("About Seal")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
