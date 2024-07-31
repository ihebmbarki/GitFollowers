//
//  GFError.swift
//  GitFollowers
//
//  Created by Iheb Mbarki on 9/7/2024.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername    = "This username created aan invalid request. Please try again later."
    case unableToComplete   = "Unable to Complete your request. Check your Internet connection"
    case invalidResponse    = "Invalid response from the server.Please try again."
    case invalidData        = "The data recieved from the server is invalid. Please try again"
    case unableToFavorite   = "There was an error putting this user to favorites"
    case alreadyInFavorites = "You have already put this user in favorites"
}
