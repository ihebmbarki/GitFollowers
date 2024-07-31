//
//  Follower.swift
//  GitFollowers
//
//  Created by Iheb Mbarki on 24/5/2024.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String //Convert from snake case "avatar_url" to camel case "avatarUrl"
}
