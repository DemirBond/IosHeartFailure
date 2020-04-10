//
//  Diagnostics.swift
//  CVDEvaluator
//
//  Created by bogdankosh on 2/14/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import Foundation


// MARK: - Diagnostics

class Diagnostics: EvaluationItem {
	
	let ekg = EKG(literal: Presentation.ekg)
	let stressTesting = StressTesting(literal: Presentation.stressTesting)
	let echocardiography = Echocardiography(literal: Presentation.echocardiography)
	let rhc = RHC(literal: Presentation.rhc)
	let chestX = ChestXray(literal: Presentation.chestXray)
	
	override var items: [EvaluationItem] {
		return [
			ekg,
			//stressTesting,
			echocardiography,
			chestX,
			rhc,
		]
	}
}

class ChestXray: EvaluationItem {
	let chestRightPE = EvaluationItem(literal: Presentation.chestRightPleuralEffusion)
	let chestLeftPE = EvaluationItem(literal: Presentation.chestLeftPleuralEffusion)
	let chestPulmonaryEd = EvaluationItem(literal: Presentation.chestPulmonaryEd)
	let chestEnlargedCardiac = EvaluationItem(literal: Presentation.chestEnlargedCardiac)
	
	override var items:[EvaluationItem] {
		return [
			chestRightPE,
			chestLeftPE,
			chestPulmonaryEd,
			chestEnlargedCardiac,
		]
	}
}



// MARK: - Diagnostics -> EKG

class EKG: EvaluationItem {
	
	let NSRInEKG = EvaluationItem(literal: Presentation.nsrInEKG)
	let svt = EvaluationItem(literal: Presentation.svt)
	let atrialFibrillationInEKG = EvaluationItem(literal: Presentation.atrialFibrillationInEKG)
	let atrialFlutter = EvaluationItem(literal: Presentation.atrialFlutter)
	let prDuration  = EvaluationItem(literal: Presentation.prDuration)
	let qrsDuration = EvaluationItem(literal: Presentation.qrsDuration)
	let qtcDuration = EvaluationItem(literal: Presentation.qtcDuration)
	let nonspecificSTAbnormality = EvaluationItem(literal: Presentation.nonspecificSTAbnormality)
	let lvh = EvaluationItem(literal: Presentation.lvh)
	let lowVoltageQRS = EvaluationItem(literal: Presentation.lowVoltageQRS)
	let abnormalQWaves = EvaluationItem(literal: Presentation.abnormalQWaves)
	let lbbb = EvaluationItem(literal: Presentation.lbbb)
	let bifascicular = EvaluationItem(literal: Presentation.bifascicular)
	let wpw = EvaluationItem(literal: Presentation.wpw)
	let rbb = EvaluationItem(literal: Presentation.rbbb)
	let vpace = EvaluationItem(literal: Presentation.vpace)
	override var items: [EvaluationItem] {
		return [
			prDuration,
			qrsDuration,
			qtcDuration,
			NSRInEKG,
			svt,
			atrialFibrillationInEKG,
			atrialFlutter,
			lbbb,
			rbb,
			//nonspecificSTAbnormality,
			lvh,
			lowVoltageQRS,
			abnormalQWaves,
			vpace,
			//bifascicular,
			wpw,
		]
	}
}


// MARK: - Diagnostics -> EKG -> AtrialFlutter

class AtrialFlutter: EvaluationItem {
	
	let typicalAF = EvaluationItem(literal: Presentation.typicalAF)
	let atypicalAF = EvaluationItem(literal: Presentation.atypicalAF)
	
	override var items: [EvaluationItem] {
		return [typicalAF, atypicalAF]
	}
}


// MARK: - Diagnostics -> EKG -> SecondDegreeAVBlock

class SecondDegreeAVBlock: EvaluationItem {
	
	let type1 = EvaluationItem(literal: Presentation.type1)
	let type2 = EvaluationItem(literal: Presentation.type2)
	
