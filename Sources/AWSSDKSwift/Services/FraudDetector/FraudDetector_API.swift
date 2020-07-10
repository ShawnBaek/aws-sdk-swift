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

@_exported import AWSSDKSwiftCore

/**
Client object for interacting with AWS FraudDetector service.

This is the Amazon Fraud Detector API Reference. This guide is for developers who need detailed information about Amazon Fraud Detector API actions, data types, and errors. For more information about Amazon Fraud Detector features, see the Amazon Fraud Detector User Guide.
*/
public struct FraudDetector {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the FraudDetector client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSHawksNestServiceFacade",
            service: "frauddetector",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-11-15",
            endpoint: endpoint,
            possibleErrorTypes: [FraudDetectorErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Creates a batch of variables.
    public func batchCreateVariable(_ input: BatchCreateVariableRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchCreateVariableResult> {
        return client.execute(operation: "BatchCreateVariable", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets a batch of variables.
    public func batchGetVariable(_ input: BatchGetVariableRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetVariableResult> {
        return client.execute(operation: "BatchGetVariable", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a detector version. The detector version starts in a DRAFT status.
    public func createDetectorVersion(_ input: CreateDetectorVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDetectorVersionResult> {
        return client.execute(operation: "CreateDetectorVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a version of the model using the specified model type. 
    public func createModelVersion(_ input: CreateModelVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModelVersionResult> {
        return client.execute(operation: "CreateModelVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a rule for use with the specified detector. 
    public func createRule(_ input: CreateRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleResult> {
        return client.execute(operation: "CreateRule", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a variable.
    public func createVariable(_ input: CreateVariableRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVariableResult> {
        return client.execute(operation: "CreateVariable", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the detector. Before deleting a detector, you must first delete all detector versions and rule versions associated with the detector.
    public func deleteDetector(_ input: DeleteDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDetectorResult> {
        return client.execute(operation: "DeleteDetector", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the detector version. You cannot delete detector versions that are in ACTIVE status.
    public func deleteDetectorVersion(_ input: DeleteDetectorVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDetectorVersionResult> {
        return client.execute(operation: "DeleteDetectorVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified event.
    public func deleteEvent(_ input: DeleteEventRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEventResult> {
        return client.execute(operation: "DeleteEvent", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the rule version. You cannot delete a rule version if it is used by an ACTIVE or INACTIVE detector version.
    public func deleteRuleVersion(_ input: DeleteRuleVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleVersionResult> {
        return client.execute(operation: "DeleteRuleVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets all versions for a specified detector.
    public func describeDetector(_ input: DescribeDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDetectorResult> {
        return client.execute(operation: "DescribeDetector", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. 
    public func describeModelVersions(_ input: DescribeModelVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelVersionsResult> {
        return client.execute(operation: "DescribeModelVersions", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets a particular detector version. 
    public func getDetectorVersion(_ input: GetDetectorVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDetectorVersionResult> {
        return client.execute(operation: "GetDetectorVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets all of detectors. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEventTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 
    public func getDetectors(_ input: GetDetectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDetectorsResult> {
        return client.execute(operation: "GetDetectors", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetExternalModelsResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getExternalModels(_ input: GetExternalModelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetExternalModelsResult> {
        return client.execute(operation: "GetExternalModels", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets a model version. 
    public func getModelVersion(_ input: GetModelVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelVersionResult> {
        return client.execute(operation: "GetModelVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets all of the models for the AWS account, or the specified model type, or gets a single model for the specified model type, model ID combination. 
    public func getModels(_ input: GetModelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelsResult> {
        return client.execute(operation: "GetModels", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets one or more outcomes. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 50 and 100. To get the next page results, provide the pagination token from the GetOutcomesResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getOutcomes(_ input: GetOutcomesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOutcomesResult> {
        return client.execute(operation: "GetOutcomes", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Evaluates an event against a detector version. If a version ID is not provided, the detector’s (ACTIVE) version is used. 
    public func getPrediction(_ input: GetPredictionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPredictionResult> {
        return client.execute(operation: "GetPrediction", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets all rules available for the specified detector.
    public func getRules(_ input: GetRulesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRulesResult> {
        return client.execute(operation: "GetRules", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets all of the variables or the specific variable. This is a paginated API. Providing null maxSizePerPage results in retrieving maximum of 100 records per page. If you provide maxSizePerPage the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetVariablesResult as part of your request. Null pagination token fetches the records from the beginning. 
    public func getVariables(_ input: GetVariablesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVariablesResult> {
        return client.execute(operation: "GetVariables", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates a detector. 
    public func putDetector(_ input: PutDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutDetectorResult> {
        return client.execute(operation: "PutDetector", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates an Amazon SageMaker model endpoint. You can also use this action to update the configuration of the model endpoint, including the IAM role and/or the mapped variables. 
    public func putExternalModel(_ input: PutExternalModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutExternalModelResult> {
        return client.execute(operation: "PutExternalModel", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates a model. 
    public func putModel(_ input: PutModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutModelResult> {
        return client.execute(operation: "PutModel", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates an outcome. 
    public func putOutcome(_ input: PutOutcomeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutOutcomeResult> {
        return client.execute(operation: "PutOutcome", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Updates a detector version. The detector version attributes that you can update include models, external model endpoints, rules, and description. You can only update a DRAFT detector version.
    public func updateDetectorVersion(_ input: UpdateDetectorVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorVersionResult> {
        return client.execute(operation: "UpdateDetectorVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the detector version's description. You can update the metadata for any detector version (DRAFT, ACTIVE, or INACTIVE). 
    public func updateDetectorVersionMetadata(_ input: UpdateDetectorVersionMetadataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorVersionMetadataResult> {
        return client.execute(operation: "UpdateDetectorVersionMetadata", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the detector version’s status. You can perform the following promotions or demotions using UpdateDetectorVersionStatus: DRAFT to ACTIVE, ACTIVE to INACTIVE, and INACTIVE to ACTIVE.
    public func updateDetectorVersionStatus(_ input: UpdateDetectorVersionStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorVersionStatusResult> {
        return client.execute(operation: "UpdateDetectorVersionStatus", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a model version. You can update the description and status attributes using this action. You can perform the following status updates:    Change the TRAINING_COMPLETE status to ACTIVE    Change ACTIVE back to TRAINING_COMPLETE   
    public func updateModelVersion(_ input: UpdateModelVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateModelVersionResult> {
        return client.execute(operation: "UpdateModelVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a rule's metadata. 
    public func updateRuleMetadata(_ input: UpdateRuleMetadataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleMetadataResult> {
        return client.execute(operation: "UpdateRuleMetadata", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a rule version resulting in a new rule version. 
    public func updateRuleVersion(_ input: UpdateRuleVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleVersionResult> {
        return client.execute(operation: "UpdateRuleVersion", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a variable.
    public func updateVariable(_ input: UpdateVariableRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVariableResult> {
        return client.execute(operation: "UpdateVariable", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
