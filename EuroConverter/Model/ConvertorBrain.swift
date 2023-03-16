import Foundation

struct ConvertorBrain{
    var eurValue: Float = 0
    var ronValue: Float = 0
    var ratio: Float = 0
    
    
    func getEurValue(userEurInput: Float) -> Float{
        return eurValue
    }
    
    func getRonValue(userRonInput: Float) -> Float{
        return ronValue
    }
    
    func getRatioValue(userRatioInput: Float) -> Float{
        return ratio
    }
    
    /*func conversionEurToRon() -> Float{
        let floatRonResult = eurValue * ratio
        return floatRonResult
        
    }
    
    func conversionRonToEur() -> Float{
        let floatEurResult = ronValue / ratio
        return floatEurResult
    }*/
    
}
