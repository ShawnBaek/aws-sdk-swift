// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Mechanical Turk API Reference
*/
public struct MTurk {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "MTurkRequesterServiceV20170117",
            service: "mturk-requester",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-01-17",
            endpoint: endpoint,
            serviceEndpoints: ["sandbox": "mturk-requester-sandbox.us-east-1.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [MTurkErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///   The AcceptQualificationRequest operation approves a Worker's request for a Qualification.   Only the owner of the Qualification type can grant a Qualification request for that type.   A successful request for the AcceptQualificationRequest operation returns with no errors and an empty body. 
    public func acceptQualificationRequest(_ input: AcceptQualificationRequestRequest) -> Future<AcceptQualificationRequestResponse> {
        return client.send(operation: "AcceptQualificationRequest", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ApproveAssignment operation approves the results of a completed assignment.   Approving an assignment initiates two payments from the Requester's Amazon.com account     The Worker who submitted the results is paid the reward specified in the HIT.     Amazon Mechanical Turk fees are debited.     If the Requester's account does not have adequate funds for these payments, the call to ApproveAssignment returns an exception, and the approval is not processed. You can include an optional feedback message with the approval, which the Worker can see in the Status section of the web site.   You can also call this operation for assignments that were previous rejected and approve them by explicitly overriding the previous rejection. This only works on rejected assignments that were submitted within the previous 30 days and only if the assignment's related HIT has not been deleted. 
    public func approveAssignment(_ input: ApproveAssignmentRequest) -> Future<ApproveAssignmentResponse> {
        return client.send(operation: "ApproveAssignment", path: "/", httpMethod: "POST", input: input)
    }

    ///   The AssociateQualificationWithWorker operation gives a Worker a Qualification. AssociateQualificationWithWorker does not require that the Worker submit a Qualification request. It gives the Qualification directly to the Worker.   You can only assign a Qualification of a Qualification type that you created (using the CreateQualificationType operation).    Note: AssociateQualificationWithWorker does not affect any pending Qualification requests for the Qualification by the Worker. If you assign a Qualification to a Worker, then later grant a Qualification request made by the Worker, the granting of the request may modify the Qualification score. To resolve a pending Qualification request without affecting the Qualification the Worker already has, reject the request with the RejectQualificationRequest operation.  
    public func associateQualificationWithWorker(_ input: AssociateQualificationWithWorkerRequest) -> Future<AssociateQualificationWithWorkerResponse> {
        return client.send(operation: "AssociateQualificationWithWorker", path: "/", httpMethod: "POST", input: input)
    }

    ///   The CreateAdditionalAssignmentsForHIT operation increases the maximum number of assignments of an existing HIT.   To extend the maximum number of assignments, specify the number of additional assignments.    HITs created with fewer than 10 assignments cannot be extended to have 10 or more assignments. Attempting to add assignments in a way that brings the total number of assignments for a HIT from fewer than 10 assignments to 10 or more assignments will result in an AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease exception.   HITs that were created before July 22, 2015 cannot be extended. Attempting to extend HITs that were created before July 22, 2015 will result in an AWS.MechanicalTurk.HITTooOldForExtension exception.    
    public func createAdditionalAssignmentsForHIT(_ input: CreateAdditionalAssignmentsForHITRequest) -> Future<CreateAdditionalAssignmentsForHITResponse> {
        return client.send(operation: "CreateAdditionalAssignmentsForHIT", path: "/", httpMethod: "POST", input: input)
    }

    ///  The CreateHIT operation creates a new Human Intelligence Task (HIT). The new HIT is made available for Workers to find and accept on the Amazon Mechanical Turk website.   This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to CreateHIT, a new HIT is created for you, with a new HITTypeID. The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.  An alternative way to create HITs is to first generate a HITTypeID using the CreateHITType operation and then call the CreateHITWithHITType operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.  CreateHIT also supports several ways to provide question data: by providing a value for the Question parameter that fully specifies the contents of the HIT, or by providing a HitLayoutId and associated HitLayoutParameters.    If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see Amazon Mechanical Turk Pricing. 
    public func createHIT(_ input: CreateHITRequest) -> Future<CreateHITResponse> {
        return client.send(operation: "CreateHIT", path: "/", httpMethod: "POST", input: input)
    }

    ///   The CreateHITType operation creates a new HIT type. This operation allows you to define a standard set of HIT properties to use when creating HITs. If you register a HIT type with values that match an existing HIT type, the HIT type ID of the existing type will be returned. 
    public func createHITType(_ input: CreateHITTypeRequest) -> Future<CreateHITTypeResponse> {
        return client.send(operation: "CreateHITType", path: "/", httpMethod: "POST", input: input)
    }

    ///   The CreateHITWithHITType operation creates a new Human Intelligence Task (HIT) using an existing HITTypeID generated by the CreateHITType operation.   This is an alternative way to create HITs from the CreateHIT operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.  CreateHITWithHITType also supports several ways to provide question data: by providing a value for the Question parameter that fully specifies the contents of the HIT, or by providing a HitLayoutId and associated HitLayoutParameters.    If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see Amazon Mechanical Turk Pricing.  
    public func createHITWithHITType(_ input: CreateHITWithHITTypeRequest) -> Future<CreateHITWithHITTypeResponse> {
        return client.send(operation: "CreateHITWithHITType", path: "/", httpMethod: "POST", input: input)
    }

    ///   The CreateQualificationType operation creates a new Qualification type, which is represented by a QualificationType data structure. 
    public func createQualificationType(_ input: CreateQualificationTypeRequest) -> Future<CreateQualificationTypeResponse> {
        return client.send(operation: "CreateQualificationType", path: "/", httpMethod: "POST", input: input)
    }

    ///  The CreateWorkerBlock operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.
    public func createWorkerBlock(_ input: CreateWorkerBlockRequest) -> Future<CreateWorkerBlockResponse> {
        return client.send(operation: "CreateWorkerBlock", path: "/", httpMethod: "POST", input: input)
    }

    ///   The DeleteHIT operation is used to delete HIT that is no longer needed. Only the Requester who created the HIT can delete it.   You can only dispose of HITs that are in the Reviewable state, with all of their submitted assignments already either approved or rejected. If you call the DeleteHIT operation on a HIT that is not in the Reviewable state (for example, that has not expired, or still has active assignments), or on a HIT that is Reviewable but without all of its submitted assignments already approved or rejected, the service will return an error.      HITs are automatically disposed of after 120 days.     After you dispose of a HIT, you can no longer approve the HIT's rejected assignments.     Disposed HITs are not returned in results for the ListHITs operation.     Disposing HITs can improve the performance of operations such as ListReviewableHITs and ListHITs.    
    public func deleteHIT(_ input: DeleteHITRequest) -> Future<DeleteHITResponse> {
        return client.send(operation: "DeleteHIT", path: "/", httpMethod: "POST", input: input)
    }

    ///   The DeleteQualificationType deletes a Qualification type and deletes any HIT types that are associated with the Qualification type.  This operation does not revoke Qualifications already assigned to Workers because the Qualifications might be needed for active HITs. If there are any pending requests for the Qualification type, Amazon Mechanical Turk rejects those requests. After you delete a Qualification type, you can no longer use it to create HITs or HIT types.  DeleteQualificationType must wait for all the HITs that use the deleted Qualification type to be deleted before completing. It may take up to 48 hours before DeleteQualificationType completes and the unique name of the Qualification type is available for reuse with CreateQualificationType. 
    public func deleteQualificationType(_ input: DeleteQualificationTypeRequest) -> Future<DeleteQualificationTypeResponse> {
        return client.send(operation: "DeleteQualificationType", path: "/", httpMethod: "POST", input: input)
    }

    ///  The DeleteWorkerBlock operation allows you to reinstate a blocked Worker to work on your HITs. This operation reverses the effects of the CreateWorkerBlock operation. You need the Worker ID to use this operation. If the Worker ID is missing or invalid, this operation fails and returns the message “WorkerId is invalid.” If the specified Worker is not blocked, this operation returns successfully.
    public func deleteWorkerBlock(_ input: DeleteWorkerBlockRequest) -> Future<DeleteWorkerBlockResponse> {
        return client.send(operation: "DeleteWorkerBlock", path: "/", httpMethod: "POST", input: input)
    }

    ///   The DisassociateQualificationFromWorker revokes a previously granted Qualification from a user.   You can provide a text message explaining why the Qualification was revoked. The user who had the Qualification can see this message. 
    public func disassociateQualificationFromWorker(_ input: DisassociateQualificationFromWorkerRequest) -> Future<DisassociateQualificationFromWorkerResponse> {
        return client.send(operation: "DisassociateQualificationFromWorker", path: "/", httpMethod: "POST", input: input)
    }

    ///  The GetAccountBalance operation retrieves the amount of money in your Amazon Mechanical Turk account.
    public func getAccountBalance(_ input: GetAccountBalanceRequest) -> Future<GetAccountBalanceResponse> {
        return client.send(operation: "GetAccountBalance", path: "/", httpMethod: "POST", input: input)
    }

    ///   The GetAssignment operation retrieves the details of the specified Assignment. 
    public func getAssignment(_ input: GetAssignmentRequest) -> Future<GetAssignmentResponse> {
        return client.send(operation: "GetAssignment", path: "/", httpMethod: "POST", input: input)
    }

    ///   The GetFileUploadURL operation generates and returns a temporary URL. You use the temporary URL to retrieve a file uploaded by a Worker as an answer to a FileUploadAnswer question for a HIT. The temporary URL is generated the instant the GetFileUploadURL operation is called, and is valid for 60 seconds. You can get a temporary file upload URL any time until the HIT is disposed. After the HIT is disposed, any uploaded files are deleted, and cannot be retrieved. Pending Deprecation on December 12, 2017. The Answer Specification structure will no longer support the FileUploadAnswer element to be used for the QuestionForm data structure. Instead, we recommend that Requesters who want to create HITs asking Workers to upload files to use Amazon S3. 
    public func getFileUploadURL(_ input: GetFileUploadURLRequest) -> Future<GetFileUploadURLResponse> {
        return client.send(operation: "GetFileUploadURL", path: "/", httpMethod: "POST", input: input)
    }

    ///   The GetHIT operation retrieves the details of the specified HIT. 
    public func getHIT(_ input: GetHITRequest) -> Future<GetHITResponse> {
        return client.send(operation: "GetHIT", path: "/", httpMethod: "POST", input: input)
    }

    ///   The GetQualificationScore operation returns the value of a Worker's Qualification for a given Qualification type.   To get a Worker's Qualification, you must know the Worker's ID. The Worker's ID is included in the assignment data returned by the ListAssignmentsForHIT operation.  Only the owner of a Qualification type can query the value of a Worker's Qualification of that type.
    public func getQualificationScore(_ input: GetQualificationScoreRequest) -> Future<GetQualificationScoreResponse> {
        return client.send(operation: "GetQualificationScore", path: "/", httpMethod: "POST", input: input)
    }

    ///   The GetQualificationTypeoperation retrieves information about a Qualification type using its ID. 
    public func getQualificationType(_ input: GetQualificationTypeRequest) -> Future<GetQualificationTypeResponse> {
        return client.send(operation: "GetQualificationType", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListAssignmentsForHIT operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT.   You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation.   Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set.   Only the Requester who created the HIT can retrieve the assignments for that HIT.   Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination. 
    public func listAssignmentsForHIT(_ input: ListAssignmentsForHITRequest) -> Future<ListAssignmentsForHITResponse> {
        return client.send(operation: "ListAssignmentsForHIT", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListBonusPayments operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment. 
    public func listBonusPayments(_ input: ListBonusPaymentsRequest) -> Future<ListBonusPaymentsResponse> {
        return client.send(operation: "ListBonusPayments", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListHITs operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted. 
    public func listHITs(_ input: ListHITsRequest) -> Future<ListHITsResponse> {
        return client.send(operation: "ListHITs", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListHITsForQualificationType operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the DeleteHIT operation or that have been auto-deleted. 
    public func listHITsForQualificationType(_ input: ListHITsForQualificationTypeRequest) -> Future<ListHITsForQualificationTypeResponse> {
        return client.send(operation: "ListHITsForQualificationType", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListQualificationRequests operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation. 
    public func listQualificationRequests(_ input: ListQualificationRequestsRequest) -> Future<ListQualificationRequestsResponse> {
        return client.send(operation: "ListQualificationRequests", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListQualificationTypes operation returns a list of Qualification types, filtered by an optional search term. 
    public func listQualificationTypes(_ input: ListQualificationTypesRequest) -> Future<ListQualificationTypesResponse> {
        return client.send(operation: "ListQualificationTypes", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListReviewPolicyResultsForHIT operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results. 
    public func listReviewPolicyResultsForHIT(_ input: ListReviewPolicyResultsForHITRequest) -> Future<ListReviewPolicyResultsForHITResponse> {
        return client.send(operation: "ListReviewPolicyResultsForHIT", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListReviewableHITs operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation. 
    public func listReviewableHITs(_ input: ListReviewableHITsRequest) -> Future<ListReviewableHITsResponse> {
        return client.send(operation: "ListReviewableHITs", path: "/", httpMethod: "POST", input: input)
    }

    ///  The ListWorkersBlocks operation retrieves a list of Workers who are blocked from working on your HITs.
    public func listWorkerBlocks(_ input: ListWorkerBlocksRequest) -> Future<ListWorkerBlocksResponse> {
        return client.send(operation: "ListWorkerBlocks", path: "/", httpMethod: "POST", input: input)
    }

    ///   The ListWorkersWithQualificationType operation returns all of the Workers that have been associated with a given Qualification type. 
    public func listWorkersWithQualificationType(_ input: ListWorkersWithQualificationTypeRequest) -> Future<ListWorkersWithQualificationTypeResponse> {
        return client.send(operation: "ListWorkersWithQualificationType", path: "/", httpMethod: "POST", input: input)
    }

    ///   The NotifyWorkers operation sends an email to one or more Workers that you specify with the Worker ID. You can specify up to 100 Worker IDs to send the same message with a single call to the NotifyWorkers operation. The NotifyWorkers operation will send a notification email to a Worker only if you have previously approved or rejected work from the Worker. 
    public func notifyWorkers(_ input: NotifyWorkersRequest) -> Future<NotifyWorkersResponse> {
        return client.send(operation: "NotifyWorkers", path: "/", httpMethod: "POST", input: input)
    }

    ///   The RejectAssignment operation rejects the results of a completed assignment.   You can include an optional feedback message with the rejection, which the Worker can see in the Status section of the web site. When you include a feedback message with the rejection, it helps the Worker understand why the assignment was rejected, and can improve the quality of the results the Worker submits in the future.   Only the Requester who created the HIT can reject an assignment for the HIT. 
    public func rejectAssignment(_ input: RejectAssignmentRequest) -> Future<RejectAssignmentResponse> {
        return client.send(operation: "RejectAssignment", path: "/", httpMethod: "POST", input: input)
    }

    ///   The RejectQualificationRequest operation rejects a user's request for a Qualification.   You can provide a text message explaining why the request was rejected. The Worker who made the request can see this message.
    public func rejectQualificationRequest(_ input: RejectQualificationRequestRequest) -> Future<RejectQualificationRequestResponse> {
        return client.send(operation: "RejectQualificationRequest", path: "/", httpMethod: "POST", input: input)
    }

    ///   The SendBonus operation issues a payment of money from your account to a Worker. This payment happens separately from the reward you pay to the Worker when you approve the Worker's assignment. The SendBonus operation requires the Worker's ID and the assignment ID as parameters to initiate payment of the bonus. You must include a message that explains the reason for the bonus payment, as the Worker may not be expecting the payment. Amazon Mechanical Turk collects a fee for bonus payments, similar to the HIT listing fee. This operation fails if your account does not have enough funds to pay for both the bonus and the fees. 
    public func sendBonus(_ input: SendBonusRequest) -> Future<SendBonusResponse> {
        return client.send(operation: "SendBonus", path: "/", httpMethod: "POST", input: input)
    }

    ///   The SendTestEventNotification operation causes Amazon Mechanical Turk to send a notification message as if a HIT event occurred, according to the provided notification specification. This allows you to test notifications without setting up notifications for a real HIT type and trying to trigger them using the website. When you call this operation, the service attempts to send the test notification immediately. 
    public func sendTestEventNotification(_ input: SendTestEventNotificationRequest) -> Future<SendTestEventNotificationResponse> {
        return client.send(operation: "SendTestEventNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///   The UpdateExpirationForHIT operation allows you update the expiration time of a HIT. If you update it to a time in the past, the HIT will be immediately expired. 
    public func updateExpirationForHIT(_ input: UpdateExpirationForHITRequest) -> Future<UpdateExpirationForHITResponse> {
        return client.send(operation: "UpdateExpirationForHIT", path: "/", httpMethod: "POST", input: input)
    }

    ///   The UpdateHITReviewStatus operation updates the status of a HIT. If the status is Reviewable, this operation can update the status to Reviewing, or it can revert a Reviewing HIT back to the Reviewable status. 
    public func updateHITReviewStatus(_ input: UpdateHITReviewStatusRequest) -> Future<UpdateHITReviewStatusResponse> {
        return client.send(operation: "UpdateHITReviewStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///   The UpdateHITTypeOfHIT operation allows you to change the HITType properties of a HIT. This operation disassociates the HIT from its old HITType properties and associates it with the new HITType properties. The HIT takes on the properties of the new HITType in place of the old ones. 
    public func updateHITTypeOfHIT(_ input: UpdateHITTypeOfHITRequest) -> Future<UpdateHITTypeOfHITResponse> {
        return client.send(operation: "UpdateHITTypeOfHIT", path: "/", httpMethod: "POST", input: input)
    }

    ///   The UpdateNotificationSettings operation creates, updates, disables or re-enables notifications for a HIT type. If you call the UpdateNotificationSettings operation for a HIT type that already has a notification specification, the operation replaces the old specification with a new one. You can call the UpdateNotificationSettings operation to enable or disable notifications for the HIT type, without having to modify the notification specification itself by providing updates to the Active status without specifying a new notification specification. To change the Active status of a HIT type's notifications, the HIT type must already have a notification specification, or one must be provided in the same call to UpdateNotificationSettings. 
    public func updateNotificationSettings(_ input: UpdateNotificationSettingsRequest) -> Future<UpdateNotificationSettingsResponse> {
        return client.send(operation: "UpdateNotificationSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///   The UpdateQualificationType operation modifies the attributes of an existing Qualification type, which is represented by a QualificationType data structure. Only the owner of a Qualification type can modify its attributes.   Most attributes of a Qualification type can be changed after the type has been created. However, the Name and Keywords fields cannot be modified. The RetryDelayInSeconds parameter can be modified or added to change the delay or to enable retries, but RetryDelayInSeconds cannot be used to disable retries.   You can use this operation to update the test for a Qualification type. The test is updated based on the values specified for the Test, TestDurationInSeconds and AnswerKey parameters. All three parameters specify the updated test. If you are updating the test for a type, you must specify the Test and TestDurationInSeconds parameters. The AnswerKey parameter is optional; omitting it specifies that the updated test does not have an answer key.   If you omit the Test parameter, the test for the Qualification type is unchanged. There is no way to remove a test from a Qualification type that has one. If the type already has a test, you cannot update it to be AutoGranted. If the Qualification type does not have a test and one is provided by an update, the type will henceforth have a test.   If you want to update the test duration or answer key for an existing test without changing the questions, you must specify a Test parameter with the original questions, along with the updated values.   If you provide an updated Test but no AnswerKey, the new test will not have an answer key. Requests for such Qualifications must be granted manually.   You can also update the AutoGranted and AutoGrantedValue attributes of the Qualification type.
    public func updateQualificationType(_ input: UpdateQualificationTypeRequest) -> Future<UpdateQualificationTypeResponse> {
        return client.send(operation: "UpdateQualificationType", path: "/", httpMethod: "POST", input: input)
    }
}
