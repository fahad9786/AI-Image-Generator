//
//  ImageStyle.swift
//  ImageGeneratorApp
//
//  Created by Fahad Sheikh on 2024-01-08.
//

import Foundation

enum ImageStyle: String, CaseIterable {
    case surrealism
    case realism
    case threeDRender
    case minimalism
    case abstract
    case retro
    case geometric
    
    var title: String{
        switch self {
        case .surrealism:
            return "surrealism"
        case .realism:
            return "realism"
        case .threeDRender:
            return "threeDRender"
        case .minimalism:
            return "minimalism"
        case .abstract:
            return "abstract"
        case .retro:
            return "retro"
        case .geometric:
            return "geometric"
        }
    }
}
