//
//  Copyright (c) 2020 gematik GmbH
//  
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  
//     http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

//
//  This file was generated from an xsd file and represents a simple or complex type of it.
//  Generated by a fork of xsd2cocoa (see https://github.com/Daij-Djan/xsd2cocoa) and a specified custom transform template.
//

import Foundation
import XMLTools

// MARK: - Generated file, do not edit. Any edits of this file will be overwritten and thus discarded.
public class DPE_DPE_Document {
    
    public static let namespacePrefix: String? = "DPE"
    public static let namespaceUri: String? = "http://ws.gematik.de/fa/nfds/DPE_Document/v1.0"
    
    // attributes:
    public var DPE_Version: String
    
    // elements:
    public var Persoenliche_Erklaerungen: DPE_Persoenliche_Erklaerungen
    
    // default Constructor
    public init() {
        
        self.DPE_Version = String()
        
        self.Persoenliche_Erklaerungen = DPE_Persoenliche_Erklaerungen()
        
    }
    
    // copy Constructor
    public init(_ _DPE_DPE_Document: DPE_DPE_Document ) {
        
        self.DPE_Version = _DPE_DPE_Document.DPE_Version
        
        self.Persoenliche_Erklaerungen = _DPE_DPE_Document.Persoenliche_Erklaerungen
        
    }
    
    public class func deserialize(_ infoset: Infoset) -> DPE_DPE_Document {
        
        let _DPE_DPE_Document = DPE_DPE_Document()
        
        _DPE_DPE_Document.DPE_Version = String.deserialize(infoset.attr("DPE_Version"))
        
        let uriPersoenliche_Erklaerungen = DPE_Persoenliche_Erklaerungen.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNamePersoenliche_Erklaerungen = QName("Persoenliche_Erklaerungen", uri: uriPersoenliche_Erklaerungen)
        _DPE_DPE_Document.Persoenliche_Erklaerungen = DPE_Persoenliche_Erklaerungen.deserialize(infoset.select(qNamePersoenliche_Erklaerungen))
        
        return _DPE_DPE_Document
    }
}

extension Optional where Wrapped == DPE_DPE_Document {
    public static func deserialize(_ infoset: Infoset) -> DPE_DPE_Document? {
        if infoset.count == 0 {
            return nil
        } else {
            return DPE_DPE_Document.deserialize(infoset)
        }
    }
}

extension Array where Element: DPE_DPE_Document {
    public var namespaceUri: String? {
        get {
            return DPE_DPE_Document.namespaceUri
        }
    }
    
    public static func deserialize(_ infoset: Infoset) -> [DPE_DPE_Document] {
        return infoset.map { (element: Infoset) in
        DPE_DPE_Document.deserialize(element)
    }
}
}

// utility functions
fileprivate extension String {
    static let namespacePrefix: String? = nil
    static let namespaceUri: String? = nil
    
    static func deserialize(_ infoset: Infoset) -> String {
        return infoset.text
    }
}

fileprivate extension Optional where Wrapped == String {
    static func deserialize(_ infoset: Infoset) -> String? {
        if infoset.count == 0 {
            return nil
        } else {
            return String.deserialize(infoset)
        }
    }
}

fileprivate extension Int {
    static let namespacePrefix: String? = nil
    static let namespaceUri: String? = nil
    
    static func deserialize(_ infoset: Infoset) -> Int {
        guard let ret = Int(infoset.text) else {
            return 0
        }
        return ret
    }
}

fileprivate extension Optional where Wrapped == Int {
    static func deserialize(_ infoset: Infoset) -> Int? {
        if infoset.count == 0 {
            return nil
        } else {
            return Int.deserialize(infoset)
        }
    }
}

fileprivate extension Double {
    static let namespacePrefix: String? = nil
    static let namespaceUri: String? = nil
    
    static func deserialize(_ infoset: Infoset) -> Double {
        guard let ret = Double(infoset.text) else {
            return 0
        }
        return ret
    }
}

fileprivate extension Optional where Wrapped == Double {
    static func deserialize(_ infoset: Infoset) -> Double? {
        if infoset.count == 0 {
            return nil
        } else {
            return Double.deserialize(infoset)
        }
    }
}

