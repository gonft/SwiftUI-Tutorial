//
//  CategoryRow.swift
//  SwiftUI-Tutorial
//
//  Created by Paul Han on 2019/09/29.
//  Copyright © 2019 Paul Han. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { landmark in
                        NavigationLink(
                            destination: LandmarkDetail(landmark: landmark)
                        ) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }.padding(.bottom, 8)
            }
        }
    }
}


struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        let category = landmarkData[0].category.rawValue
        let items = Array(landmarkData.filter({ $0.category.rawValue == category }))
        return CategoryRow(
            categoryName: category,
            items: items
        )
    }
}
