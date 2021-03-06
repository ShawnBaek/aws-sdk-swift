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
Client object for interacting with AWS MediaPackage service.

AWS Elemental MediaPackage
*/
public struct MediaPackage {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the MediaPackage client
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
            service: "mediapackage",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-12",
            endpoint: endpoint,
            possibleErrorTypes: [MediaPackageErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Creates a new Channel.
    public func createChannel(_ input: CreateChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateChannelResponse> {
        return client.execute(operation: "CreateChannel", path: "/channels", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new HarvestJob record.
    public func createHarvestJob(_ input: CreateHarvestJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateHarvestJobResponse> {
        return client.execute(operation: "CreateHarvestJob", path: "/harvest_jobs", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new OriginEndpoint record.
    public func createOriginEndpoint(_ input: CreateOriginEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateOriginEndpointResponse> {
        return client.execute(operation: "CreateOriginEndpoint", path: "/origin_endpoints", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing Channel.
    public func deleteChannel(_ input: DeleteChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteChannelResponse> {
        return client.execute(operation: "DeleteChannel", path: "/channels/{id}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing OriginEndpoint.
    public func deleteOriginEndpoint(_ input: DeleteOriginEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteOriginEndpointResponse> {
        return client.execute(operation: "DeleteOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets details about a Channel.
    public func describeChannel(_ input: DescribeChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeChannelResponse> {
        return client.execute(operation: "DescribeChannel", path: "/channels/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets details about an existing HarvestJob.
    public func describeHarvestJob(_ input: DescribeHarvestJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeHarvestJobResponse> {
        return client.execute(operation: "DescribeHarvestJob", path: "/harvest_jobs/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets details about an existing OriginEndpoint.
    public func describeOriginEndpoint(_ input: DescribeOriginEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeOriginEndpointResponse> {
        return client.execute(operation: "DescribeOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a collection of Channels.
    public func listChannels(_ input: ListChannelsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListChannelsResponse> {
        return client.execute(operation: "ListChannels", path: "/channels", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a collection of HarvestJob records.
    public func listHarvestJobs(_ input: ListHarvestJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListHarvestJobsResponse> {
        return client.execute(operation: "ListHarvestJobs", path: "/harvest_jobs", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a collection of OriginEndpoint records.
    public func listOriginEndpoints(_ input: ListOriginEndpointsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListOriginEndpointsResponse> {
        return client.execute(operation: "ListOriginEndpoints", path: "/origin_endpoints", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message:"This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    public func rotateChannelCredentials(_ input: RotateChannelCredentialsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RotateChannelCredentialsResponse> {
        return client.execute(operation: "RotateChannelCredentials", path: "/channels/{id}/credentials", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    public func rotateIngestEndpointCredentials(_ input: RotateIngestEndpointCredentialsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RotateIngestEndpointCredentialsResponse> {
        return client.execute(operation: "RotateIngestEndpointCredentials", path: "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing Channel.
    public func updateChannel(_ input: UpdateChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateChannelResponse> {
        return client.execute(operation: "UpdateChannel", path: "/channels/{id}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing OriginEndpoint.
    public func updateOriginEndpoint(_ input: UpdateOriginEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateOriginEndpointResponse> {
        return client.execute(operation: "UpdateOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
