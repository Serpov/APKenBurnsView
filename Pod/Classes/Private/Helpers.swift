//
// Created by Nickolay Sheika on 6/12/16.
//

import Foundation


extension CGSize {
    func scaled(_ scale: CGFloat) -> CGSize {
        return CGSize(width: width * scale, height: height * scale)
    }
}


extension CGRect {
    func scaled(_ scale: CGFloat) -> CGRect {
        return CGRect(x: minX * scale,
                      y: minY * scale,
                      width: width * scale,
                      height: height * scale)
    }
    
    func center() -> CGPoint {
        return CGPoint(x: midX, y: midY)
    }

    init(center: CGPoint, size: CGSize) {
        self = CGRect(x: center.x - (size.width / 2),
                      y:  center.y - (size.height / 2),
                      width: size.width,
                      height: size.height)
    }
}
