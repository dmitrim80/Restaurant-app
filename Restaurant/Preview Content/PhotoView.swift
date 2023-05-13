//
//  PhotoView.swift
//  Restaurant
//
//  Created by Dmitri Morozov on 5/16/23.
//

import SwiftUI

struct PhotoView: View {
    @Binding var selectedImage: String
    @Binding var sheetVisible: Bool
    var body: some View {
        ZStack {
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack{
                HStack{
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .foregroundColor(.black)
                            .font(.title)
                            .padding(5)
                            .scaleEffect(1)
                    }
                }
                Spacer()
            }
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(selectedImage: Binding.constant("image0"),
                  sheetVisible: Binding.constant(true))
    }
}
