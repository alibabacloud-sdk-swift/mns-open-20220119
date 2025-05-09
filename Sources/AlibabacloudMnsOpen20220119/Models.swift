import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class EventMatchRule : Tea.TeaModel {
    public var matchState: Bool?

    public var name: String?

    public var prefix_: String?

    public var suffix: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchState != nil {
            map["MatchState"] = self.matchState!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.suffix != nil {
            map["Suffix"] = self.suffix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MatchState") {
            self.matchState = dict["MatchState"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Prefix") {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("Suffix") {
            self.suffix = dict["Suffix"] as! String
        }
    }
}

public class AuthorizeEndpointAclRequest : Tea.TeaModel {
    public var aclStrategy: String?

    public var cidrList: [String]?

    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclStrategy != nil {
            map["AclStrategy"] = self.aclStrategy!
        }
        if self.cidrList != nil {
            map["CidrList"] = self.cidrList!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclStrategy") {
            self.aclStrategy = dict["AclStrategy"] as! String
        }
        if dict.keys.contains("CidrList") {
            self.cidrList = dict["CidrList"] as! [String]
        }
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
    }
}

public class AuthorizeEndpointAclShrinkRequest : Tea.TeaModel {
    public var aclStrategy: String?

    public var cidrListShrink: String?

    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclStrategy != nil {
            map["AclStrategy"] = self.aclStrategy!
        }
        if self.cidrListShrink != nil {
            map["CidrList"] = self.cidrListShrink!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclStrategy") {
            self.aclStrategy = dict["AclStrategy"] as! String
        }
        if dict.keys.contains("CidrList") {
            self.cidrListShrink = dict["CidrList"] as! String
        }
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
    }
}

public class AuthorizeEndpointAclResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AuthorizeEndpointAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeEndpointAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AuthorizeEndpointAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEventRuleRequest : Tea.TeaModel {
    public class Endpoints : Tea.TeaModel {
        public var endpointType: String?

        public var endpointValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.endpointValue != nil {
                map["EndpointValue"] = self.endpointValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointType") {
                self.endpointType = dict["EndpointType"] as! String
            }
            if dict.keys.contains("EndpointValue") {
                self.endpointValue = dict["EndpointValue"] as! String
            }
        }
    }
    public var endpoints: [CreateEventRuleRequest.Endpoints]?

    public var eventTypes: [String]?

    public var matchRules: [[EventMatchRule]]?

    public var productName: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["Endpoints"] = tmp
        }
        if self.eventTypes != nil {
            map["EventTypes"] = self.eventTypes!
        }
        if self.matchRules != nil {
            var tmp : [Any] = []
            for k in self.matchRules! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["MatchRules"] = tmp
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Endpoints") {
            var tmp : [CreateEventRuleRequest.Endpoints] = []
            for v in dict["Endpoints"] as! [Any] {
                var model = CreateEventRuleRequest.Endpoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.endpoints = tmp
        }
        if dict.keys.contains("EventTypes") {
            self.eventTypes = dict["EventTypes"] as! [String]
        }
        if dict.keys.contains("MatchRules") {
            var tmp : [[EventMatchRule]] = []
            for v in dict["MatchRules"] as! [Any] {
                var l1 : [EventMatchRule] = []
                for v1 in v as! [Any] {
                    var model = EventMatchRule()
                    if v1 != nil {
                        model.fromMap(v1 as! [String: Any])
                    }
                    l1.append(model)
                }
                tmp.append(l1)
            }
            self.matchRules = tmp
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
    }
}

public class CreateEventRuleShrinkRequest : Tea.TeaModel {
    public var endpointsShrink: String?

    public var eventTypesShrink: String?

    public var matchRulesShrink: String?

    public var productName: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointsShrink != nil {
            map["Endpoints"] = self.endpointsShrink!
        }
        if self.eventTypesShrink != nil {
            map["EventTypes"] = self.eventTypesShrink!
        }
        if self.matchRulesShrink != nil {
            map["MatchRules"] = self.matchRulesShrink!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Endpoints") {
            self.endpointsShrink = dict["Endpoints"] as! String
        }
        if dict.keys.contains("EventTypes") {
            self.eventTypesShrink = dict["EventTypes"] as! String
        }
        if dict.keys.contains("MatchRules") {
            self.matchRulesShrink = dict["MatchRules"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
    }
}

public class CreateEventRuleResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEventRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateQueueRequest : Tea.TeaModel {
    public class DlqPolicy : Tea.TeaModel {
        public var deadLetterTargetQueue: String?

        public var enabled: Bool?

