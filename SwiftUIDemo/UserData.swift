//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by 唐桂富 on 2019/6/9.
//  Copyright © 2019 唐桂富. All rights reserved.
//

import SwiftUI
import Combine

final class UserData : BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false
    {
        didSet {
            didChange.self(self)
        }
    }
    var landmarks = landmarkData
    {
        didSet {
            didChange.self(self)
        }
    }
    
}
