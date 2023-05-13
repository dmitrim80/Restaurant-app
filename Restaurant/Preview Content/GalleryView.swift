//
//  GalaryView.swift
//  Restaurant
//
//  Created by Dmitri Morozov on 5/13/23.
//

import SwiftUI

struct GalleryView: View {
    @State var photoData = [String]()
    @State var sheetVisible = false
    @State var selectedImage = ""
    
    var dataService = DataService()
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            GeometryReader { proxy in
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: [GridItem(spacing:20),GridItem(spacing:20),GridItem(spacing:20)],spacing: 20) {
                        ForEach(photoData, id: \.self) { p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth:(proxy.size.width-40)/3)
                                .clipped()
                                .onTapGesture {
                                    selectedImage = p
                                    sheetVisible = true
                                }
                            
                        }
                    }
                }
            }
            
        }.padding(.horizontal)
        .onAppear {
            photoData = dataService.getPhotos()
        }
        .sheet(isPresented: $sheetVisible) {
            PhotoView(selectedImage: $selectedImage, sheetVisible: $sheetVisible)
        }
    }
}

struct GalaryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
