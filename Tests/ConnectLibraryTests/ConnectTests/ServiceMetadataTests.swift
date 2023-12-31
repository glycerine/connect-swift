// Copyright 2022-2023 The Connect Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Connect
import XCTest

final class ServiceMetadataTests: XCTestCase {
    func testMethodSpecsAreGeneratedCorrectlyForService() {
        XCTAssertEqual(
            Connectrpc_Conformance_V1_TestServiceClient.Metadata.Methods.unaryCall,
            MethodSpec(
                name: "UnaryCall",
                service: "connectrpc.conformance.v1.TestService",
                type: .unary
            )
        )
        XCTAssertEqual(
            Connectrpc_Conformance_V1_TestServiceClient.Metadata.Methods.unaryCall.path,
            "connectrpc.conformance.v1.TestService/UnaryCall"
        )
        XCTAssertEqual(
            Connectrpc_Conformance_V1_TestServiceClient.Metadata.Methods.streamingOutputCall,
            MethodSpec(
                name: "StreamingOutputCall",
                service: "connectrpc.conformance.v1.TestService",
                type: .serverStream
            )
        )
        XCTAssertEqual(
            Connectrpc_Conformance_V1_TestServiceClient.Metadata.Methods.streamingOutputCall.path,
            "connectrpc.conformance.v1.TestService/StreamingOutputCall"
        )
        XCTAssertEqual(
            Connectrpc_Conformance_V1_TestServiceClient.Metadata.Methods.streamingInputCall,
            MethodSpec(
                name: "StreamingInputCall",
                service: "connectrpc.conformance.v1.TestService",
                type: .clientStream
            )
        )
        XCTAssertEqual(
            Connectrpc_Conformance_V1_TestServiceClient.Metadata.Methods.streamingInputCall.path,
            "connectrpc.conformance.v1.TestService/StreamingInputCall"
        )
        XCTAssertEqual(
            Connectrpc_Conformance_V1_TestServiceClient.Metadata.Methods.fullDuplexCall,
            MethodSpec(
                name: "FullDuplexCall",
                service: "connectrpc.conformance.v1.TestService",
                type: .bidirectionalStream
            )
        )
        XCTAssertEqual(
            Connectrpc_Conformance_V1_TestServiceClient.Metadata.Methods.fullDuplexCall.path,
            "connectrpc.conformance.v1.TestService/FullDuplexCall"
        )
    }
}
