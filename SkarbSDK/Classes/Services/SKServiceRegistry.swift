//
//  ServiceRegistry.swift
//  SkarbSDKExample
//
//  Created by Artem Hitrik on 1/21/20.
//  Copyright © 2020 Prodinfire. All rights reserved.
//

import Foundation

class SKServiceRegistry {
  static let serverAPI: SKServerAPI = SKServerAPIImplementaton()
  static let userDefaultsService: SKUserDefaultsService = SKUserDefaultsService()
  static let syncService: SKSyncService = SKSyncServiceImplementation()
  static var storeKitService: SKStoreKitService!
  
  static func initialize(isObservable: Bool) {
    _ = syncService
    storeKitService = SKStoreKitServiceImplementation(isObservable: isObservable)
  }
}