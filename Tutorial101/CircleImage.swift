//
//  CircleImage.swift
//  Tutorial101
//
//  Created by ธีระวุฒิ แซ่ซิ้ม on 20/9/2566 BE.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Seal")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
