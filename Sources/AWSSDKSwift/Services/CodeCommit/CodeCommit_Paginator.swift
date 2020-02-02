// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension CodeCommit {

    ///  Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy. If the merge option for the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.
    public func describeMergeConflictsPaginator(_ input: DescribeMergeConflictsInput, onPage: @escaping (DescribeMergeConflictsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeMergeConflicts, tokenKey: \DescribeMergeConflictsOutput.nextToken, onPage: onPage)
    }

    ///  Returns information about one or more pull request events.
    public func describePullRequestEventsPaginator(_ input: DescribePullRequestEventsInput, onPage: @escaping (DescribePullRequestEventsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describePullRequestEvents, tokenKey: \DescribePullRequestEventsOutput.nextToken, onPage: onPage)
    }

    ///  Returns information about comments made on the comparison between two commits.
    public func getCommentsForComparedCommitPaginator(_ input: GetCommentsForComparedCommitInput, onPage: @escaping (GetCommentsForComparedCommitOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getCommentsForComparedCommit, tokenKey: \GetCommentsForComparedCommitOutput.nextToken, onPage: onPage)
    }

    ///  Returns comments made on a pull request.
    public func getCommentsForPullRequestPaginator(_ input: GetCommentsForPullRequestInput, onPage: @escaping (GetCommentsForPullRequestOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getCommentsForPullRequest, tokenKey: \GetCommentsForPullRequestOutput.nextToken, onPage: onPage)
    }

    ///  Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference). Results can be limited to a specified path.
    public func getDifferencesPaginator(_ input: GetDifferencesInput, onPage: @escaping (GetDifferencesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getDifferences, tokenKey: \GetDifferencesOutput.nextToken, onPage: onPage)
    }

    ///  Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.
    public func getMergeConflictsPaginator(_ input: GetMergeConflictsInput, onPage: @escaping (GetMergeConflictsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getMergeConflicts, tokenKey: \GetMergeConflictsOutput.nextToken, onPage: onPage)
    }

    ///  Lists all approval rule templates in the specified AWS Region in your AWS account. If an AWS Region is not specified, the AWS Region where you are signed in is used.
    public func listApprovalRuleTemplatesPaginator(_ input: ListApprovalRuleTemplatesInput, onPage: @escaping (ListApprovalRuleTemplatesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApprovalRuleTemplates, tokenKey: \ListApprovalRuleTemplatesOutput.nextToken, onPage: onPage)
    }

    ///  Lists all approval rule templates that are associated with a specified repository.
    public func listAssociatedApprovalRuleTemplatesForRepositoryPaginator(_ input: ListAssociatedApprovalRuleTemplatesForRepositoryInput, onPage: @escaping (ListAssociatedApprovalRuleTemplatesForRepositoryOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAssociatedApprovalRuleTemplatesForRepository, tokenKey: \ListAssociatedApprovalRuleTemplatesForRepositoryOutput.nextToken, onPage: onPage)
    }

    ///  Gets information about one or more branches in a repository.
    public func listBranchesPaginator(_ input: ListBranchesInput, onPage: @escaping (ListBranchesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBranches, tokenKey: \ListBranchesOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.
    public func listPullRequestsPaginator(_ input: ListPullRequestsInput, onPage: @escaping (ListPullRequestsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPullRequests, tokenKey: \ListPullRequestsOutput.nextToken, onPage: onPage)
    }

    ///  Gets information about one or more repositories.
    public func listRepositoriesPaginator(_ input: ListRepositoriesInput, onPage: @escaping (ListRepositoriesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRepositories, tokenKey: \ListRepositoriesOutput.nextToken, onPage: onPage)
    }

    ///  Lists all repositories associated with the specified approval rule template.
    public func listRepositoriesForApprovalRuleTemplatePaginator(_ input: ListRepositoriesForApprovalRuleTemplateInput, onPage: @escaping (ListRepositoriesForApprovalRuleTemplateOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRepositoriesForApprovalRuleTemplate, tokenKey: \ListRepositoriesForApprovalRuleTemplateOutput.nextToken, onPage: onPage)
    }

}

extension CodeCommit.DescribeMergeConflictsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.DescribeMergeConflictsInput {
        return .init(
            conflictDetailLevel: self.conflictDetailLevel, 
            conflictResolutionStrategy: self.conflictResolutionStrategy, 
            destinationCommitSpecifier: self.destinationCommitSpecifier, 
            filePath: self.filePath, 
            maxMergeHunks: self.maxMergeHunks, 
            mergeOption: self.mergeOption, 
            nextToken: token, 
            repositoryName: self.repositoryName, 
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )

    }
}

extension CodeCommit.DescribePullRequestEventsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.DescribePullRequestEventsInput {
        return .init(
            actorArn: self.actorArn, 
            maxResults: self.maxResults, 
            nextToken: token, 
            pullRequestEventType: self.pullRequestEventType, 
            pullRequestId: self.pullRequestId
        )

    }
}

extension CodeCommit.GetCommentsForComparedCommitInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetCommentsForComparedCommitInput {
        return .init(
            afterCommitId: self.afterCommitId, 
            beforeCommitId: self.beforeCommitId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            repositoryName: self.repositoryName
        )

    }
}

extension CodeCommit.GetCommentsForPullRequestInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetCommentsForPullRequestInput {
        return .init(
            afterCommitId: self.afterCommitId, 
            beforeCommitId: self.beforeCommitId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            pullRequestId: self.pullRequestId, 
            repositoryName: self.repositoryName
        )

    }
}

extension CodeCommit.GetDifferencesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetDifferencesInput {
        return .init(
            afterCommitSpecifier: self.afterCommitSpecifier, 
            afterPath: self.afterPath, 
            beforeCommitSpecifier: self.beforeCommitSpecifier, 
            beforePath: self.beforePath, 
            maxResults: self.maxResults, 
            nextToken: token, 
            repositoryName: self.repositoryName
        )

    }
}

extension CodeCommit.GetMergeConflictsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetMergeConflictsInput {
        return .init(
            conflictDetailLevel: self.conflictDetailLevel, 
            conflictResolutionStrategy: self.conflictResolutionStrategy, 
            destinationCommitSpecifier: self.destinationCommitSpecifier, 
            maxConflictFiles: self.maxConflictFiles, 
            mergeOption: self.mergeOption, 
            nextToken: token, 
            repositoryName: self.repositoryName, 
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )

    }
}

extension CodeCommit.ListApprovalRuleTemplatesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListApprovalRuleTemplatesInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension CodeCommit.ListAssociatedApprovalRuleTemplatesForRepositoryInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListAssociatedApprovalRuleTemplatesForRepositoryInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            repositoryName: self.repositoryName
        )

    }
}

extension CodeCommit.ListBranchesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListBranchesInput {
        return .init(
            nextToken: token, 
            repositoryName: self.repositoryName
        )

    }
}

extension CodeCommit.ListPullRequestsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListPullRequestsInput {
        return .init(
            authorArn: self.authorArn, 
            maxResults: self.maxResults, 
            nextToken: token, 
            pullRequestStatus: self.pullRequestStatus, 
            repositoryName: self.repositoryName
        )

    }
}

extension CodeCommit.ListRepositoriesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListRepositoriesInput {
        return .init(
            nextToken: token, 
            order: self.order, 
            sortBy: self.sortBy
        )

    }
}

extension CodeCommit.ListRepositoriesForApprovalRuleTemplateInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListRepositoriesForApprovalRuleTemplateInput {
        return .init(
            approvalRuleTemplateName: self.approvalRuleTemplateName, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

