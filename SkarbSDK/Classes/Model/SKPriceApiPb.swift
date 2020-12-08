// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: app_price_api.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Priceapi_Auth {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var key: String = String()

  var bundleID: String = String()

  var agentName: String = String()

  var agentVer: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Priceapi_ProductsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var auth: Priceapi_Auth {
    get {return _auth ?? Priceapi_Auth()}
    set {_auth = newValue}
  }
  /// Returns true if `auth` has been explicitly set.
  var hasAuth: Bool {return self._auth != nil}
  /// Clears the value of `auth`. Subsequent reads from it will return its default value.
  mutating func clearAuth() {self._auth = nil}

  var installID: String = String()

  var storefront: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _auth: Priceapi_Auth? = nil
}

struct Priceapi_ProductsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var productIds: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Priceapi_PricesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var auth: Priceapi_Auth {
    get {return _auth ?? Priceapi_Auth()}
    set {_auth = newValue}
  }
  /// Returns true if `auth` has been explicitly set.
  var hasAuth: Bool {return self._auth != nil}
  /// Clears the value of `auth`. Subsequent reads from it will return its default value.
  mutating func clearAuth() {self._auth = nil}

  var installID: String = String()

  var storefront: String = String()

  /// code from priceLocale
  var region: String = String()

  /// code from priceLocale
  var currency: String = String()

  var products: [Priceapi_Product] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _auth: Priceapi_Auth? = nil
}

struct Priceapi_Product {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var productID: String = String()

  var groupID: String = String()

  var period: Priceapi_Period {
    get {return _period ?? Priceapi_Period()}
    set {_period = newValue}
  }
  /// Returns true if `period` has been explicitly set.
  var hasPeriod: Bool {return self._period != nil}
  /// Clears the value of `period`. Subsequent reads from it will return its default value.
  mutating func clearPeriod() {self._period = nil}

  var price: Double = 0

  var intro: Priceapi_Discount {
    get {return _intro ?? Priceapi_Discount()}
    set {_intro = newValue}
  }
  /// Returns true if `intro` has been explicitly set.
  var hasIntro: Bool {return self._intro != nil}
  /// Clears the value of `intro`. Subsequent reads from it will return its default value.
  mutating func clearIntro() {self._intro = nil}

  var discounts: [Priceapi_Discount] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _period: Priceapi_Period? = nil
  fileprivate var _intro: Priceapi_Discount? = nil
}

struct Priceapi_Discount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var price: Double = 0

  /// var identifier: String? - identify a discount offer
  var discountID: String = String()

  var type: Int32 = 0

  var mode: Int32 = 0

  var period: Priceapi_Period {
    get {return _period ?? Priceapi_Period()}
    set {_period = newValue}
  }
  /// Returns true if `period` has been explicitly set.
  var hasPeriod: Bool {return self._period != nil}
  /// Clears the value of `period`. Subsequent reads from it will return its default value.
  mutating func clearPeriod() {self._period = nil}

  /// numberOfPeriods
  var periodCount: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _period: Priceapi_Period? = nil
}

struct Priceapi_Period {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// subscriptionPeriod.unit
  var unit: String = String()

