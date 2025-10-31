import SwiftUI

// MARK: - Observable Store Pattern
@Observable
public class Store<State> {
    public var state: State
    
    public init(initialState: State) {
        self.state = initialState
    }
    
    public func send(_ action: (inout State) -> Void) {
        action(&state)
    }
}

// MARK: - Repository Pattern
public protocol Repository {
    associatedtype Item
    func fetch() async throws -> [Item]
    func save(_ item: Item) async throws
}

// MARK: - Use Case Pattern
public protocol UseCase {
    associatedtype Input
    associatedtype Output
    func execute(_ input: Input) async throws -> Output
}

// MARK: - Example Implementation
public struct User: Identifiable {
    public let id: String
    public let name: String
    public init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

public struct AppState {
    public var users: [User] = []
    public var isLoading = false
    public init() {}
}
