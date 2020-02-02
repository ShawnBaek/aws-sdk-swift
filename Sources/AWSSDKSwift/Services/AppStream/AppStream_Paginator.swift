// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension AppStream {

    ///  Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. 
    public func describeImagePermissionsPaginator(_ input: DescribeImagePermissionsRequest, onPage: @escaping (DescribeImagePermissionsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeImagePermissions, tokenKey: \DescribeImagePermissionsResult.nextToken, onPage: onPage)
    }

    ///  Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
    public func describeImagesPaginator(_ input: DescribeImagesRequest, onPage: @escaping (DescribeImagesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeImages, tokenKey: \DescribeImagesResult.nextToken, onPage: onPage)
    }

}

extension AppStream.DescribeImagePermissionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AppStream.DescribeImagePermissionsRequest {
        return .init(
            maxResults: self.maxResults, 
            name: self.name, 
            nextToken: token, 
            sharedAwsAccountIds: self.sharedAwsAccountIds
        )

    }
}

extension AppStream.DescribeImagesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AppStream.DescribeImagesRequest {
        return .init(
            arns: self.arns, 
            maxResults: self.maxResults, 
            names: self.names, 
            nextToken: token, 
            type: self.type
        )

    }
}

