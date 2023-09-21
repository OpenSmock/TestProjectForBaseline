Class {
	#name : #ProjectLoadTest,
	#superclass : #TestCase,
	#category : #TestProjectForBaseline
}

{ #category : #tests }
ProjectLoadTest >> testIsLoadCorrectly [

	"labordep : test if a common Bloc class is loaded and a recent Bloc class is not loaded (created after the requested tag of this project)"
	self assert: #BlElement isClass.
	self deny: #BlLayoutResizerState isClass.
]
