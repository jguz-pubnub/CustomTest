// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CustomTest",
  products: [
    .library(
      name: "CustomTest",
      targets: ["CustomTestBinaryPackage"]
    ),
  ],
  targets: [
    .target(
      name: "CustomTest"
    ),
    .binaryTarget(
      name: "CustomTestBinaryPackage",
      url: "https://github.com/jguz-pubnub/CustomTest/releases/download/1.0.0/CustomTestXCFramework.zip",
      checksum: "3f299865355478c6dba2f18fcd4fd6c0e0ab97893c68bcdc3fbcb30286010b65"
    ),
    .testTarget(
      name: "CustomTestTests",
      dependencies: ["CustomTest"]
    ),
  ]
)
