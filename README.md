# PathShapes

A collection of SwiftUI Shape implementations for iOS 15 and macOS 12 and above.

## Contributing

Contributions are welcome.  Please create a PR and consider the following restrictions:

* The shape must fit inside the rect passed to the drawing function. 
* The shape must use the full bounds of the shape in at least the horizontal or vertical, or both.
* Each shape must have a SwiftUI preview using the following template:

```
struct <ShapeName>_Previews: PreviewProvider {
    static var previews: some View {
        <ShapeName>()
            .stroke()
            .frame(width: 256, height: 256)
            .background(Rectangle().stroke())
    }
}
```

* Consider specifying the role of the shape by overriding the role class attribute, if appropriate, e.g. 

    `public static var role: ShapeRole = .stroke`

* Each source file must contain the following line at the top of the file:

    `// See LICENSE.txt`

* Contributors agree to share code under the terms of [the license](LICENSE.txt).
