//
//  LandmarkList.swift
//  Tutorial101
//
//  Created by ธีระวุฒิ แซ่ซิ้ม on 25/9/2566 BE.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List(landmarks, id: \.id) { landmark in
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3nd generation)", "iPad Pro (11-inch)"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
