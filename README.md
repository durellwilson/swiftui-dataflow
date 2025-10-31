# 🔄 SwiftUI Data Flow

Modern state management patterns for iOS 17+

## Features

- 📦 Observable store pattern
- 🗄️ Repository pattern
- 🎯 Use case pattern
- 🔄 Unidirectional data flow

## Usage

```swift
import SwiftUIDataFlow

@Observable
class AppStore: Store<AppState> {
    init() {
        super.init(initialState: AppState())
    }
    
    func loadUsers() async {
        send { $0.isLoading = true }
        // Fetch users
        send { $0.isLoading = false }
    }
}
```

Built for Detroit architects! 🏗️
