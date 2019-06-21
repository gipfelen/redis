// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "redis",
    products: [
        .library(name: "Redis", targets: ["Redis"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/redis-kit.git", from: "1.0.0-alpha.1"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-alpha.1.3"),
    ],
    targets: [
        .target(name: "Redis", dependencies: ["RedisKit", "Vapor"]),
        .testTarget(name: "RedisTests", dependencies: ["Redis"])
    ]
)
