//
//  Image+Formatting.swift
//  MoviePedia
//
//  Created by Otávio Zabaleta on 02/05/2024.
//

import SwiftUI

extension Image {
    var posterFormat: some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 320, height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    var rowViewFormatted: some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 90, height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    @MainActor func cacheImage(url: URL) -> Image {
        ImageCache.shared[url] = self
        return  self
    }
}
