// See LICENSE.txt

import SwiftUI

public struct TrebleClef: Shape {

    public init() { }

    public static var role: ShapeRole = .stroke

    public func path(in rect: CGRect) -> Path {
        let h = rect.maxX
        let w = rect.maxY

        return Path { p in

            p.move(to: .init(x: w * 0.4, y: h * 0.7))

            p.addCurve(to: .init(x: w * 0.6, y: h * 0.7),
                       control1: .init(x: w * 0.4, y: h * 0.5),
                       control2: .init(x: w * 0.6, y: h * 0.5))

            p.addCurve(to: .init(x: w * 0.3, y: h * 0.6),
                       control1: .init(x: w * 0.6, y: h * 0.9),
                       control2: .init(x: w * 0.1, y: h * 0.95))

            p.addCurve(to: .init(x: w * 0.6, y: h * 0.15),
                       control1: .init(x: w * 0.4, y: h * 0.45),
                       control2: .init(x: w * 0.6, y: h * 0.35))

            p.addCurve(to: .init(x: w * 0.5, y: h * 0.15),
                       control1: .init(x: w * 0.6, y: h * -0.03),
                       control2: .init(x: w * 0.5, y: h * -0.05))

            p.addCurve(to: .init(x: w * 0.5, y: h * 0.95),
                       control1: .init(x: w * 0.5, y: h * 0.2),
                       control2: .init(x: w * 0.5, y: h * 0.95))

            p.addCurve(to: .init(x: w * 0.42, y: h * 0.95),
                       control1: .init(x: w * 0.5, y: h * 1.01),
                       control2: .init(x: w * 0.42, y: h * 1.01))

            p.addCurve(to: .init(x: w * 0.47, y: h * 0.925),
                       control1: .init(x: w * 0.42, y: h * 0.89),
                       control2: .init(x: w * 0.47, y: h * 0.89))
        }
    }

}

struct TrebleClef_Previews: PreviewProvider {
    static var previews: some View {
        TrebleClef()
            .stroke()
            .frame(width: 16, height: 16)
            .background(Rectangle().stroke())

        TrebleClef()
            .stroke()
            .frame(width: 256, height: 256)
            .background(Rectangle().stroke())
    }
}
