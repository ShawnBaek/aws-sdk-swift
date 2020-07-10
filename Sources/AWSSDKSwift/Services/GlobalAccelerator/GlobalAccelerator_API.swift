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
Client object for interacting with AWS GlobalAccelerator service.

AWS Global Accelerator This is the AWS Global Accelerator API Reference. This guide is for developers who need detailed information about AWS Global Accelerator API actions, data types, and errors. For more information about Global Accelerator features, see the AWS Global Accelerator Developer Guide.  AWS Global Accelerator is a service in which you create accelerators to improve availability and performance of your applications for local and global users.   You must specify the US West (Oregon) Region to create or update accelerators.  By default, Global Accelerator provides you with static IP addresses that you associate with your accelerator. (Instead of using the IP addresses that Global Accelerator provides, you can configure these entry points to be IPv4 addresses from your own IP address ranges that you bring to Global Accelerator.) The static IP addresses are anycast from the AWS edge network and distribute incoming application traffic across multiple endpoint resources in multiple AWS Regions, which increases the availability of your applications. Endpoints can be Network Load Balancers, Application Load Balancers, EC2 instances, or Elastic IP addresses that are located in one AWS Region or multiple Regions. Global Accelerator uses the AWS global network to route traffic to the optimal regional endpoint based on health, client location, and policies that you configure. The service reacts instantly to changes in health or configuration to ensure that internet traffic from clients is directed to only healthy endpoints. Global Accelerator includes components that work together to help you improve performance and availability for your applications:  Static IP address  By default, AWS Global Accelerator provides you with a set of static IP addresses that are anycast from the AWS edge network and serve as the single fixed entry points for your clients. Or you can configure these entry points to be IPv4 addresses from your own IP address ranges that you bring to Global Accelerator (BYOIP). For more information, see Bring Your Own IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide. If you already have load balancers, EC2 instances, or Elastic IP addresses set up for your applications, you can easily add those to Global Accelerator to allow the resources to be accessed by the static IP addresses.  The static IP addresses remain assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to it, so you can no longer route traffic by using them. You can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see Authentication and Access Control in the AWS Global Accelerator Developer Guide.    Accelerator  An accelerator directs traffic to optimal endpoints over the AWS global network to improve availability and performance for your internet applications that have a global audience. Each accelerator includes one or more listeners.  DNS name  Global Accelerator assigns each accelerator a default Domain Name System (DNS) name, similar to a1234567890abcdef.awsglobalaccelerator.com, that points to your Global Accelerator static IP addresses. Depending on the use case, you can use your accelerator's static IP addresses or DNS name to route traffic to your accelerator, or set up DNS records to route traffic using your own custom domain name.  Network zone  A network zone services the static IP addresses for your accelerator from a unique IP subnet. Similar to an AWS Availability Zone, a network zone is an isolated unit with its own set of physical infrastructure. When you configure an accelerator, by default, Global Accelerator allocates two IPv4 addresses for it. If one IP address from a network zone becomes unavailable due to IP address blocking by certain client networks, or network disruptions, then client applications can retry on the healthy static IP address from the other isolated network zone.  Listener  A listener processes inbound connections from clients to Global Accelerator, based on the protocol and port that you configure. Each listener has one or more endpoint groups associated with it, and traffic is forwarded to endpoints in one of the groups. You associate endpoint groups with listeners by specifying the Regions that you want to distribute traffic to. Traffic is distributed to optimal endpoints within the endpoint groups associated with a listener.  Endpoint group  Each endpoint group is associated with a specific AWS Region. Endpoint groups include one or more endpoints in the Region. You can increase or reduce the percentage of traffic that would be otherwise directed to an endpoint group by adjusting a setting called a traffic dial. The traffic dial lets you easily do performance testing or blue/green deployment testing for new releases across different AWS Regions, for example.   Endpoint  An endpoint is a Network Load Balancer, Application Load Balancer, EC2 instance, or Elastic IP address. Traffic is routed to endpoints based on several factors, including the geo-proximity to the user, the health of the endpoint, and the configuration options that you choose, such as endpoint weights. For each endpoint, you can configure weights, which are numbers that you can use to specify the proportion of traffic to route to each one. This can be useful, for example, to do performance testing within a Region.  
*/
public struct GlobalAccelerator {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the GlobalAccelerator client
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
            amzTarget: "GlobalAccelerator_V20180706",
            service: "globalaccelerator",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-08-08",
            endpoint: endpoint,
            possibleErrorTypes: [GlobalAcceleratorErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Advertises an IPv4 address range that is provisioned for use with your AWS resources through bring your own IP addresses (BYOIP). It can take a few minutes before traffic to the specified addresses starts routing to AWS because of propagation delays. To see an AWS CLI example of advertising an address range, scroll down to Example. To stop advertising the BYOIP address range, use  WithdrawByoipCidr. For more information, see Bring Your Own IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide.
    public func advertiseByoipCidr(_ input: AdvertiseByoipCidrRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AdvertiseByoipCidrResponse> {
        return client.execute(operation: "AdvertiseByoipCidr", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers. To see an AWS CLI example of creating an accelerator, scroll down to Example. If you bring your own IP address ranges to AWS Global Accelerator (BYOIP), you can assign IP addresses from your own pool to your accelerator as the static IP address entry points. Only one IP address from each of your IP address ranges can be used for each accelerator.  You must specify the US West (Oregon) Region to create or update accelerators. 
    public func createAccelerator(_ input: CreateAcceleratorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAcceleratorResponse> {
        return client.execute(operation: "CreateAccelerator", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one AWS Region. To see an AWS CLI example of creating an endpoint group, scroll down to Example.
    public func createEndpointGroup(_ input: CreateEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEndpointGroupResponse> {
        return client.execute(operation: "CreateEndpointGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static IP addresses on a port, port range, or list of port ranges that you specify. To see an AWS CLI example of creating a listener, scroll down to Example.
    public func createListener(_ input: CreateListenerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateListenerResponse> {
        return client.execute(operation: "CreateListener", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete an accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources (listeners and endpoint groups). To disable the accelerator, update the accelerator to set Enabled to false.  When you create an accelerator, by default, Global Accelerator provides you with a set of two static IP addresses. Alternatively, you can bring your own IP address ranges to Global Accelerator and assign IP addresses from those ranges.  The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them. As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see Authentication and Access Control in the AWS Global Accelerator Developer Guide. 
    @discardableResult public func deleteAccelerator(_ input: DeleteAcceleratorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAccelerator", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete an endpoint group from a listener.
    @discardableResult public func deleteEndpointGroup(_ input: DeleteEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteEndpointGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete a listener from an accelerator.
    @discardableResult public func deleteListener(_ input: DeleteListenerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteListener", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Releases the specified address range that you provisioned to use with your AWS resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool. To see an AWS CLI example of deprovisioning an address range, scroll down to Example. Before you can release an address range, you must stop advertising it by using WithdrawByoipCidr and you must not have any accelerators that are using static IP addresses allocated from its address range.  For more information, see Bring Your Own IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide.
    public func deprovisionByoipCidr(_ input: DeprovisionByoipCidrRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeprovisionByoipCidrResponse> {
        return client.execute(operation: "DeprovisionByoipCidr", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describe an accelerator. To see an AWS CLI example of describing an accelerator, scroll down to Example.
    public func describeAccelerator(_ input: DescribeAcceleratorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAcceleratorResponse> {
        return client.execute(operation: "DescribeAccelerator", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describe the attributes of an accelerator. To see an AWS CLI example of describing the attributes of an accelerator, scroll down to Example.
    public func describeAcceleratorAttributes(_ input: DescribeAcceleratorAttributesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAcceleratorAttributesResponse> {
        return client.execute(operation: "DescribeAcceleratorAttributes", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describe an endpoint group. To see an AWS CLI example of describing an endpoint group, scroll down to Example.
    public func describeEndpointGroup(_ input: DescribeEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndpointGroupResponse> {
        return client.execute(operation: "DescribeEndpointGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describe a listener. To see an AWS CLI example of describing a listener, scroll down to Example.
    public func describeListener(_ input: DescribeListenerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerResponse> {
        return client.execute(operation: "DescribeListener", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the accelerators for an AWS account. To see an AWS CLI example of listing the accelerators for an AWS account, scroll down to Example.
    public func listAccelerators(_ input: ListAcceleratorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAcceleratorsResponse> {
        return client.execute(operation: "ListAccelerators", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the IP address ranges that were specified in calls to ProvisionByoipCidr, including the current state and a history of state changes. To see an AWS CLI example of listing BYOIP CIDR addresses, scroll down to Example.
    public func listByoipCidrs(_ input: ListByoipCidrsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListByoipCidrsResponse> {
        return client.execute(operation: "ListByoipCidrs", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the endpoint groups that are associated with a listener. To see an AWS CLI example of listing the endpoint groups for listener, scroll down to Example.
    public func listEndpointGroups(_ input: ListEndpointGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEndpointGroupsResponse> {
        return client.execute(operation: "ListEndpointGroups", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the listeners for an accelerator. To see an AWS CLI example of listing the listeners for an accelerator, scroll down to Example.
    public func listListeners(_ input: ListListenersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListListenersResponse> {
        return client.execute(operation: "ListListeners", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List all tags for an accelerator. To see an AWS CLI example of listing tags for an accelerator, scroll down to Example. For more information, see Tagging in AWS Global Accelerator in the AWS Global Accelerator Developer Guide. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provisions an IP address range to use with your AWS resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned, it is ready to be advertised using  AdvertiseByoipCidr. To see an AWS CLI example of provisioning an address range for BYOIP, scroll down to Example. For more information, see Bring Your Own IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide.
    public func provisionByoipCidr(_ input: ProvisionByoipCidrRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProvisionByoipCidrResponse> {
        return client.execute(operation: "ProvisionByoipCidr", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Add tags to an accelerator resource. To see an AWS CLI example of adding tags to an accelerator, scroll down to Example. For more information, see Tagging in AWS Global Accelerator in the AWS Global Accelerator Developer Guide. 
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Remove tags from a Global Accelerator resource. When you specify a tag key, the action removes both that key and its associated value. To see an AWS CLI example of removing tags from an accelerator, scroll down to Example. The operation succeeds even if you attempt to remove tags from an accelerator that was already removed. For more information, see Tagging in AWS Global Accelerator in the AWS Global Accelerator Developer Guide.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Update an accelerator. To see an AWS CLI example of updating an accelerator, scroll down to Example.  You must specify the US West (Oregon) Region to create or update accelerators. 
    public func updateAccelerator(_ input: UpdateAcceleratorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAcceleratorResponse> {
        return client.execute(operation: "UpdateAccelerator", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Update the attributes for an accelerator. To see an AWS CLI example of updating an accelerator to enable flow logs, scroll down to Example.
    public func updateAcceleratorAttributes(_ input: UpdateAcceleratorAttributesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAcceleratorAttributesResponse> {
        return client.execute(operation: "UpdateAcceleratorAttributes", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Update an endpoint group. To see an AWS CLI example of updating an endpoint group, scroll down to Example.
    public func updateEndpointGroup(_ input: UpdateEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEndpointGroupResponse> {
        return client.execute(operation: "UpdateEndpointGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Update a listener. To see an AWS CLI example of updating listener, scroll down to Example.
    public func updateListener(_ input: UpdateListenerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateListenerResponse> {
        return client.execute(operation: "UpdateListener", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Stops advertising an address range that is provisioned as an address pool. You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time. To see an AWS CLI example of withdrawing an address range for BYOIP so it will no longer be advertised by AWS, scroll down to Example. It can take a few minutes before traffic to the specified addresses stops routing to AWS because of propagation delays. For more information, see Bring Your Own IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide.
    public func withdrawByoipCidr(_ input: WithdrawByoipCidrRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<WithdrawByoipCidrResponse> {
        return client.execute(operation: "WithdrawByoipCidr", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
