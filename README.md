# aws-sdk-swift

AWS SDK for the Swift programming language.
This library doesn't depend on Objective-C Runtime, So you can use this with Linux.

[<img src="https://travis-ci.org/swift-aws/aws-sdk-swift.svg?branch=master">](https://travis-ci.org/swift-aws/aws-sdk-swift)


## Supported Platforms and Swift Versions

| | **Swift 4.2** |
|---|:---:|
|**macOS**        | ○ |
|**Ubuntu 14.04** | ○ |
|**Ubuntu 16.04** | ○ |
|**Ubuntu 18.04** | ○ |

## Documentation

Visit the `aws-sdk-swift` [documentation](http://htmlpreview.github.io/?https://github.com/swift-aws/aws-sdk-swift/gh-pages/index.html) for instructions and browsing api references.

## Installation

### Swift Package Manager

Package.swift

```swift
import PackageDescription

let package = Package(
    name: "MyAWSApp",
    dependencies: [
        .package(url: "https://github.com/swift-aws/aws-sdk-swift.git", from: "2.0.0")
    ],
    targets: [
      .target(
          name: "MyAWSApp",
          dependencies: ["S3", "SES", "CloudFront", "ELBV2", "IAM", "Kinesis"]),
      .testTarget(
          name: "MyAWSToolTests",
          dependencies: ["MyAWSApp"]),
    ]
)
```

### Carthage
Not supported yet

### Cocoapods
Not supported yet

## Contributing

All developers should feel welcome and encouraged to contribute to `aws-sdk-swift`.

As contributors and maintainers of this project, and in the interest of fostering an open and welcoming community, we pledge to respect all people who contribute through reporting issues, posting feature requests, updating documentation, submitting pull requests or patches, and other activities.

To contribute a feature or idea to `aws-sdk-swift`, submit an issue and fill in the template. If the request is approved, you or one of the members of the community can start working on it.

If you find a bug, please submit a pull request with a failing test case displaying the bug or create an issue.

If you find a security vulnerability, please contact <yuki@miketokyo.com> and reach out on the [**#aws** channel on the Vapor Discord](https://discordapp.com/channels/431917998102675485/472522745067077632) as soon as possible. We take these matters seriously.

## Configuring Credentials

Before using the SDK, ensure that you've configured credentials.

### Via EC2 Instance Profile

If you are running your code on an AWS EC2 instance, you [can setup an IAM role as the server's Instance Profile](https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-iam-instance-profile.html) to automatically grant credentials via the metadata service.

There are no code changes or configurations to specify in the code, it will automatically pull and use them.

## Via ECS Container credentials

If you are running your code as an AWS ECS container task, you [can setup an IAM role for your container task](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html#create_task_iam_policy_and_role) to automatically grant credentials via the metadata service.

There are no code changes or configurations to specify in the code, it will automatically pull and use them.

### Load Credentials from shared credential file.

You can [set shared credentials in the home directory for the user running the app](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/create-shared-credentials-file.html)

in ~/.aws/credentials,

```
[default]
aws_access_key_id = YOUR_AWS_ACCESS_KEY_ID
aws_secret_access_key = YOUR_AWS_SECRET_ACCESS_KEY
```

### Load Credentials from Environment Variable

Alternatively, you can set the following environment variables:

```
AWS_ACCESS_KEY_ID=YOUR_AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY=YOUR_AWS_SECRET_ACCESS_KEY
```

### Pass the Credentials to the AWS Service struct directly

All of the AWS Services's initializers accept `accessKeyId` and `secretAccessKey`

```swift
let ec2 = EC2(
    accessKeyId: "YOUR_AWS_ACCESS_KEY_ID",
    secretAccessKey: "YOUR_AWS_SECRET_ACCESS_KEY"
)
```

## Using the `aws-sdk-swift`

```swift
import S3 //ensure this module is specified as a dependency in your package.swift

do {
    let bucket = "my-bucket"

    let s3 = S3(
        accessKeyId: "Your-Access-Key",
        secretAccessKey: "Your-Secret-Key",
        region: .apnortheast1
    )

    // Create Bucket
    let createBucketRequest = S3.CreateBucketRequest(bucket: bucket)
    _ try s3.createBucket(createBucketRequest)

    // Upload text file to the s3
    let bodyData = "hello world".data(using: .utf8)!
    let putObjectRequest = S3.PutObjectRequest(bucket: bucket, contentLength: Int64(bodyData.count), key: "hello.txt", body: bodyData, acl: .publicRead)
    _ = try s3.putObject(putObjectRequest)

    // Get text file from s3
    let getObjectRequest = S3.GetObjectRequest(bucket: bucket, key: "hello.txt")
    let getObjectOutput = try s3.getObject(getObjectRequest)
    if let body = getObjectOutput.body {
      print(String(data: body, encoding: .utf8))
    }
} catch {
    print(error)
}
```

## Speed Up Compilation

By specifying only those modules necessary for your application, only theoe modules will compile which makes for fast compilation.

If you want to create a module for your service, you can try using the module-exporter to build a separate repo for any of the modules.

## License
`aws-sdk-swift` is released under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0). See LICENSE for details.
