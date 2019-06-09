//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by 唐桂富 on 2019/6/9.
//  Copyright © 2019 唐桂富. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(landmarkData) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)){ deviceName in
            LandmarkList().previewDevice(PreviewDevice(rawValue: "iPhone XS")).previewDisplayName(deviceName)
        }
    }
}
#endif