        public var maxReceiveCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadLetterTargetQueue != nil {
                map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.maxReceiveCount != nil {
                map["MaxReceiveCount"] = self.maxReceiveCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeadLetterTargetQueue") {
                self.deadLetterTargetQueue = dict["DeadLetterTargetQueue"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("MaxReceiveCount") {
                self.maxReceiveCount = dict["MaxReceiveCount"] as! Int32
            }
        }
    }
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var delaySeconds: Int64?

    public var dlqPolicy: CreateQueueRequest.DlqPolicy?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

    public var tag: [CreateQueueRequest.Tag]?

    public var visibilityTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlqPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delaySeconds != nil {
            map["DelaySeconds"] = self.delaySeconds!
        }
        if self.dlqPolicy != nil {
            map["DlqPolicy"] = self.dlqPolicy?.toMap()
        }
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maximumMessageSize != nil {
            map["MaximumMessageSize"] = self.maximumMessageSize!
        }
        if self.messageRetentionPeriod != nil {
            map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
        }
        if self.pollingWaitSeconds != nil {
            map["PollingWaitSeconds"] = self.pollingWaitSeconds!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelaySeconds") {
            self.delaySeconds = dict["DelaySeconds"] as! Int64
        }
        if dict.keys.contains("DlqPolicy") {
            var model = CreateQueueRequest.DlqPolicy()
            model.fromMap(dict["DlqPolicy"] as! [String: Any])
            self.dlqPolicy = model
        }
        if dict.keys.contains("EnableLogging") {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaximumMessageSize") {
            self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
        }
        if dict.keys.contains("MessageRetentionPeriod") {
            self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
        }
        if dict.keys.contains("PollingWaitSeconds") {
            self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateQueueRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateQueueRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VisibilityTimeout") {
            self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
        }
    }
}

public class CreateQueueShrinkRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var delaySeconds: Int64?

    public var dlqPolicyShrink: String?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

    public var tag: [CreateQueueShrinkRequest.Tag]?

    public var visibilityTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delaySeconds != nil {
            map["DelaySeconds"] = self.delaySeconds!
        }
        if self.dlqPolicyShrink != nil {
            map["DlqPolicy"] = self.dlqPolicyShrink!
        }
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maximumMessageSize != nil {
            map["MaximumMessageSize"] = self.maximumMessageSize!
        }
        if self.messageRetentionPeriod != nil {
            map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
        }
        if self.pollingWaitSeconds != nil {
            map["PollingWaitSeconds"] = self.pollingWaitSeconds!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelaySeconds") {
            self.delaySeconds = dict["DelaySeconds"] as! Int64
        }
        if dict.keys.contains("DlqPolicy") {
            self.dlqPolicyShrink = dict["DlqPolicy"] as! String
        }
        if dict.keys.contains("EnableLogging") {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaximumMessageSize") {
            self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
        }
        if dict.keys.contains("MessageRetentionPeriod") {
            self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
        }
        if dict.keys.contains("PollingWaitSeconds") {
            self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateQueueShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateQueueShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VisibilityTimeout") {
            self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
        }
    }
}

public class CreateQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: Int64?

    public var data: CreateQueueResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = CreateQueueResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTopicRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var enableLogging: Bool?

    public var maxMessageSize: Int64?

    public var tag: [CreateTopicRequest.Tag]?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maxMessageSize != nil {
            map["MaxMessageSize"] = self.maxMessageSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableLogging") {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaxMessageSize") {
            self.maxMessageSize = dict["MaxMessageSize"] as! Int64
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateTopicRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateTopicRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class CreateTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: Int64?

    public var data: CreateTopicResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = CreateTopicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEventRuleRequest : Tea.TeaModel {
    public var productName: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
    }
}

public class DeleteEventRuleResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteEventRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteQueueRequest : Tea.TeaModel {
    public var queueName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
    }
}

public class DeleteQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: Int64?

    public var data: DeleteQueueResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = DeleteQueueResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTopicRequest : Tea.TeaModel {
    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class DeleteTopicResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableEndpointRequest : Tea.TeaModel {
    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
    }
}

public class DisableEndpointResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DisableEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableEndpointRequest : Tea.TeaModel {
    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
    }
}

public class EnableEndpointResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEndpointAttributeRequest : Tea.TeaModel {
    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
    }
}

public class GetEndpointAttributeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CidrList : Tea.TeaModel {
            public var aclStrategy: String?

            public var cidr: String?

