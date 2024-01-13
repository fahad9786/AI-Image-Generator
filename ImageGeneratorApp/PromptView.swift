//
//  ContentView.swift
//  ImageGeneratorApp
//
//  Created by Fahad Sheikh on 2024-01-08.
//

import SwiftUI
struct PromptView: View {
    
    @State var selectedStyle = ImageStyle.allCases[0]
    @State var promptText: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Generate")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                
                GeometryReader { reader in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(ImageStyle.allCases, id: \.self) { imageStyle in
                                Button {
                                    // When the button is tapped, set the selectedStyle
                                    selectedStyle = imageStyle
                                } label: {
                                    Image(imageStyle.rawValue)
                                        .resizable()
                                        .background(Color.blue)
                                        .scaledToFill()
                                        .frame(
                                            width: reader.size.width * 0.4,
                                            height: reader.size.width * 0.4 * 1.4
                                        )
                                        .overlay {
                                            // Add border when the style is selected
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.yellow, lineWidth: imageStyle == selectedStyle ? 3 : 0)
                                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                        }
                                }
                            }
                        }
                    }
                }
                Spacer()
                
                Text("Enter a prompt")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                
                TextEditor(text: $promptText)
                    .scrollContentBackground(.hidden)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(12)
                    .foregroundColor(.white)
                    .tint(Color.yellow)
                
                VStack(alignment: .center) {
                    NavigationLink {
                        GenerateView(viewModel: .init(prompt: promptText, selectedStyle: selectedStyle))
                    
                    } label: {
                        // Generate button with rounded corners
                        Text("Generate")
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .padding()
                            .clipShape(Capsule())
                    }
                }
                .frame(maxWidth: .infinity)
                
            }
            .padding()
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
    }
}

struct PromptView_Previews: PreviewProvider {
    static var previews: some View {
        PromptView()
    }
}
