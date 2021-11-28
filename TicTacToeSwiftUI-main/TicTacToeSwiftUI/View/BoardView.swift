//
//  BoardView.swift
//  TicTacToeSwiftUI
//
//  Created by Jonas Wåhslén on 2021-11-22.
//

import SwiftUI

struct BoardView: View {
    @EnvironmentObject var theViewModel : TicTacToeVM
    
    var body: some View {
        ZStack{
            BackroundView(width: 300, height: 300)
            
            ForEach(theViewModel.markers) { aMarker in
                Marker(marker: aMarker.state, id: aMarker.id )
                    .position(x: CGFloat(50+aMarker.x*100), y: CGFloat(50+aMarker.y*100))
            }
        }
        .frame(width: 300, height: 300, alignment: .center)
    }
}

