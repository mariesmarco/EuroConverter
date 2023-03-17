import Foundation

struct ConvertorBrain{
    
    var eurValue: Float = 0
    var ronValue: Float = 0
    var ratio: Float = 0
    
    
    mutating func getEurValue(userEurInput: Float) -> Float{
        eurValue = userEurInput
        return eurValue
    }
    
    mutating func getRonValue(userRonInput: Float) -> Float{
        ronValue = userRonInput
        return ronValue
    }
    
    mutating func getRatioValue(userRatioInput: Float) -> Float{
        ratio = userRatioInput
        return ratio
    }
    
    func conversionEurToRon() -> Float{
        let floatRonResult = eurValue * ratio
        return floatRonResult
        
    }
    
    func conversionRonToEur() -> Float{
        let floatEurResult = ronValue / ratio
        return floatEurResult
    }
    
}
