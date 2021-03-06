import Vapor
import Fluent

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    // MARK: Acronyms Controller
    let acronymsController = AcronymsController()
    try router.register(collection: acronymsController)
}
