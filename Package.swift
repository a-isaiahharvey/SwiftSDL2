// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftSDL2",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "SwiftSDL2",
      targets: ["SwiftSDL2"])
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "SwiftSDL2",
      dependencies: ["CSDL2"]),
    .systemLibrary(
      name: "CSDL2",
      pkgConfig: "sdl2",
      providers: [
        .brew(["sdl2"]),
        .apt(["libsdl2-dev"]),
      ]
    ),
    .testTarget(
      name: "SwiftSDL2Tests",
      dependencies: ["SwiftSDL2"]),
  ]
)
