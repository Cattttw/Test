//
//  ContentView.swift
//  test
//
//  Created by Qianyi Wang on 2021/5/27.
//

import SwiftUI

struct ContentView: View {
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?

    var body: some View {
        NavigationView {
        
            
            List {
                Text("list")
                Text("Hi")
            }
                .navigationTitle("Featured")
            .toolbar {
                Button(action: {self.showingImagePicker.toggle()}) {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                }
            }
            .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                ImagePicker(image: self.$inputImage)
            }
            
        }
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        let image = Image(uiImage: inputImage)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
