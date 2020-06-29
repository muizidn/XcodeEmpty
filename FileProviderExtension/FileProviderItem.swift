//
//  FileProviderItem.swift
//  FileProviderExtension
//
//  Created by Muis on 29/06/20.
//  Copyright © 2020 Muis. All rights reserved.
//

import FileProvider

class FileProviderItem: NSObject, NSFileProviderItem {

    // TODO: implement an initializer to create an item from your extension's backing model
    // TODO: implement the accessors to return the values from your extension's backing model
    
    var itemIdentifier: NSFileProviderItemIdentifier {
        return NSFileProviderItemIdentifier("")
    }
    
    var parentItemIdentifier: NSFileProviderItemIdentifier {
        return NSFileProviderItemIdentifier("")
    }
    
    var capabilities: NSFileProviderItemCapabilities {
        return .allowsAll
    }
    
    var filename: String {
        return ""
    }
    
    var typeIdentifier: String {
        return ""
    }
    
}
