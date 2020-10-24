//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 22.10.2020.
//

import Combine
import Foundation

class UserManager: ObservableObject {
    @Published var isRegister = UserDefaults.standard.bool(forKey: "isRegister")
    var name = UserDefaults.standard.string(forKey: "name")
    
    init() {}
    
    init(name: String) {
        self.name = name
    }
    
    func save() {
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(isRegister, forKey: "isRegister")
    }
    
    func delete() {
        UserDefaults.standard.removeObject(forKey: "name")
        isRegister = false
        save()
    }
    
    
}
