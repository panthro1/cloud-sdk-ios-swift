//
// OrgTeam.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class OrgTeam: JSONEncodable {

    /** Primary key */
    public var id: String?
    /** Name */
    public var name: String?
    /** Hashtag nickname for group mentions in chat */
    public var nickname: String?
    /** Description */
    public var description: String?
    /** Email */
    public var email: String?
    /** Phone */
    public var phone: String?
    /** Unique ID / Primary Key of this object within a third-party system, used to correlate with the callee&#39;s data */
    public var externalId: String?
    /** Avatar (URL) */
    public var avatar: String?
    /** Automatically set this OrgTeam as first contact on new *Issues* from related *Customers* */
    public var autoAssignRoute: Bool?
    /** Automatically set this OrgTeam as sponsor for related *Customer* billing */
    public var autoAssignSponsor: Bool?
    /** Status */
    public var status: String?
    /** Type/Category */
    public var type: String?
    /** This OrgTeam is exclusive within its type/category */
    public var exclusive: Bool?
    /** This OrgTeam is published in the Connect app */
    public var published: Bool?
    /** Name of this OrgTeam as it appears in the Connect app */
    public var publishedName: String?
    /** This OrgTeam has private label branding in the Connect app */
    public var privateLabel: Bool?
    /** Private label link color (if private_label is true) */
    public var linkColor: String?
    /** Private label text color (if private_label is true) */
    public var textColor: String?
    /** Private label brand color 1 (if private_label is true) */
    public var brandColor1: String?
    /** Private label brand color 2 (if private_label is true) */
    public var brandColor2: String?
    /** Private label logo (if private_label is true) */
    public var brandLogo1x: String?
    /** Private label logo [x2] (if private_label is true) */
    public var brandLogo2x: String?
    /** Private label logo [x3] (if private_label is true) */
    public var brandLogo3x: String?
    /** Support Email */
    public var supportEmail: String?
    /** Support Phone */
    public var supportPhone: String?
    /** Support Website (URL) */
    public var supportUrl: String?
    /** Created */
    public var created: Date?
    /** Updated */
    public var updated: Date?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name
        nillableDictionary["nickname"] = self.nickname
        nillableDictionary["description"] = self.description
        nillableDictionary["email"] = self.email
        nillableDictionary["phone"] = self.phone
        nillableDictionary["external_id"] = self.externalId
        nillableDictionary["avatar"] = self.avatar
        nillableDictionary["auto_assign_route"] = self.autoAssignRoute
        nillableDictionary["auto_assign_sponsor"] = self.autoAssignSponsor
        nillableDictionary["status"] = self.status
        nillableDictionary["type"] = self.type
        nillableDictionary["exclusive"] = self.exclusive
        nillableDictionary["published"] = self.published
        nillableDictionary["published_name"] = self.publishedName
        nillableDictionary["private_label"] = self.privateLabel
        nillableDictionary["link_color"] = self.linkColor
        nillableDictionary["text_color"] = self.textColor
        nillableDictionary["brand_color1"] = self.brandColor1
        nillableDictionary["brand_color2"] = self.brandColor2
        nillableDictionary["brand_logo_1x"] = self.brandLogo1x
        nillableDictionary["brand_logo_2x"] = self.brandLogo2x
        nillableDictionary["brand_logo_3x"] = self.brandLogo3x
        nillableDictionary["support_email"] = self.supportEmail
        nillableDictionary["support_phone"] = self.supportPhone
        nillableDictionary["support_url"] = self.supportUrl
        nillableDictionary["created"] = self.created?.encodeToJSON()
        nillableDictionary["updated"] = self.updated?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

