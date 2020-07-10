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
Client object for interacting with AWS Shield service.

AWS Shield Advanced This is the AWS Shield Advanced API Reference. This guide is for developers who need detailed information about the AWS Shield Advanced API actions, data types, and errors. For detailed information about AWS WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF and AWS Shield Advanced APIs, see the AWS WAF and AWS Shield Developer Guide.
*/
public struct Shield {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Shield client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: nil,
            partition: partition,
            amzTarget: "AWSShield_20160616",
            service: "shield",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-06-02",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "shield.us-east-1.amazonaws.com"],
            partitionEndpoints: [.aws: (endpoint: "aws-global", region: .useast1)],
            possibleErrorTypes: [ShieldErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Authorizes the DDoS Response Team (DRT) to access the specified Amazon S3 bucket containing your AWS WAF logs. You can associate up to 10 Amazon S3 buckets with your subscription. To use the services of the DRT and make an AssociateDRTLogBucket request, you must be subscribed to the Business Support plan or the Enterprise Support plan.
    public func associateDRTLogBucket(_ input: AssociateDRTLogBucketRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDRTLogBucketResponse> {
        return client.execute(operation: "AssociateDRTLogBucket", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Authorizes the DDoS Response Team (DRT), using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the DRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs. You can associate only one RoleArn with your subscription. If you submit an AssociateDRTRole request for an account that already has an associated role, the new RoleArn will replace the existing RoleArn.  Prior to making the AssociateDRTRole request, you must attach the AWSShieldDRTAccessPolicy managed policy to the role you will specify in the request. For more information see Attaching and Detaching IAM Policies. The role must also trust the service principal  drt.shield.amazonaws.com. For more information, see IAM JSON Policy Elements: Principal. The DRT will have access only to your AWS WAF and Shield resources. By submitting this request, you authorize the DRT to inspect your AWS WAF and Shield configuration and create and update AWS WAF rules and web ACLs on your behalf. The DRT takes these actions only if explicitly authorized by you. You must have the iam:PassRole permission to make an AssociateDRTRole request. For more information, see Granting a User Permissions to Pass a Role to an AWS Service.  To use the services of the DRT and make an AssociateDRTRole request, you must be subscribed to the Business Support plan or the Enterprise Support plan.
    public func associateDRTRole(_ input: AssociateDRTRoleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDRTRoleResponse> {
        return client.execute(operation: "AssociateDRTRole", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds health-based detection to the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your AWS resource to improve responsiveness and accuracy in attack detection and mitigation.  You define the health check in Route 53 and then associate it with your Shield Advanced protection. For more information, see Shield Advanced Health-Based Detection in the AWS WAF and AWS Shield Developer Guide. 
    public func associateHealthCheck(_ input: AssociateHealthCheckRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateHealthCheckResponse> {
        return client.execute(operation: "AssociateHealthCheck", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Initializes proactive engagement and sets the list of contacts for the DDoS Response Team (DRT) to use. You must provide at least one phone number in the emergency contact list.  After you have initialized proactive engagement using this call, to disable or enable proactive engagement, use the calls DisableProactiveEngagement and EnableProactiveEngagement.   This call defines the list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you for escalations to the DRT and to initiate proactive customer support. The contacts that you provide in the request replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using DescribeEmergencyContactSettings and then provide it to this call.  
    public func associateProactiveEngagementDetails(_ input: AssociateProactiveEngagementDetailsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateProactiveEngagementDetailsResponse> {
        return client.execute(operation: "AssociateProactiveEngagementDetails", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone. You can add protection to only a single resource with each CreateProtection request. If you want to add protection to multiple resources at once, use the AWS WAF console. For more information see Getting Started with AWS Shield Advanced and Add AWS Shield Advanced Protection to more AWS Resources.
    public func createProtection(_ input: CreateProtectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProtectionResponse> {
        return client.execute(operation: "CreateProtection", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Activates AWS Shield Advanced for an account. When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period. You can change this by submitting an UpdateSubscription request. 
    public func createSubscription(_ input: CreateSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubscriptionResponse> {
        return client.execute(operation: "CreateSubscription", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an AWS Shield Advanced Protection.
    public func deleteProtection(_ input: DeleteProtectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProtectionResponse> {
        return client.execute(operation: "DeleteProtection", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. 
    @available(*, deprecated, message:"DeleteSubscription is deprecated.")
    public func deleteSubscription(_ input: DeleteSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSubscriptionResponse> {
        return client.execute(operation: "DeleteSubscription", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the details of a DDoS attack. 
    public func describeAttack(_ input: DescribeAttackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAttackResponse> {
        return client.execute(operation: "DescribeAttack", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the current role and list of Amazon S3 log buckets used by the DDoS Response Team (DRT) to access your AWS account while assisting with attack mitigation.
    public func describeDRTAccess(_ input: DescribeDRTAccessRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDRTAccessResponse> {
        return client.execute(operation: "DescribeDRTAccess", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.
    public func describeEmergencyContactSettings(_ input: DescribeEmergencyContactSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEmergencyContactSettingsResponse> {
        return client.execute(operation: "DescribeEmergencyContactSettings", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the details of a Protection object.
    public func describeProtection(_ input: DescribeProtectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectionResponse> {
        return client.execute(operation: "DescribeProtection", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides details about the AWS Shield Advanced subscription for an account.
    public func describeSubscription(_ input: DescribeSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionResponse> {
        return client.execute(operation: "DescribeSubscription", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes authorization from the DDoS Response Team (DRT) to notify contacts about escalations to the DRT and to initiate proactive customer support.
    public func disableProactiveEngagement(_ input: DisableProactiveEngagementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableProactiveEngagementResponse> {
        return client.execute(operation: "DisableProactiveEngagement", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes the DDoS Response Team's (DRT) access to the specified Amazon S3 bucket containing your AWS WAF logs. To make a DisassociateDRTLogBucket request, you must be subscribed to the Business Support plan or the Enterprise Support plan. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a DisassociateDRTLogBucket request to remove this access.
    public func disassociateDRTLogBucket(_ input: DisassociateDRTLogBucketRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateDRTLogBucketResponse> {
        return client.execute(operation: "DisassociateDRTLogBucket", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes the DDoS Response Team's (DRT) access to your AWS account. To make a DisassociateDRTRole request, you must be subscribed to the Business Support plan or the Enterprise Support plan. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a DisassociateDRTRole request to remove this access.
    public func disassociateDRTRole(_ input: DisassociateDRTRoleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateDRTRoleResponse> {
        return client.execute(operation: "DisassociateDRTRole", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes health-based detection from the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your AWS resource to improve responsiveness and accuracy in attack detection and mitigation.  You define the health check in Route 53 and then associate or disassociate it with your Shield Advanced protection. For more information, see Shield Advanced Health-Based Detection in the AWS WAF and AWS Shield Developer Guide. 
    public func disassociateHealthCheck(_ input: DisassociateHealthCheckRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateHealthCheckResponse> {
        return client.execute(operation: "DisassociateHealthCheck", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Authorizes the DDoS Response Team (DRT) to use email and phone to notify contacts about escalations to the DRT and to initiate proactive customer support.
    public func enableProactiveEngagement(_ input: EnableProactiveEngagementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableProactiveEngagementResponse> {
        return client.execute(operation: "EnableProactiveEngagement", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the SubscriptionState, either Active or Inactive.
    public func getSubscriptionState(_ input: GetSubscriptionStateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSubscriptionStateResponse> {
        return client.execute(operation: "GetSubscriptionState", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.
    public func listAttacks(_ input: ListAttacksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAttacksResponse> {
        return client.execute(operation: "ListAttacks", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all Protection objects for the account.
    public func listProtections(_ input: ListProtectionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProtectionsResponse> {
        return client.execute(operation: "ListProtections", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the details of the list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.
    public func updateEmergencyContactSettings(_ input: UpdateEmergencyContactSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEmergencyContactSettingsResponse> {
        return client.execute(operation: "UpdateEmergencyContactSettings", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.
    public func updateSubscription(_ input: UpdateSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSubscriptionResponse> {
        return client.execute(operation: "UpdateSubscription", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