	override var items: [EvaluationItem] {
		return [type1, type2]
	}
}


// MARK: - Diagnostics -> Stress Testing

class StressTesting: EvaluationItem {
	
	let dukeTreadmillScore = EvaluationItem(literal: Presentation.dukeTreadmillScore)
	let serumStressSummedScore = EvaluationItem(literal: Presentation.serumStressSummedScore)
	let stressDifferenceScore = EvaluationItem(literal: Presentation.stressDifferenceScore)
	let percentIschemicMyocardiumonMPS = EvaluationItem(literal: Presentation.percentIschemicMyocardiumonMPS)
	let tidOrSignificantDysfunction = EvaluationItem(literal: Presentation.tidOrSignificantDysfunction)
	let exTimeMin = EvaluationItem(literal: Presentation.exTimeMin)
	let maxSTMm = EvaluationItem(literal: Presentation.maxSTMm)
	let anginaIndex = AnginaIndex(literal: Presentation.anginaIndex)
	let stElevation = EvaluationItem(literal: Presentation.stElevation)
	let abnormalBPResponse = EvaluationItem(literal: Presentation.abnormalBPResponse)
	let ventricularTachycardia = EvaluationItem(literal: Presentation.ventricularTachycardia)
	let prolongSTDepression = EvaluationItem(literal: Presentation.prolongSTDepression)
	let fixedPerfusionDefects = FixedPerfusionDefects(literal: Presentation.fixedPerfusionDefects)
	let dseIschemicThreshold = EvaluationItem(literal: Presentation.dseIschemicThreshold)
	let dseOrStressMRI = EvaluationItem(literal: Presentation.dseOrStressMRI)
	let artifactualUninterpretableImages = EvaluationItem(literal: Presentation.artifactualUninterpretableImages)
	
	override var items: [EvaluationItem] {
		return [
			dukeTreadmillScore,
			serumStressSummedScore,
			stressDifferenceScore,
			percentIschemicMyocardiumonMPS,
			tidOrSignificantDysfunction,
			exTimeMin,
			maxSTMm,
			anginaIndex,
			stElevation,
			abnormalBPResponse,
			ventricularTachycardia,
			prolongSTDepression,
			fixedPerfusionDefects,
			dseIschemicThreshold,
			dseOrStressMRI,
			artifactualUninterpretableImages
		]
	}
}


// MARK: - Diagnostics -> Stress Testing -> AnginaIndex

class AnginaIndex: EvaluationItem {
	
	let noAnginaDuringExercise = EvaluationItem(literal: Presentation.noAnginaDuringExercise)
	let nonLimitingAngina = EvaluationItem(literal: Presentation.nonLimitingAngina)
	let exerciseLimitingAngina = EvaluationItem(literal: Presentation.exerciseLimitingAngina)
	
	override var items: [EvaluationItem] {
		return [
			noAnginaDuringExercise,
			nonLimitingAngina,
			exerciseLimitingAngina
		]
	}
}


// MARK: - Diagnostics -> Stress Testing -> Fixed Perfusion Defects

class FixedPerfusionDefects: EvaluationItem {
	
	let viabilityPresent = EvaluationItem(literal: Presentation.viabilityPresent)
	
	override var items: [EvaluationItem] {
		return [viabilityPresent]
	}
}


// MARK: - Diagnostics -> Echocardiography

class Echocardiography: EvaluationItem {
	
