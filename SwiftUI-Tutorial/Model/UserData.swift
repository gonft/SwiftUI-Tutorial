//
//  UserData.swift
//  SwiftUI-Tutorial
//
//  Created by Paul Han on 2019/09/24.
//  Copyright © 2019 Paul Han. All rights reserved.
//


import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
