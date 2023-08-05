//
//  RealmModel.swift
//  e-commerceApp
//
//  Created by Vakhtang on 05.08.2023.
//

import Foundation
import RealmSwift

class RealmModel: Object {
    @Persisted var title: String = ""
}
