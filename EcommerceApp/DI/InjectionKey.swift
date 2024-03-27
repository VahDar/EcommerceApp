//
//  InjectionKey.swift
//  EcommerceApp
//
//  Created by Vakhtang on 27.03.2024.
//

import Foundation

protocol InjectionKey {
    
    associatedtype Value
    
    static var currentValue: Self.Value { get set }
}
