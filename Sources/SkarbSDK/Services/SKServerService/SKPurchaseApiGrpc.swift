//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: app/purchase/purchaseapi/api.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate `Purchaseapi_IngesterClient`, then call methods of this protocol to make API calls.
internal protocol Purchaseapi_IngesterClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Purchaseapi_IngesterClientInterceptorFactoryProtocol? { get }

  func setReceipt(
    _ request: Purchaseapi_ReceiptRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Purchaseapi_ReceiptRequest, Purchaseapi_ReceiptResponse>

  func setTransactions(
    _ request: Purchaseapi_TransactionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Purchaseapi_TransactionsRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

extension Purchaseapi_IngesterClientProtocol {
  internal var serviceName: String {
    return "purchaseapi.Ingester"
  }

  /// Unary call to SetReceipt
  ///
  /// - Parameters:
  ///   - request: Request to send to SetReceipt.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func setReceipt(
    _ request: Purchaseapi_ReceiptRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Purchaseapi_ReceiptRequest, Purchaseapi_ReceiptResponse> {
    return self.makeUnaryCall(
      path: "/purchaseapi.Ingester/SetReceipt",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetReceiptInterceptors() ?? []
    )
  }

  /// Unary call to SetTransactions
  ///
  /// - Parameters:
  ///   - request: Request to send to SetTransactions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func setTransactions(
    _ request: Purchaseapi_TransactionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Purchaseapi_TransactionsRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/purchaseapi.Ingester/SetTransactions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetTransactionsInterceptors() ?? []
    )
  }
}

internal protocol Purchaseapi_IngesterClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'setReceipt'.
  func makeSetReceiptInterceptors() -> [ClientInterceptor<Purchaseapi_ReceiptRequest, Purchaseapi_ReceiptResponse>]

  /// - Returns: Interceptors to use when invoking 'setTransactions'.
  func makeSetTransactionsInterceptors() -> [ClientInterceptor<Purchaseapi_TransactionsRequest, SwiftProtobuf.Google_Protobuf_Empty>]
}

internal final class Purchaseapi_IngesterClient: Purchaseapi_IngesterClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Purchaseapi_IngesterClientInterceptorFactoryProtocol?

  /// Creates a client for the purchaseapi.Ingester service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Purchaseapi_IngesterClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Purchaseapi_IngesterProvider: CallHandlerProvider {
  var interceptors: Purchaseapi_IngesterServerInterceptorFactoryProtocol? { get }

  func setReceipt(request: Purchaseapi_ReceiptRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Purchaseapi_ReceiptResponse>

  func setTransactions(request: Purchaseapi_TransactionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Purchaseapi_IngesterProvider {
  internal var serviceName: Substring { return "purchaseapi.Ingester" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "SetReceipt":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Purchaseapi_ReceiptRequest>(),
        responseSerializer: ProtobufSerializer<Purchaseapi_ReceiptResponse>(),
        interceptors: self.interceptors?.makeSetReceiptInterceptors() ?? [],
        userFunction: self.setReceipt(request:context:)
      )

    case "SetTransactions":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Purchaseapi_TransactionsRequest>(),
        responseSerializer: ProtobufSerializer<SwiftProtobuf.Google_Protobuf_Empty>(),
        interceptors: self.interceptors?.makeSetTransactionsInterceptors() ?? [],
        userFunction: self.setTransactions(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Purchaseapi_IngesterServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'setReceipt'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSetReceiptInterceptors() -> [ServerInterceptor<Purchaseapi_ReceiptRequest, Purchaseapi_ReceiptResponse>]

  /// - Returns: Interceptors to use when handling 'setTransactions'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSetTransactionsInterceptors() -> [ServerInterceptor<Purchaseapi_TransactionsRequest, SwiftProtobuf.Google_Protobuf_Empty>]
}
