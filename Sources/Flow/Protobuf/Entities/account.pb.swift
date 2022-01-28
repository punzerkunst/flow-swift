// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: flow/entities/account.proto
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
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

public struct Flow_Entities_Account {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var address = Data()

    public var balance: UInt64 = 0

    public var code = Data()

    public var keys: [Flow_Entities_AccountKey] = []

    public var contracts: [String: Data] = [:]

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

public struct Flow_Entities_AccountKey {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var index: UInt32 = 0

    public var publicKey = Data()

    public var signAlgo: UInt32 = 0

    public var hashAlgo: UInt32 = 0

    public var weight: UInt32 = 0

    public var sequenceNumber: UInt32 = 0

    public var revoked: Bool = false

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "flow.entities"

extension Flow_Entities_Account: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".Account"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "address"),
        2: .same(proto: "balance"),
        3: .same(proto: "code"),
        4: .same(proto: "keys"),
        5: .same(proto: "contracts"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularBytesField(value: &self.address) }()
            case 2: try { try decoder.decodeSingularUInt64Field(value: &self.balance) }()
            case 3: try { try decoder.decodeSingularBytesField(value: &self.code) }()
            case 4: try { try decoder.decodeRepeatedMessageField(value: &self.keys) }()
            case 5: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString, SwiftProtobuf.ProtobufBytes>.self, value: &self.contracts) }()
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !address.isEmpty {
            try visitor.visitSingularBytesField(value: address, fieldNumber: 1)
        }
        if balance != 0 {
            try visitor.visitSingularUInt64Field(value: balance, fieldNumber: 2)
        }
        if !code.isEmpty {
            try visitor.visitSingularBytesField(value: code, fieldNumber: 3)
        }
        if !keys.isEmpty {
            try visitor.visitRepeatedMessageField(value: keys, fieldNumber: 4)
        }
        if !contracts.isEmpty {
            try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString, SwiftProtobuf.ProtobufBytes>.self, value: contracts, fieldNumber: 5)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Flow_Entities_Account, rhs: Flow_Entities_Account) -> Bool {
        if lhs.address != rhs.address { return false }
        if lhs.balance != rhs.balance { return false }
        if lhs.code != rhs.code { return false }
        if lhs.keys != rhs.keys { return false }
        if lhs.contracts != rhs.contracts { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Flow_Entities_AccountKey: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".AccountKey"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "index"),
        2: .standard(proto: "public_key"),
        3: .standard(proto: "sign_algo"),
        4: .standard(proto: "hash_algo"),
        5: .same(proto: "weight"),
        6: .standard(proto: "sequence_number"),
        7: .same(proto: "revoked"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularUInt32Field(value: &self.index) }()
            case 2: try { try decoder.decodeSingularBytesField(value: &self.publicKey) }()
            case 3: try { try decoder.decodeSingularUInt32Field(value: &self.signAlgo) }()
            case 4: try { try decoder.decodeSingularUInt32Field(value: &self.hashAlgo) }()
            case 5: try { try decoder.decodeSingularUInt32Field(value: &self.weight) }()
            case 6: try { try decoder.decodeSingularUInt32Field(value: &self.sequenceNumber) }()
            case 7: try { try decoder.decodeSingularBoolField(value: &self.revoked) }()
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if index != 0 {
            try visitor.visitSingularUInt32Field(value: index, fieldNumber: 1)
        }
        if !publicKey.isEmpty {
            try visitor.visitSingularBytesField(value: publicKey, fieldNumber: 2)
        }
        if signAlgo != 0 {
            try visitor.visitSingularUInt32Field(value: signAlgo, fieldNumber: 3)
        }
        if hashAlgo != 0 {
            try visitor.visitSingularUInt32Field(value: hashAlgo, fieldNumber: 4)
        }
        if weight != 0 {
            try visitor.visitSingularUInt32Field(value: weight, fieldNumber: 5)
        }
        if sequenceNumber != 0 {
            try visitor.visitSingularUInt32Field(value: sequenceNumber, fieldNumber: 6)
        }
        if revoked != false {
            try visitor.visitSingularBoolField(value: revoked, fieldNumber: 7)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Flow_Entities_AccountKey, rhs: Flow_Entities_AccountKey) -> Bool {
        if lhs.index != rhs.index { return false }
        if lhs.publicKey != rhs.publicKey { return false }
        if lhs.signAlgo != rhs.signAlgo { return false }
        if lhs.hashAlgo != rhs.hashAlgo { return false }
        if lhs.weight != rhs.weight { return false }
        if lhs.sequenceNumber != rhs.sequenceNumber { return false }
        if lhs.revoked != rhs.revoked { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
