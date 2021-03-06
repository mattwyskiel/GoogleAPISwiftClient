//
//  YoutubeLiveChatMessageSnippet.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 7/11/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

/// The LiveChatMessageSnippet model type for use with the Youtube API
public class YoutubeLiveChatMessageSnippet: ObjectType {
	public var liveChatId: String!
	public var userBannedDetails: YoutubeLiveChatUserBannedMessageDetails!
	/// The ID of the user that authored this message, this field is not always filled. textMessageEvent - the user that wrote the message fanFundingEvent - the user that funded the broadcast newSponsorEvent - the user that just became a sponsor messageDeletedEvent - the moderator that took the action messageRetractedEvent - the author that retracted their message userBannedEvent - the moderator that took the action
	public var authorChannelId: String!
	/// Details about the funding event, this is only set if the type is 'fanFundingEvent'.
	public var fanFundingEventDetails: YoutubeLiveChatFanFundingEventDetails!
	/// The date and time when the message was orignally published. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
	public var publishedAt: NSDate!
	public var messageRetractedDetails: YoutubeLiveChatMessageRetractedDetails!
	public var messageDeletedDetails: YoutubeLiveChatMessageDeletedDetails!
	/// Whether the message has display content that should be displayed to users.
	public var hasDisplayContent: Bool!
	/// Contains a string that can be displayed to the user. If this field is not present the message is silent, at the moment only messages of type TOMBSTONE and CHAT_ENDED_EVENT are silent.
	public var displayMessage: String!
	/// The type of message, this will always be present, it determines the contents of the message as well as which fields will be present.
	public var type: YoutubeLiveChatMessageSnippetType!
	public var pollVotedDetails: YoutubeLiveChatPollVotedDetails!
	public var pollClosedDetails: YoutubeLiveChatPollClosedDetails!
	public var pollOpenedDetails: YoutubeLiveChatPollOpenedDetails!
	public var pollEditedDetails: YoutubeLiveChatPollEditedDetails!
	/// Details about the text message, this is only set if the type is 'textMessageEvent'.
	public var textMessageDetails: YoutubeLiveChatTextMessageDetails!
	
	public required init?(_ map: Map) {

	}

	public init() {

	}

	public func mapping(map: Map) {
		liveChatId <- map["liveChatId"]
		userBannedDetails <- map["userBannedDetails"]
		authorChannelId <- map["authorChannelId"]
		fanFundingEventDetails <- map["fanFundingEventDetails"]
		publishedAt <- (map["publishedAt"], RFC3339Transform())
		messageRetractedDetails <- map["messageRetractedDetails"]
		messageDeletedDetails <- map["messageDeletedDetails"]
		hasDisplayContent <- map["hasDisplayContent"]
		displayMessage <- map["displayMessage"]
		type <- map["type"]
		pollVotedDetails <- map["pollVotedDetails"]
		pollClosedDetails <- map["pollClosedDetails"]
		pollOpenedDetails <- map["pollOpenedDetails"]
		pollEditedDetails <- map["pollEditedDetails"]
		textMessageDetails <- map["textMessageDetails"]
	}
}

/// The type of message, this will always be present, it determines the contents of the message as well as which fields will be present.
public enum YoutubeLiveChatMessageSnippetType: String {
	/// 
	case ChatEndedEvent = "chatEndedEvent"
	/// 
	case FanFundingEvent = "fanFundingEvent"
	/// 
	case MessageDeletedEvent = "messageDeletedEvent"
	/// 
	case MessageRetractedEvent = "messageRetractedEvent"
	/// 
	case NewSponsorEvent = "newSponsorEvent"
	/// 
	case PollClosedEvent = "pollClosedEvent"
	/// 
	case PollEditedEvent = "pollEditedEvent"
	/// 
	case PollOpenedEvent = "pollOpenedEvent"
	/// 
	case PollVotedEvent = "pollVotedEvent"
	/// 
	case SponsorOnlyModeEndedEvent = "sponsorOnlyModeEndedEvent"
	/// 
	case SponsorOnlyModeStartedEvent = "sponsorOnlyModeStartedEvent"
	/// 
	case TextMessageEvent = "textMessageEvent"
	/// 
	case Tombstone = "tombstone"
	/// 
	case UserBannedEvent = "userBannedEvent"
}

