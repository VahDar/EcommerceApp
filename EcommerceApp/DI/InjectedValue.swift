//
//  InjectedValue.swift
//  EcommerceApp
//
//  Created by Vakhtang on 27.03.2024.
//

import Foundation

struct InjectedValue {
    
    /// This is only used as an accessor to the computed properties withing extensions of `InjectedValues`.
    private static var current = InjectedValue()
    
    /// A static subscript for updating the `currentValue` of `InjectionKey` instances.
    static subscript<K>(key: K.Type) -> K.Value where K : InjectionKey {
        get { key.currentValue }
        set { key.currentValue = newValue }
    }
    
    /// A static subscript accessor for updating and references dependecies directly
    static subscript<T>(_ keyPath: WritableKeyPath<InjectedValue, T>) -> T {
        get { current[keyPath: keyPath] }
        set { current[keyPath: keyPath] = newValue }
    }
}
