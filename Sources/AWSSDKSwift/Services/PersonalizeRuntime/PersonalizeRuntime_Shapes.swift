//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore
import Foundation

extension PersonalizeRuntime {
    //MARK: Enums

    //MARK: Shapes

    public struct GetPersonalizedRankingRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the campaign to use for generating the personalized ranking.
        public let campaignArn: String
        /// The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type.
        public let context: [String: String]?
        /// A list of items (itemId's) to rank. If an item was not included in the training dataset, the item is appended to the end of the reranked list. The maximum is 500.
        public let inputList: [String]
        /// The user for which you want the campaign to provide a personalized ranking.
        public let userId: String

        public init(campaignArn: String, context: [String: String]? = nil, inputList: [String], userId: String) {
            self.campaignArn = campaignArn
            self.context = context
            self.inputList = inputList
            self.userId = userId
        }

        public func validate(name: String) throws {
            try validate(self.campaignArn, name: "campaignArn", parent: name, max: 256)
            try validate(self.campaignArn, name: "campaignArn", parent: name, pattern: "arn:([a-z\\d-]+):personalize:.*:.*:.+")
            try self.context?.forEach {
                try validate($0.key, name: "context.key", parent: name, max: 150)
                try validate($0.key, name: "context.key", parent: name, pattern: "[A-Za-z\\d_]+")
                try validate($0.value, name: "context[\"\($0.key)\"]", parent: name, max: 1000)
            }
            try self.inputList.forEach {
                try validate($0, name: "inputList[]", parent: name, max: 256)
            }
            try validate(self.userId, name: "userId", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case campaignArn = "campaignArn"
            case context = "context"
            case inputList = "inputList"
            case userId = "userId"
        }
    }

    public struct GetPersonalizedRankingResponse: AWSDecodableShape {

        /// A list of items in order of most likely interest to the user. The maximum is 500.
        public let personalizedRanking: [PredictedItem]?

        public init(personalizedRanking: [PredictedItem]? = nil) {
            self.personalizedRanking = personalizedRanking
        }

        private enum CodingKeys: String, CodingKey {
            case personalizedRanking = "personalizedRanking"
        }
    }

    public struct GetRecommendationsRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.
        public let campaignArn: String
        /// The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type.
        public let context: [String: String]?
        /// The item ID to provide recommendations for. Required for RELATED_ITEMS recipe type.
        public let itemId: String?
        /// The number of results to return. The default is 25. The maximum is 500.
        public let numResults: Int?
        /// The user ID to provide recommendations for. Required for USER_PERSONALIZATION recipe type.
        public let userId: String?

        public init(campaignArn: String, context: [String: String]? = nil, itemId: String? = nil, numResults: Int? = nil, userId: String? = nil) {
            self.campaignArn = campaignArn
            self.context = context
            self.itemId = itemId
            self.numResults = numResults
            self.userId = userId
        }

        public func validate(name: String) throws {
            try validate(self.campaignArn, name: "campaignArn", parent: name, max: 256)
            try validate(self.campaignArn, name: "campaignArn", parent: name, pattern: "arn:([a-z\\d-]+):personalize:.*:.*:.+")
            try self.context?.forEach {
                try validate($0.key, name: "context.key", parent: name, max: 150)
                try validate($0.key, name: "context.key", parent: name, pattern: "[A-Za-z\\d_]+")
                try validate($0.value, name: "context[\"\($0.key)\"]", parent: name, max: 1000)
            }
            try validate(self.itemId, name: "itemId", parent: name, max: 256)
            try validate(self.numResults, name: "numResults", parent: name, min: 0)
            try validate(self.userId, name: "userId", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case campaignArn = "campaignArn"
            case context = "context"
            case itemId = "itemId"
            case numResults = "numResults"
            case userId = "userId"
        }
    }

    public struct GetRecommendationsResponse: AWSDecodableShape {

        /// A list of recommendations sorted in ascending order by prediction score. There can be a maximum of 500 items in the list.
        public let itemList: [PredictedItem]?

        public init(itemList: [PredictedItem]? = nil) {
            self.itemList = itemList
        }

        private enum CodingKeys: String, CodingKey {
            case itemList = "itemList"
        }
    }

    public struct PredictedItem: AWSDecodableShape {

        /// The recommended item ID.
        public let itemId: String?
        /// A numeric representation of the model's certainty in the item's suitability. For more information on scoring logic, see how-scores-work.
        public let score: Double?

        public init(itemId: String? = nil, score: Double? = nil) {
            self.itemId = itemId
            self.score = score
        }

        private enum CodingKeys: String, CodingKey {
            case itemId = "itemId"
            case score = "score"
        }
    }
}
