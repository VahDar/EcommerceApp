//
//  RealmModel.swift
//  e-commerceApp
//
//  Created by Vakhtang on 05.08.2023.
//

import Foundation
import RealmSwift

class RealmModel: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var title: String?
}
