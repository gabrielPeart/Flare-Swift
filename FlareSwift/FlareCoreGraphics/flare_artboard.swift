//
//  flare_artboard.swift
//  Flare-Swift
//
//  Created by Umberto Sonnino on 2/26/19.
//  Copyright © 2019 2Dimensions. All rights reserved.
//

import Foundation

public class FlareArtboard: ActorArtboard {
    public init(actor: FlareActor) {
        super.init(actor: actor)
    }
    
    override public func advance(seconds: Double) {
        super.advance(seconds: seconds)
    }
    
    override public func makeInstance() -> ActorArtboard {
        let artboardInstance = FlareArtboard(actor: actor as! FlareActor)
        artboardInstance.copyArtboard(self)
        return artboardInstance
    }
    
    override public func draw(context: CGContext) {
        for drawable in drawableNodes {
            if let d = drawable as? FlareShape {
                d.draw(context: context)
            }
        }
    }
    
    func dispose() {}
}
