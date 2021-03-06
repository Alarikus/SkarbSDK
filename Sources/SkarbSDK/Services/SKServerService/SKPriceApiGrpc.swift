//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: app/price/priceapi/api.proto
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


/// Usage: instantiate `Priceapi_PricerClient`, then call methods of this protocol to make API calls.
internal protocol Priceapi_PricerClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Priceapi_PricerClientInterceptorFactoryProtocol? { get }

  func getProducts(
    _ request: Priceapi_ProductsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Priceapi_ProductsRequest, Priceapi_ProductsResponse>

  func setPrices(
    _ request: Priceapi_PricesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Priceapi_PricesRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

extension Priceapi_PricerClientProtocol {
  internal var serviceName: String {
    return "priceapi.Pricer"
  }

  /// Unary call to GetProducts
  ///
  /// - Parameters:
  ///   - request: Request to send to GetProducts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getProducts(
    _ request: Priceapi_ProductsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Priceapi_ProductsRequest, Priceapi_ProductsResponse> {
    return self.makeUnaryCall(
      path: "/priceapi.Pricer/GetProducts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProductsInterceptors() ?? []
    )
  }

  /// Unary call to SetPrices
  ///
  /// - Parameters:
  ///   - request: Request to send to SetPrices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func setPrices(
    _ request: Priceapi_PricesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Priceapi_PricesRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/priceapi.Pricer/SetPrices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetPricesInterceptors() ?? []
    )
  }
}

internal protocol Priceapi_PricerClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'getProducts'.
  func makeGetProductsInterceptors() -> [ClientInterceptor<Priceapi_ProductsRequest, Priceapi_ProductsResponse>]

  /// - Returns: Interceptors to use when invoking 'setPrices'.
  func makeSetPricesInterceptors() -> [ClientInterceptor<Priceapi_PricesRequest, SwiftProtobuf.Google_Protobuf_Empty>]
}

internal final class Priceapi_PricerClient: Priceapi_PricerClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Priceapi_PricerClientInterceptorFactoryProtocol?

  /// Creates a client for the priceapi.Pricer service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Priceapi_PricerClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Priceapi_PricerProvider: CallHandlerProvider {
  var interceptors: Priceapi_PricerServerInterceptorFactoryProtocol? { get }

  func getProducts(request: Priceapi_ProductsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Priceapi_ProductsResponse>

  func setPrices(request: Priceapi_PricesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Priceapi_PricerProvider {
  internal var serviceName: Substring { return "priceapi.Pricer" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetProducts":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Priceapi_ProductsRequest>(),
        responseSerializer: ProtobufSerializer<Priceapi_ProductsResponse>(),
        interceptors: self.interceptors?.makeGetProductsInterceptors() ?? [],
        userFunction: self.getProducts(request:context:)
      )

    case "SetPrices":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Priceapi_PricesRequest>(),
        responseSerializer: ProtobufSerializer<SwiftProtobuf.Google_Protobuf_Empty>(),
        interceptors: self.interceptors?.makeSetPricesInterceptors() ?? [],
        userFunction: self.setPrices(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Priceapi_PricerServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'getProducts'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetProductsInterceptors() -> [ServerInterceptor<Priceapi_ProductsRequest, Priceapi_ProductsResponse>]

  /// - Returns: Interceptors to use when handling 'setPrices'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSetPricesInterceptors() -> [ServerInterceptor<Priceapi_PricesRequest, SwiftProtobuf.Google_Protobuf_Empty>]
}
