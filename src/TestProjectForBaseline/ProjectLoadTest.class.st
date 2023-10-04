Class {
	#name : #ProjectLoadTest,
	#superclass : #TestCase,
	#category : #TestProjectForBaseline
}

{ #category : #tests }
ProjectLoadTest >> testIsLoadCorrectly [

	"labordep : test if a old Bloc class is loaded and a recent Bloc class is not loaded (created after the requested tag of this project)"
	self assert: (#BlElement asClassInEnvironment: Smalltalk globals ifAbsent: [nil]) notNil.
	self assert: (#BlLayoutResizerState asClassInEnvironment: Smalltalk globals ifAbsent: [nil]) isNil.
	
	
]
