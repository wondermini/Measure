//
//  Converter.swift
//  Measure
//
//  Created by JUNGMIN KIM on 2021/11/10.
//

import Foundation

struct Converter {
    // inch -> cm
    func convertInchToCm(fromInches: Float) -> Float {
        return fromInches * 2.54
    }

    // cm->m
    func cmToM(_ fromCm: Float) -> Float {
        return fromCm / 100
    }

    // m->cm
    func covertMeterToCm(fromMeter: Float) -> Float {
        return fromMeter * 100
    }

    // exercise
    // cm -> inch
    func convertCmToInches(fromCM: Float) -> Float {
        return fromCM / 2.54
    }

    // exercise
    // m -> inch

    func convertMeterToInches(fromMeter: Float) -> Float {
        return (fromMeter * 100) / 2.54
    }

    // additionalMission
    func eraseCm(_ input: String) -> Float {
        let drop_last = String(input.dropLast(2)) // 스트링의 마지막에서 'cm'을 제거
        guard let result = Float(drop_last) else { return 0.0 }
        return result / 100
    }

    func eraseM(_ input: String) -> Float {
        let drop_last = String(input.dropLast(1))
        guard let result = Float(drop_last) else { return 0.0 }
        return result * 100
    }

    func eraseInch(_ input: String) -> Float {
        let drop_last = String(input.dropLast(4))
        guard let result = Float(drop_last) else { return 0.0 }
        return result * 2.54
    }

    // https://gonslab.tistory.com/21
    func cmToInch(_ input: String) -> Float {
        let drop_last = String(input.dropLast(2))
        guard let result = Float(drop_last) else { return 0.0 }
        return result / 2.54
    }

    func inchToCm(_ input: String) -> Float {
        let drop_last = String(input.dropLast(4))
        guard let result = Float(drop_last) else { return 0.0 }
        return (result * 2.54)
    }

    func mToInch(_ input: String) -> Float {
        let drop_last = String(input.dropLast(1))
        guard let result = Float(drop_last) else { return 0.0 }
        return (result * 100) / 2.54
    }

    func mToCm(_ input: String) -> Float {
        let drop_last = String(input.dropLast(1))
        guard let result = Float(drop_last) else { return 0.0 } // 가드엘스 nil 값이 들어올 경우 0을 반환하기위함
        return (result * 100)
    }

    func cmToInch(_ input: Float) -> Float {
        return input / 2.54
    }

    func convertUnit(input: String) -> String {
        let inputArr = input.components(separatedBy: " ")
        if inputArr.count == 1 {
            if input.contains("cm") {
                return String(eraseCm(input)) + " m"
            }
            if input.contains("m") {
                return String(eraseM(input)) + " cm"
            }
            if input.contains("inch") {
                return String(eraseInch(input)) + " cm"
            }
        } else {
            if inputArr[0].contains("cm") {
                return String(cmToInch(inputArr[0])) + " inch"
            }
            if inputArr[0].contains("inch") {
                return String(cmToM(inchToCm(inputArr[0]))) + " m"
            }
            if inputArr[0].contains("m") {
                return String(cmToInch(mToCm(inputArr[0]))) + " inch"
            }
        }
        return "ERROR"
    }
}