            public var createTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aclStrategy != nil {
                    map["AclStrategy"] = self.aclStrategy!
                }
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclStrategy") {
                    self.aclStrategy = dict["AclStrategy"] as! String
                }
                if dict.keys.contains("Cidr") {
                    self.cidr = dict["Cidr"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
            }
        }
        public var cidrList: [GetEndpointAttributeResponseBody.Data.CidrList]?

        public var endpointEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidrList != nil {
                var tmp : [Any] = []
                for k in self.cidrList! {
                    tmp.append(k.toMap())
                }
                map["CidrList"] = tmp
            }
            if self.endpointEnabled != nil {
                map["EndpointEnabled"] = self.endpointEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CidrList") {
                var tmp : [GetEndpointAttributeResponseBody.Data.CidrList] = []
                for v in dict["CidrList"] as! [Any] {
                    var model = GetEndpointAttributeResponseBody.Data.CidrList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cidrList = tmp
            }
            if dict.keys.contains("EndpointEnabled") {
                self.endpointEnabled = dict["EndpointEnabled"] as! Bool
            }
        }
    }
    public var code: Int64?

    public var data: GetEndpointAttributeResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetEndpointAttributeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetEndpointAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEndpointAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetEndpointAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQueueAttributesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var queueName: String?

    public var tag: [GetQueueAttributesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [GetQueueAttributesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = GetQueueAttributesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class GetQueueAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DlqPolicy : Tea.TeaModel {
            public var deadLetterTargetQueue: String?

            public var enabled: Bool?

            public var maxReceiveCount: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deadLetterTargetQueue != nil {
                    map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.maxReceiveCount != nil {
                    map["MaxReceiveCount"] = self.maxReceiveCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeadLetterTargetQueue") {
                    self.deadLetterTargetQueue = dict["DeadLetterTargetQueue"] as! String
                }
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("MaxReceiveCount") {
                    self.maxReceiveCount = dict["MaxReceiveCount"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var activeMessages: Int64?

        public var createTime: Int64?

        public var delayMessages: Int64?

        public var delaySeconds: Int64?

        public var dlqPolicy: GetQueueAttributesResponseBody.Data.DlqPolicy?

        public var inactiveMessages: Int64?

        public var lastModifyTime: Int64?

        public var loggingEnabled: Bool?

        public var maximumMessageSize: Int64?

        public var messageRetentionPeriod: Int64?

        public var pollingWaitSeconds: Int64?

        public var queueName: String?

        public var tags: [GetQueueAttributesResponseBody.Data.Tags]?

        public var visibilityTimeout: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dlqPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeMessages != nil {
                map["ActiveMessages"] = self.activeMessages!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.delayMessages != nil {
                map["DelayMessages"] = self.delayMessages!
            }
            if self.delaySeconds != nil {
                map["DelaySeconds"] = self.delaySeconds!
            }
            if self.dlqPolicy != nil {
                map["DlqPolicy"] = self.dlqPolicy?.toMap()
            }
            if self.inactiveMessages != nil {
                map["InactiveMessages"] = self.inactiveMessages!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.loggingEnabled != nil {
                map["LoggingEnabled"] = self.loggingEnabled!
            }
            if self.maximumMessageSize != nil {
                map["MaximumMessageSize"] = self.maximumMessageSize!
            }
            if self.messageRetentionPeriod != nil {
                map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
            }
            if self.pollingWaitSeconds != nil {
                map["PollingWaitSeconds"] = self.pollingWaitSeconds!
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.visibilityTimeout != nil {
                map["VisibilityTimeout"] = self.visibilityTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveMessages") {
                self.activeMessages = dict["ActiveMessages"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DelayMessages") {
                self.delayMessages = dict["DelayMessages"] as! Int64
            }
            if dict.keys.contains("DelaySeconds") {
                self.delaySeconds = dict["DelaySeconds"] as! Int64
            }
            if dict.keys.contains("DlqPolicy") {
                var model = GetQueueAttributesResponseBody.Data.DlqPolicy()
                model.fromMap(dict["DlqPolicy"] as! [String: Any])
                self.dlqPolicy = model
            }
            if dict.keys.contains("InactiveMessages") {
                self.inactiveMessages = dict["InactiveMessages"] as! Int64
            }
            if dict.keys.contains("LastModifyTime") {
                self.lastModifyTime = dict["LastModifyTime"] as! Int64
            }
            if dict.keys.contains("LoggingEnabled") {
                self.loggingEnabled = dict["LoggingEnabled"] as! Bool
            }
            if dict.keys.contains("MaximumMessageSize") {
                self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
            }
            if dict.keys.contains("MessageRetentionPeriod") {
                self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("PollingWaitSeconds") {
                self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
            }
            if dict.keys.contains("QueueName") {
                self.queueName = dict["QueueName"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [GetQueueAttributesResponseBody.Data.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetQueueAttributesResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("VisibilityTimeout") {
                self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var data: GetQueueAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetQueueAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetQueueAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQueueAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetQueueAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSubscriptionAttributesRequest : Tea.TeaModel {
    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubscriptionName") {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class GetSubscriptionAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DlqPolicy : Tea.TeaModel {
            public var deadLetterTargetQueue: String?

            public var enabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deadLetterTargetQueue != nil {
                    map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeadLetterTargetQueue") {
                    self.deadLetterTargetQueue = dict["DeadLetterTargetQueue"] as! String
                }
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
            }
        }
        public var createTime: Int64?

        public var dlqPolicy: GetSubscriptionAttributesResponseBody.Data.DlqPolicy?

        public var endpoint: String?

        public var filterTag: String?

        public var lastModifyTime: Int64?

        public var notifyContentFormat: String?

        public var notifyStrategy: String?

        public var subscriptionName: String?

        public var topicName: String?

        public var topicOwner: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dlqPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dlqPolicy != nil {
                map["DlqPolicy"] = self.dlqPolicy?.toMap()
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.filterTag != nil {
                map["FilterTag"] = self.filterTag!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.notifyContentFormat != nil {
                map["NotifyContentFormat"] = self.notifyContentFormat!
            }
            if self.notifyStrategy != nil {
                map["NotifyStrategy"] = self.notifyStrategy!
            }
            if self.subscriptionName != nil {
                map["SubscriptionName"] = self.subscriptionName!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            if self.topicOwner != nil {
                map["TopicOwner"] = self.topicOwner!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DlqPolicy") {
                var model = GetSubscriptionAttributesResponseBody.Data.DlqPolicy()
                model.fromMap(dict["DlqPolicy"] as! [String: Any])
                self.dlqPolicy = model
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("FilterTag") {
                self.filterTag = dict["FilterTag"] as! String
            }
            if dict.keys.contains("LastModifyTime") {
                self.lastModifyTime = dict["LastModifyTime"] as! Int64
            }
            if dict.keys.contains("NotifyContentFormat") {
                self.notifyContentFormat = dict["NotifyContentFormat"] as! String
            }
            if dict.keys.contains("NotifyStrategy") {
                self.notifyStrategy = dict["NotifyStrategy"] as! String
            }
            if dict.keys.contains("SubscriptionName") {
                self.subscriptionName = dict["SubscriptionName"] as! String
            }
            if dict.keys.contains("TopicName") {
                self.topicName = dict["TopicName"] as! String
            }
            if dict.keys.contains("TopicOwner") {
                self.topicOwner = dict["TopicOwner"] as! String
            }
        }
    }
    public var code: Int64?

    public var data: GetSubscriptionAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetSubscriptionAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetSubscriptionAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubscriptionAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSubscriptionAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTopicAttributesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var tag: [GetTopicAttributesRequest.Tag]?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Tag") {
            var tmp : [GetTopicAttributesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = GetTopicAttributesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class GetTopicAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var lastModifyTime: Int64?

        public var loggingEnabled: Bool?

        public var maxMessageSize: Int64?

        public var messageCount: Int64?

        public var messageRetentionPeriod: Int64?

        public var tags: [GetTopicAttributesResponseBody.Data.Tags]?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.loggingEnabled != nil {
                map["LoggingEnabled"] = self.loggingEnabled!
            }
            if self.maxMessageSize != nil {
                map["MaxMessageSize"] = self.maxMessageSize!
            }
            if self.messageCount != nil {
                map["MessageCount"] = self.messageCount!
            }
            if self.messageRetentionPeriod != nil {
                map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("LastModifyTime") {
                self.lastModifyTime = dict["LastModifyTime"] as! Int64
            }
            if dict.keys.contains("LoggingEnabled") {
                self.loggingEnabled = dict["LoggingEnabled"] as! Bool
            }
            if dict.keys.contains("MaxMessageSize") {
                self.maxMessageSize = dict["MaxMessageSize"] as! Int64
            }
            if dict.keys.contains("MessageCount") {
                self.messageCount = dict["MessageCount"] as! Int64
            }
            if dict.keys.contains("MessageRetentionPeriod") {
                self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("Tags") {
                var tmp : [GetTopicAttributesResponseBody.Data.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetTopicAttributesResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TopicName") {
                self.topicName = dict["TopicName"] as! String
            }
        }
    }
    public var code: Int64?

    public var data: GetTopicAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetTopicAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetTopicAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTopicAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQueueRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var pageNum: Int64?

    public var pageSize: Int64?

    public var queueName: String?

    public var tag: [ListQueueRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListQueueRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListQueueRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public class DlqPolicy : Tea.TeaModel {
                public var deadLetterTargetQueue: String?

                public var enabled: Bool?

                public var maxReceiveCount: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deadLetterTargetQueue != nil {
                        map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.maxReceiveCount != nil {
                        map["MaxReceiveCount"] = self.maxReceiveCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeadLetterTargetQueue") {
                        self.deadLetterTargetQueue = dict["DeadLetterTargetQueue"] as! String
                    }
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("MaxReceiveCount") {
                        self.maxReceiveCount = dict["MaxReceiveCount"] as! String
                    }
                }
            }
            public class Tags : Tea.TeaModel {
                public var tagKey: String?

                public var tagValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagKey != nil {
                        map["TagKey"] = self.tagKey!
                    }
                    if self.tagValue != nil {
                        map["TagValue"] = self.tagValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagKey") {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public var activeMessages: Int64?

            public var createTime: Int64?

            public var delayMessages: Int64?

            public var delaySeconds: Int64?

            public var dlqPolicy: ListQueueResponseBody.Data.PageData.DlqPolicy?

            public var inactiveMessages: Int64?

            public var lastModifyTime: Int64?

            public var loggingEnabled: Bool?

            public var maximumMessageSize: Int64?

            public var messageRetentionPeriod: Int64?

            public var pollingWaitSeconds: Int64?

            public var queueName: String?

            public var tags: [ListQueueResponseBody.Data.PageData.Tags]?

            public var visibilityTimeout: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dlqPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeMessages != nil {
                    map["ActiveMessages"] = self.activeMessages!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.delayMessages != nil {
                    map["DelayMessages"] = self.delayMessages!
                }
                if self.delaySeconds != nil {
                    map["DelaySeconds"] = self.delaySeconds!
                }
                if self.dlqPolicy != nil {
                    map["DlqPolicy"] = self.dlqPolicy?.toMap()
                }
                if self.inactiveMessages != nil {
                    map["InactiveMessages"] = self.inactiveMessages!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.loggingEnabled != nil {
                    map["LoggingEnabled"] = self.loggingEnabled!
                }
                if self.maximumMessageSize != nil {
                    map["MaximumMessageSize"] = self.maximumMessageSize!
                }
                if self.messageRetentionPeriod != nil {
                    map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
                }
                if self.pollingWaitSeconds != nil {
                    map["PollingWaitSeconds"] = self.pollingWaitSeconds!
                }
                if self.queueName != nil {
                    map["QueueName"] = self.queueName!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.visibilityTimeout != nil {
                    map["VisibilityTimeout"] = self.visibilityTimeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveMessages") {
                    self.activeMessages = dict["ActiveMessages"] as! Int64
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DelayMessages") {
                    self.delayMessages = dict["DelayMessages"] as! Int64
                }
                if dict.keys.contains("DelaySeconds") {
                    self.delaySeconds = dict["DelaySeconds"] as! Int64
                }
                if dict.keys.contains("DlqPolicy") {
                    var model = ListQueueResponseBody.Data.PageData.DlqPolicy()
                    model.fromMap(dict["DlqPolicy"] as! [String: Any])
                    self.dlqPolicy = model
                }
                if dict.keys.contains("InactiveMessages") {
                    self.inactiveMessages = dict["InactiveMessages"] as! Int64
                }
                if dict.keys.contains("LastModifyTime") {
                    self.lastModifyTime = dict["LastModifyTime"] as! Int64
                }
                if dict.keys.contains("LoggingEnabled") {
                    self.loggingEnabled = dict["LoggingEnabled"] as! Bool
                }
                if dict.keys.contains("MaximumMessageSize") {
                    self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
                }
                if dict.keys.contains("MessageRetentionPeriod") {
                    self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
                }
                if dict.keys.contains("PollingWaitSeconds") {
                    self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
                }
                if dict.keys.contains("QueueName") {
                    self.queueName = dict["QueueName"] as! String
                }
                if dict.keys.contains("Tags") {
                    var tmp : [ListQueueResponseBody.Data.PageData.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = ListQueueResponseBody.Data.PageData.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("VisibilityTimeout") {
                    self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
                }
            }
        }
        public var pageData: [ListQueueResponseBody.Data.PageData]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var pages: Int64?

        public var size: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pages != nil {
                map["Pages"] = self.pages!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageData") {
                var tmp : [ListQueueResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListQueueResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Pages") {
                self.pages = dict["Pages"] as! Int64
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var data: ListQueueResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = ListQueueResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSubscriptionByTopicRequest : Tea.TeaModel {
    public var endpointType: String?

    public var endpointValue: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.endpointValue != nil {
            map["EndpointValue"] = self.endpointValue!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("EndpointValue") {
            self.endpointValue = dict["EndpointValue"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SubscriptionName") {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class ListSubscriptionByTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public class DlqPolicy : Tea.TeaModel {
                public var deadLetterTargetQueue: String?

                public var enabled: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deadLetterTargetQueue != nil {
                        map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeadLetterTargetQueue") {
                        self.deadLetterTargetQueue = dict["DeadLetterTargetQueue"] as! String
                    }
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                }
            }
            public var createTime: Int64?

            public var dlqPolicy: ListSubscriptionByTopicResponseBody.Data.PageData.DlqPolicy?

            public var endpoint: String?

            public var filterTag: String?

            public var lastModifyTime: Int64?

            public var notifyContentFormat: String?

            public var notifyStrategy: String?

            public var subscriptionName: String?

            public var topicName: String?

            public var topicOwner: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dlqPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dlqPolicy != nil {
                    map["DlqPolicy"] = self.dlqPolicy?.toMap()
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.filterTag != nil {
                    map["FilterTag"] = self.filterTag!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.notifyContentFormat != nil {
                    map["NotifyContentFormat"] = self.notifyContentFormat!
                }
                if self.notifyStrategy != nil {
                    map["NotifyStrategy"] = self.notifyStrategy!
                }
                if self.subscriptionName != nil {
                    map["SubscriptionName"] = self.subscriptionName!
                }
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                if self.topicOwner != nil {
                    map["TopicOwner"] = self.topicOwner!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DlqPolicy") {
                    var model = ListSubscriptionByTopicResponseBody.Data.PageData.DlqPolicy()
                    model.fromMap(dict["DlqPolicy"] as! [String: Any])
                    self.dlqPolicy = model
                }
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("FilterTag") {
                    self.filterTag = dict["FilterTag"] as! String
                }
                if dict.keys.contains("LastModifyTime") {
                    self.lastModifyTime = dict["LastModifyTime"] as! Int64
                }
                if dict.keys.contains("NotifyContentFormat") {
                    self.notifyContentFormat = dict["NotifyContentFormat"] as! String
                }
                if dict.keys.contains("NotifyStrategy") {
                    self.notifyStrategy = dict["NotifyStrategy"] as! String
                }
                if dict.keys.contains("SubscriptionName") {
                    self.subscriptionName = dict["SubscriptionName"] as! String
                }
                if dict.keys.contains("TopicName") {
                    self.topicName = dict["TopicName"] as! String
                }
                if dict.keys.contains("TopicOwner") {
                    self.topicOwner = dict["TopicOwner"] as! String
                }
            }
        }
        public var pageData: [ListSubscriptionByTopicResponseBody.Data.PageData]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var pages: Int64?

        public var size: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pages != nil {
                map["Pages"] = self.pages!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageData") {
                var tmp : [ListSubscriptionByTopicResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListSubscriptionByTopicResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Pages") {
                self.pages = dict["Pages"] as! Int64
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var data: ListSubscriptionByTopicResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = ListSubscriptionByTopicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListSubscriptionByTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubscriptionByTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSubscriptionByTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTopicRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var pageNum: Int64?

    public var pageSize: Int64?

    public var tag: [ListTopicRequest.Tag]?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListTopicRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTopicRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class ListTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public var tagKey: String?

                public var tagValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagKey != nil {
                        map["TagKey"] = self.tagKey!
                    }
                    if self.tagValue != nil {
                        map["TagValue"] = self.tagValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagKey") {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public var createTime: Int64?

            public var lastModifyTime: Int64?

            public var loggingEnabled: Bool?

            public var maxMessageSize: Int64?

            public var messageCount: Int64?

            public var messageRetentionPeriod: Int64?

            public var tags: [ListTopicResponseBody.Data.PageData.Tags]?

            public var topicInnerUrl: String?

            public var topicName: String?

            public var topicUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.loggingEnabled != nil {
                    map["LoggingEnabled"] = self.loggingEnabled!
                }
                if self.maxMessageSize != nil {
                    map["MaxMessageSize"] = self.maxMessageSize!
                }
                if self.messageCount != nil {
                    map["MessageCount"] = self.messageCount!
                }
                if self.messageRetentionPeriod != nil {
                    map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.topicInnerUrl != nil {
                    map["TopicInnerUrl"] = self.topicInnerUrl!
                }
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                if self.topicUrl != nil {
                    map["TopicUrl"] = self.topicUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("LastModifyTime") {
                    self.lastModifyTime = dict["LastModifyTime"] as! Int64
                }
                if dict.keys.contains("LoggingEnabled") {
                    self.loggingEnabled = dict["LoggingEnabled"] as! Bool
                }
                if dict.keys.contains("MaxMessageSize") {
                    self.maxMessageSize = dict["MaxMessageSize"] as! Int64
                }
                if dict.keys.contains("MessageCount") {
                    self.messageCount = dict["MessageCount"] as! Int64
                }
                if dict.keys.contains("MessageRetentionPeriod") {
                    self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
                }
                if dict.keys.contains("Tags") {
                    var tmp : [ListTopicResponseBody.Data.PageData.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = ListTopicResponseBody.Data.PageData.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("TopicInnerUrl") {
                    self.topicInnerUrl = dict["TopicInnerUrl"] as! String
                }
                if dict.keys.contains("TopicName") {
                    self.topicName = dict["TopicName"] as! String
                }
                if dict.keys.contains("TopicUrl") {
                    self.topicUrl = dict["TopicUrl"] as! String
                }
            }
        }
        public var pageData: [ListTopicResponseBody.Data.PageData]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageData") {
                var tmp : [ListTopicResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListTopicResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var data: ListTopicResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = ListTopicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeEndpointAclRequest : Tea.TeaModel {
    public var aclStrategy: String?

    public var cidrList: [String]?

    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclStrategy != nil {
            map["AclStrategy"] = self.aclStrategy!
        }
        if self.cidrList != nil {
            map["CidrList"] = self.cidrList!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclStrategy") {
            self.aclStrategy = dict["AclStrategy"] as! String
        }
        if dict.keys.contains("CidrList") {
            self.cidrList = dict["CidrList"] as! [String]
        }
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
    }
}

public class RevokeEndpointAclShrinkRequest : Tea.TeaModel {
    public var aclStrategy: String?

    public var cidrListShrink: String?

    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclStrategy != nil {
            map["AclStrategy"] = self.aclStrategy!
        }
        if self.cidrListShrink != nil {
            map["CidrList"] = self.cidrListShrink!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclStrategy") {
            self.aclStrategy = dict["AclStrategy"] as! String
        }
        if dict.keys.contains("CidrList") {
            self.cidrListShrink = dict["CidrList"] as! String
        }
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
    }
}

public class RevokeEndpointAclResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RevokeEndpointAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeEndpointAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RevokeEndpointAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetQueueAttributesRequest : Tea.TeaModel {
    public class DlqPolicy : Tea.TeaModel {
        public var deadLetterTargetQueue: String?

        public var enabled: Bool?

        public var maxReceiveCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadLetterTargetQueue != nil {
                map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.maxReceiveCount != nil {
                map["MaxReceiveCount"] = self.maxReceiveCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeadLetterTargetQueue") {
                self.deadLetterTargetQueue = dict["DeadLetterTargetQueue"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("MaxReceiveCount") {
                self.maxReceiveCount = dict["MaxReceiveCount"] as! Int32
            }
        }
    }
    public var delaySeconds: Int64?

    public var dlqPolicy: SetQueueAttributesRequest.DlqPolicy?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

    public var visibilityTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlqPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delaySeconds != nil {
            map["DelaySeconds"] = self.delaySeconds!
        }
        if self.dlqPolicy != nil {
            map["DlqPolicy"] = self.dlqPolicy?.toMap()
        }
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maximumMessageSize != nil {
            map["MaximumMessageSize"] = self.maximumMessageSize!
        }
        if self.messageRetentionPeriod != nil {
            map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
        }
        if self.pollingWaitSeconds != nil {
            map["PollingWaitSeconds"] = self.pollingWaitSeconds!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelaySeconds") {
            self.delaySeconds = dict["DelaySeconds"] as! Int64
        }
        if dict.keys.contains("DlqPolicy") {
            var model = SetQueueAttributesRequest.DlqPolicy()
            model.fromMap(dict["DlqPolicy"] as! [String: Any])
            self.dlqPolicy = model
        }
        if dict.keys.contains("EnableLogging") {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaximumMessageSize") {
            self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
        }
        if dict.keys.contains("MessageRetentionPeriod") {
            self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
        }
        if dict.keys.contains("PollingWaitSeconds") {
            self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("VisibilityTimeout") {
            self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
        }
    }
}

public class SetQueueAttributesShrinkRequest : Tea.TeaModel {
    public var delaySeconds: Int64?

    public var dlqPolicyShrink: String?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

    public var visibilityTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delaySeconds != nil {
            map["DelaySeconds"] = self.delaySeconds!
        }
        if self.dlqPolicyShrink != nil {
            map["DlqPolicy"] = self.dlqPolicyShrink!
        }
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maximumMessageSize != nil {
            map["MaximumMessageSize"] = self.maximumMessageSize!
        }
        if self.messageRetentionPeriod != nil {
            map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
        }
        if self.pollingWaitSeconds != nil {
            map["PollingWaitSeconds"] = self.pollingWaitSeconds!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelaySeconds") {
            self.delaySeconds = dict["DelaySeconds"] as! Int64
        }
        if dict.keys.contains("DlqPolicy") {
            self.dlqPolicyShrink = dict["DlqPolicy"] as! String
        }
        if dict.keys.contains("EnableLogging") {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaximumMessageSize") {
            self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
        }
        if dict.keys.contains("MessageRetentionPeriod") {
            self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
        }
        if dict.keys.contains("PollingWaitSeconds") {
            self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("VisibilityTimeout") {
            self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
        }
    }
}

public class SetQueueAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: Int64?

    public var data: SetQueueAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = SetQueueAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetQueueAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetQueueAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetQueueAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSubscriptionAttributesRequest : Tea.TeaModel {
    public class DlqPolicy : Tea.TeaModel {
        public var deadLetterTargetQueue: String?

        public var enabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadLetterTargetQueue != nil {
                map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeadLetterTargetQueue") {
                self.deadLetterTargetQueue = dict["DeadLetterTargetQueue"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
        }
    }
    public var dlqPolicy: SetSubscriptionAttributesRequest.DlqPolicy?

    public var notifyStrategy: String?

    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlqPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlqPolicy != nil {
            map["DlqPolicy"] = self.dlqPolicy?.toMap()
        }
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DlqPolicy") {
            var model = SetSubscriptionAttributesRequest.DlqPolicy()
            model.fromMap(dict["DlqPolicy"] as! [String: Any])
            self.dlqPolicy = model
        }
        if dict.keys.contains("NotifyStrategy") {
            self.notifyStrategy = dict["NotifyStrategy"] as! String
        }
        if dict.keys.contains("SubscriptionName") {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class SetSubscriptionAttributesShrinkRequest : Tea.TeaModel {
    public var dlqPolicyShrink: String?

    public var notifyStrategy: String?

    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlqPolicyShrink != nil {
            map["DlqPolicy"] = self.dlqPolicyShrink!
        }
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DlqPolicy") {
            self.dlqPolicyShrink = dict["DlqPolicy"] as! String
        }
        if dict.keys.contains("NotifyStrategy") {
            self.notifyStrategy = dict["NotifyStrategy"] as! String
        }
        if dict.keys.contains("SubscriptionName") {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class SetSubscriptionAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: Int64?

    public var data: SetSubscriptionAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = SetSubscriptionAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetSubscriptionAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSubscriptionAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetSubscriptionAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetTopicAttributesRequest : Tea.TeaModel {
    public var enableLogging: Bool?

    public var maxMessageSize: Int64?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maxMessageSize != nil {
            map["MaxMessageSize"] = self.maxMessageSize!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableLogging") {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaxMessageSize") {
            self.maxMessageSize = dict["MaxMessageSize"] as! Int64
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class SetTopicAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: Int64?

    public var data: SetTopicAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = SetTopicAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetTopicAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetTopicAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetTopicAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubscribeRequest : Tea.TeaModel {
    public class DlqPolicy : Tea.TeaModel {
        public var deadLetterTargetQueue: String?

        public var enabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadLetterTargetQueue != nil {
                map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeadLetterTargetQueue") {
                self.deadLetterTargetQueue = dict["DeadLetterTargetQueue"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
        }
    }
    public var dlqPolicy: SubscribeRequest.DlqPolicy?

    public var endpoint: String?

    public var messageTag: String?

    public var notifyContentFormat: String?

    public var notifyStrategy: String?

    public var pushType: String?

    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlqPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlqPolicy != nil {
            map["DlqPolicy"] = self.dlqPolicy?.toMap()
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.messageTag != nil {
            map["MessageTag"] = self.messageTag!
        }
        if self.notifyContentFormat != nil {
            map["NotifyContentFormat"] = self.notifyContentFormat!
        }
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DlqPolicy") {
            var model = SubscribeRequest.DlqPolicy()
            model.fromMap(dict["DlqPolicy"] as! [String: Any])
            self.dlqPolicy = model
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("MessageTag") {
            self.messageTag = dict["MessageTag"] as! String
        }
        if dict.keys.contains("NotifyContentFormat") {
            self.notifyContentFormat = dict["NotifyContentFormat"] as! String
        }
        if dict.keys.contains("NotifyStrategy") {
            self.notifyStrategy = dict["NotifyStrategy"] as! String
        }
        if dict.keys.contains("PushType") {
            self.pushType = dict["PushType"] as! String
        }
        if dict.keys.contains("SubscriptionName") {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class SubscribeShrinkRequest : Tea.TeaModel {
    public var dlqPolicyShrink: String?

    public var endpoint: String?

    public var messageTag: String?

    public var notifyContentFormat: String?

    public var notifyStrategy: String?

    public var pushType: String?

    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlqPolicyShrink != nil {
            map["DlqPolicy"] = self.dlqPolicyShrink!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.messageTag != nil {
            map["MessageTag"] = self.messageTag!
        }
        if self.notifyContentFormat != nil {
            map["NotifyContentFormat"] = self.notifyContentFormat!
        }
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DlqPolicy") {
            self.dlqPolicyShrink = dict["DlqPolicy"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("MessageTag") {
            self.messageTag = dict["MessageTag"] as! String
        }
        if dict.keys.contains("NotifyContentFormat") {
            self.notifyContentFormat = dict["NotifyContentFormat"] as! String
        }
        if dict.keys.contains("NotifyStrategy") {
            self.notifyStrategy = dict["NotifyStrategy"] as! String
        }
        if dict.keys.contains("PushType") {
            self.pushType = dict["PushType"] as! String
        }
        if dict.keys.contains("SubscriptionName") {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class SubscribeResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubscribeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnsubscribeRequest : Tea.TeaModel {
    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubscriptionName") {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class UnsubscribeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: Int64?

    public var data: UnsubscribeResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = UnsubscribeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnsubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnsubscribeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnsubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