  /// subscriptionPeriod.numberOfUnits
  var count: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "priceapi"

extension Priceapi_Auth: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Auth"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .standard(proto: "bundle_id"),
    3: .standard(proto: "agent_name"),
    4: .standard(proto: "agent_ver"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.key)
      case 2: try decoder.decodeSingularStringField(value: &self.bundleID)
      case 3: try decoder.decodeSingularStringField(value: &self.agentName)
      case 4: try decoder.decodeSingularStringField(value: &self.agentVer)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if !self.bundleID.isEmpty {
      try visitor.visitSingularStringField(value: self.bundleID, fieldNumber: 2)
    }
    if !self.agentName.isEmpty {
      try visitor.visitSingularStringField(value: self.agentName, fieldNumber: 3)
    }
    if !self.agentVer.isEmpty {
      try visitor.visitSingularStringField(value: self.agentVer, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Priceapi_Auth, rhs: Priceapi_Auth) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.bundleID != rhs.bundleID {return false}
    if lhs.agentName != rhs.agentName {return false}
    if lhs.agentVer != rhs.agentVer {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Priceapi_ProductsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ProductsRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "auth"),
    2: .standard(proto: "install_id"),
    3: .same(proto: "storefront"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._auth)
      case 2: try decoder.decodeSingularStringField(value: &self.installID)
      case 3: try decoder.decodeSingularStringField(value: &self.storefront)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._auth {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.installID.isEmpty {
      try visitor.visitSingularStringField(value: self.installID, fieldNumber: 2)
    }
    if !self.storefront.isEmpty {
      try visitor.visitSingularStringField(value: self.storefront, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Priceapi_ProductsRequest, rhs: Priceapi_ProductsRequest) -> Bool {
    if lhs._auth != rhs._auth {return false}
    if lhs.installID != rhs.installID {return false}
    if lhs.storefront != rhs.storefront {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Priceapi_ProductsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ProductsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    5: .standard(proto: "product_ids"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 5: try decoder.decodeRepeatedStringField(value: &self.productIds)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.productIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.productIds, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Priceapi_ProductsResponse, rhs: Priceapi_ProductsResponse) -> Bool {
    if lhs.productIds != rhs.productIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Priceapi_PricesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PricesRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "auth"),
    2: .standard(proto: "install_id"),
    3: .same(proto: "storefront"),
    4: .same(proto: "region"),
    5: .same(proto: "currency"),
    6: .same(proto: "products"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._auth)
      case 2: try decoder.decodeSingularStringField(value: &self.installID)
      case 3: try decoder.decodeSingularStringField(value: &self.storefront)
      case 4: try decoder.decodeSingularStringField(value: &self.region)
      case 5: try decoder.decodeSingularStringField(value: &self.currency)
      case 6: try decoder.decodeRepeatedMessageField(value: &self.products)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._auth {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.installID.isEmpty {
      try visitor.visitSingularStringField(value: self.installID, fieldNumber: 2)
    }
    if !self.storefront.isEmpty {
      try visitor.visitSingularStringField(value: self.storefront, fieldNumber: 3)
    }
    if !self.region.isEmpty {
      try visitor.visitSingularStringField(value: self.region, fieldNumber: 4)
    }
    if !self.currency.isEmpty {
      try visitor.visitSingularStringField(value: self.currency, fieldNumber: 5)
    }
    if !self.products.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.products, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Priceapi_PricesRequest, rhs: Priceapi_PricesRequest) -> Bool {
    if lhs._auth != rhs._auth {return false}
    if lhs.installID != rhs.installID {return false}
    if lhs.storefront != rhs.storefront {return false}
    if lhs.region != rhs.region {return false}
    if lhs.currency != rhs.currency {return false}
    if lhs.products != rhs.products {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Priceapi_Product: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Product"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "product_id"),
    2: .standard(proto: "group_id"),
    3: .same(proto: "period"),
    4: .same(proto: "price"),
    5: .same(proto: "intro"),
    6: .same(proto: "discounts"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.productID)
      case 2: try decoder.decodeSingularStringField(value: &self.groupID)
      case 3: try decoder.decodeSingularMessageField(value: &self._period)
      case 4: try decoder.decodeSingularDoubleField(value: &self.price)
      case 5: try decoder.decodeSingularMessageField(value: &self._intro)
      case 6: try decoder.decodeRepeatedMessageField(value: &self.discounts)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.productID.isEmpty {
      try visitor.visitSingularStringField(value: self.productID, fieldNumber: 1)
    }
    if !self.groupID.isEmpty {
      try visitor.visitSingularStringField(value: self.groupID, fieldNumber: 2)
    }
    if let v = self._period {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.price != 0 {
      try visitor.visitSingularDoubleField(value: self.price, fieldNumber: 4)
    }
    if let v = self._intro {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.discounts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.discounts, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Priceapi_Product, rhs: Priceapi_Product) -> Bool {
    if lhs.productID != rhs.productID {return false}
    if lhs.groupID != rhs.groupID {return false}
    if lhs._period != rhs._period {return false}
    if lhs.price != rhs.price {return false}
    if lhs._intro != rhs._intro {return false}
    if lhs.discounts != rhs.discounts {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Priceapi_Discount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Discount"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "price"),
    2: .standard(proto: "discount_id"),
    3: .same(proto: "type"),
    4: .same(proto: "mode"),
    5: .same(proto: "period"),
    6: .standard(proto: "period_count"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self.price)
      case 2: try decoder.decodeSingularStringField(value: &self.discountID)
      case 3: try decoder.decodeSingularInt32Field(value: &self.type)
      case 4: try decoder.decodeSingularInt32Field(value: &self.mode)
      case 5: try decoder.decodeSingularMessageField(value: &self._period)
      case 6: try decoder.decodeSingularInt32Field(value: &self.periodCount)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.price != 0 {
      try visitor.visitSingularDoubleField(value: self.price, fieldNumber: 1)
    }
    if !self.discountID.isEmpty {
      try visitor.visitSingularStringField(value: self.discountID, fieldNumber: 2)
    }
    if self.type != 0 {
      try visitor.visitSingularInt32Field(value: self.type, fieldNumber: 3)
    }
    if self.mode != 0 {
      try visitor.visitSingularInt32Field(value: self.mode, fieldNumber: 4)
    }
    if let v = self._period {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if self.periodCount != 0 {
      try visitor.visitSingularInt32Field(value: self.periodCount, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Priceapi_Discount, rhs: Priceapi_Discount) -> Bool {
    if lhs.price != rhs.price {return false}
    if lhs.discountID != rhs.discountID {return false}
    if lhs.type != rhs.type {return false}
    if lhs.mode != rhs.mode {return false}
    if lhs._period != rhs._period {return false}
    if lhs.periodCount != rhs.periodCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Priceapi_Period: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Period"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "unit"),
    2: .same(proto: "count"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.unit)
      case 2: try decoder.decodeSingularInt32Field(value: &self.count)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.unit.isEmpty {
      try visitor.visitSingularStringField(value: self.unit, fieldNumber: 1)
    }
    if self.count != 0 {
      try visitor.visitSingularInt32Field(value: self.count, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Priceapi_Period, rhs: Priceapi_Period) -> Bool {
    if lhs.unit != rhs.unit {return false}
    if lhs.count != rhs.count {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
