//
// ChatAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ChatAPI: APIBase {
    /**
     Sends a message to a Chat
     - parameter object: (path) The object associated with the *Chat* 
     - parameter objectId: (path) The primary key of the object associated with the *Chat* 
     - parameter body: (body) Message &amp; Sender 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func chatSend(object: String, objectId: String, body: ChatSendRequest, completion: @escaping ((_ data: ChatSendResponse?, _ error: ErrorResponse?) -> Void)) {
        chatSendWithRequestBuilder(object: object, objectId: objectId, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Sends a message to a Chat
     - POST /chat/send/{object}/{object_id}
     - Sends `{message}` to the chat related to the `{object}` with id `{object_id}`. `{object}` should be the name of a type of object which has a chat (E.G. `issues`) and `object_id` should be that object's primary key.
     - API Key:
       - type: apiKey X-Boomtown-Date 
       - name: X-Boomtown-Date     - API Key:
       - type: apiKey X-Boomtown-Token 
       - name: X-Boomtown-Token
     - examples: [{contentType=application/json, example=""}]
     - parameter object: (path) The object associated with the *Chat* 
     - parameter objectId: (path) The primary key of the object associated with the *Chat* 
     - parameter body: (body) Message &amp; Sender 
     - returns: RequestBuilder<ChatSendResponse> 
     */
    open class func chatSendWithRequestBuilder(object: String, objectId: String, body: ChatSendRequest) -> RequestBuilder<ChatSendResponse> {
        var path = "/chat/send/{object}/{object_id}"
        let objectPreEscape = "\(object)"
        let objectPostEscape = objectPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{object}", with: objectPostEscape, options: .literal, range: nil)
        let objectIdPreEscape = "\(objectId)"
        let objectIdPostEscape = objectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{object_id}", with: objectIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON()

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ChatSendResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get available emoticons
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCustomerMetaEmoticons(completion: @escaping ((_ data: CustomerMetaEmoticonsResponse?, _ error: ErrorResponse?) -> Void)) {
        getCustomerMetaEmoticonsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get available emoticons
     - GET /chat/meta/emoticons
     - Returns a dictionary mapping all available emoji internal names to their possible text-based emoticon equivalents (an array of one or more possible text-based usages which will become that emoji) for example, `emoji-smile` will map to `[\"(smile)\",\":-)\"]` (meaning those values will be converted to a smile emoji)
     - API Key:
       - type: apiKey X-Boomtown-Date 
       - name: X-Boomtown-Date     - API Key:
       - type: apiKey X-Boomtown-Token 
       - name: X-Boomtown-Token
     - examples: [{contentType=application/json, example=""}]
     - returns: RequestBuilder<CustomerMetaEmoticonsResponse> 
     */
    open class func getCustomerMetaEmoticonsWithRequestBuilder() -> RequestBuilder<CustomerMetaEmoticonsResponse> {
        let path = "/chat/meta/emoticons"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CustomerMetaEmoticonsResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
