//
//  GenerateViewModel.swift
//  ImageGeneratorApp
//
//  Created by Fahad Sheikh on 2024-01-11.
//

import Foundation

extension GenerateView{
    class ViewModel: ObservableObject{
        @Published var duration = 0
        @Published var image: URL?
        
        let prompt: String
        let selectedStyle: ImageStyle
        
        // declaring instance
        private let openAIService = OpenAIService()
        
        init(duration: Int = 0, image: URL? = nil, prompt: String, selectedStyle: ImageStyle) {
            self.prompt = prompt
            self.selectedStyle = selectedStyle
        }
        
        func generateImage(){
            // sends prompt to openai api
            let formattedPrompt = "\(selectedStyle.title) image of \(prompt)"
            //TODO
            Task {
                do {
                    let generatedImage = try await openAIService.generateImage(prompt: formattedPrompt)
                    
                    guard let imageURLString = generatedImage.data.first?.url,
                          let imageUrl = URL(string: imageURLString) else {
                        print("Failed to get image URL")
                        return
                    }
                    await MainActor.run {
                        self.image = imageUrl
                    }
                    
                    // You can now use `imageUrl` to do something with the generated image URL.
                } catch {
                    print(error)
                }
            }

        }
        
        
    }
    
}
