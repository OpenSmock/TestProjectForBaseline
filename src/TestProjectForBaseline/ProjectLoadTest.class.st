Class {
	#name : #ProjectLoadTest,
	#superclass : #TestCase,
	#category : #TestProjectForBaseline
}

{ #category : #tests }
ProjectLoadTest >> testIsLoadCorrectly [

	"labordep : test if a old Bloc class is loaded and a recent Bloc class is not loaded (created after the requested tag of this project)"
	self assert: (RGClassDefinition named: #BlElement) isClass.
	self deny: (RGClassDefinition named: #BlLayoutResizerState) isClass.
]