	let pericardialEffusion = EvaluationItem(literal: Presentation.pericardialEffusion)
	let rwma = EvaluationItem(literal: Presentation.rwma)
	let enlargedLAOrLVH = EvaluationItem(literal: Presentation.enlargedLAOrLVH)
	let ealessthan05 = EvaluationItem(literal: Presentation.ea05AndDTMore280ms)
	let ealessthan2andmorethan08 = EvaluationItem(literal: Presentation.gradeMore2DiastolicDysfunction)
	let respiratoryIVSShift = EvaluationItem(literal: Presentation.respiratoryIVSShift)
	let mitralEVariation = EvaluationItem(literal: Presentation.mitralEVariation1)
	let hepaticVeinExpDiastolicReversal = EvaluationItem(literal: Presentation.hepaticVeinExpDiastolicReversal)
	let enlargedRA = EvaluationItem(literal: Presentation.enlargedRA)
	let enlargedRV = EvaluationItem(literal: Presentation.enlargedRV)
	let midsystolicNotch = EvaluationItem(literal: Presentation.midsystolicNotch)
	let lvLaterealAnnulusEE = EvaluationItem(literal: Presentation.lvLaterealAnnulusEE)
	let lvefInEchocardiography = EvaluationItem(literal: Presentation.lvefInEchocardiography)
	let trjVelocityMsec = EvaluationItem(literal: Presentation.trjVelocityMsec)
	let lvhe = EvaluationItem(literal: Presentation.lvhe)
	let eamorethanorequal2 = EvaluationItem(literal: Presentation.eaMoreThan280ms)
	let primaryMitralRegurgitation = PrimaryMitralRegurgitation(literal: HMS.primaryMitralRegurgitation)
	override var items: [EvaluationItem] {
		return [
			lvefInEchocardiography,
			lvLaterealAnnulusEE,
			mitralEVariation,
			
			//pericardialEffusion,
			//rwma,
			enlargedLAOrLVH,
			lvhe,
			
			ealessthan05,
			eamorethanorequal2,
			ealessthan2andmorethan08,
			
			trjVelocityMsec,
			enlargedRA,
			enlargedRV,
			
			
			//respiratoryIVSShift,
			
			//hepaticVeinExpDiastolicReversal,
			
			midsystolicNotch,
			primaryMitralRegurgitation,
		]
	}
}


class MitralRgurgitation: EvaluationItem {
	
	let holodiastolicFlowReversal = EvaluationItem(literal: HMS.holodiastolicFlowReversal)
	let venaContractaWidth = EvaluationItem(literal: HMS.venaContractaWidth)
	let regurgitantVolumeMlBeat = EvaluationItem(literal: HMS.regurgitantVolumeMlBeat)
	let regurgitantFraction = EvaluationItem(literal: HMS.regurgitantFraction)
	let ero = EvaluationItem(literal: HMS.ero)
	let lveddmm = EvaluationItem(literal: HMS.lveddmm)
	let lvesdmm = EvaluationItem(literal: HMS.lvesdmm)
	let aorticRootDiameter = EvaluationItem(literal: HMS.aorticRootDiameter)
	
	override var items: [EvaluationItem] {
		return [
			venaContractaWidth,
			regurgitantVolumeMlBeat,
			regurgitantFraction,
			ero,
			lveddmm,
			lvesdmm
		]
	}
}


// MARK: - Diagnostics -> High Resolution CT

class HRCT: EvaluationItem {
	
	let ground = EvaluationItem(literal: Presentation.ground)
	let septal = EvaluationItem(literal: Presentation.septal)
	let reticular = EvaluationItem(literal: Presentation.reticular)
	let nodular = EvaluationItem(literal: Presentation.nodular)
	let consolidate = EvaluationItem(literal: Presentation.consolidate)
	let honey = EvaluationItem(literal: Presentation.honey)
	let bronch = EvaluationItem(literal: Presentation.bronch)
	let medias = EvaluationItem(literal: Presentation.medias)
	let pleuralthick = EvaluationItem(literal: Presentation.pleuralthick)
	
	override var items: [EvaluationItem] {
		return [
			ground,
			septal,
			reticular,
			nodular,
			consolidate,
			honey,
			bronch,
			medias,
			pleuralthick
		]
	}
}


// MARK: - Diagnostics -> RHC

class RHC: EvaluationItem {
	
}
