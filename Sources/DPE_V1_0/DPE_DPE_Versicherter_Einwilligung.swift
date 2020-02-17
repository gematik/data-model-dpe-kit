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
public class DPE_DPE_Versicherter_Einwilligung {
    
    public static let namespacePrefix: String? = "DPE"
    public static let namespaceUri: String? = "http://ws.gematik.de/fa/nfds/DPE_Document/v1.0"
    
    // attributes:
    
    // elements:
    public var DPE_VE_Arzt_Nachname: String
    public var DPE_VE_Arzt_Vorname: String
    public var DPE_VE_Ablageort: DPE_DPE_AdresseType
    
    // default Constructor
    public init() {
        
        self.DPE_VE_Arzt_Nachname = String()
        self.DPE_VE_Arzt_Vorname = String()
        self.DPE_VE_Ablageort = DPE_DPE_AdresseType()
        
    }
    
    // copy Constructor
    public init(_ _DPE_DPE_Versicherter_Einwilligung: DPE_DPE_Versicherter_Einwilligung ) {
        
        self.DPE_VE_Arzt_Nachname = _DPE_DPE_Versicherter_Einwilligung.DPE_VE_Arzt_Nachname
        self.DPE_VE_Arzt_Vorname = _DPE_DPE_Versicherter_Einwilligung.DPE_VE_Arzt_Vorname
        self.DPE_VE_Ablageort = _DPE_DPE_Versicherter_Einwilligung.DPE_VE_Ablageort
        
    }
    
    public class func deserialize(_ infoset: Infoset) -> DPE_DPE_Versicherter_Einwilligung {
        
        let _DPE_DPE_Versicherter_Einwilligung = DPE_DPE_Versicherter_Einwilligung()
        
        let uriDPE_VE_Arzt_Nachname = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameDPE_VE_Arzt_Nachname = QName("DPE_VE_Arzt_Nachname", uri: uriDPE_VE_Arzt_Nachname)
        _DPE_DPE_Versicherter_Einwilligung.DPE_VE_Arzt_Nachname = String.deserialize(infoset.select(qNameDPE_VE_Arzt_Nachname))
        
        let uriDPE_VE_Arzt_Vorname = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameDPE_VE_Arzt_Vorname = QName("DPE_VE_Arzt_Vorname", uri: uriDPE_VE_Arzt_Vorname)
        _DPE_DPE_Versicherter_Einwilligung.DPE_VE_Arzt_Vorname = String.deserialize(infoset.select(qNameDPE_VE_Arzt_Vorname))
        
        let uriDPE_VE_Ablageort = DPE_DPE_AdresseType.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameDPE_VE_Ablageort = QName("DPE_VE_Ablageort", uri: uriDPE_VE_Ablageort)
        _DPE_DPE_Versicherter_Einwilligung.DPE_VE_Ablageort = DPE_DPE_AdresseType.deserialize(infoset.select(qNameDPE_VE_Ablageort))
        
        return _DPE_DPE_Versicherter_Einwilligung
    }
}

extension Optional where Wrapped == DPE_DPE_Versicherter_Einwilligung {
    public static func deserialize(_ infoset: Infoset) -> DPE_DPE_Versicherter_Einwilligung? {
        if infoset.count == 0 {
            return nil
        } else {
            return DPE_DPE_Versicherter_Einwilligung.deserialize(infoset)
        }
    }
}

extension Array where Element: DPE_DPE_Versicherter_Einwilligung {
    public var namespaceUri: String? {
        get {
            return DPE_DPE_Versicherter_Einwilligung.namespaceUri
        }
    }
    
    public static func deserialize(_ infoset: Infoset) -> [DPE_DPE_Versicherter_Einwilligung] {
        return infoset.map { (element: Infoset) in
        DPE_DPE_Versicherter_Einwilligung.deserialize(element)
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

