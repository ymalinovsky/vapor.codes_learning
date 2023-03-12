import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello", ":name") { req -> String in
        guard let name = req.parameters.get("name") else { return String() }
        return "Hello, \(name)!"
    }

}
