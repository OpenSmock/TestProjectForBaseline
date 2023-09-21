Class {
	#name : #BaselineOfTestProjectForBaseline,
	#superclass : #BaselineOf,
	#category : #BaselineOfTestProjectForBaseline
}

{ #category : #baselines }
BaselineOfTestProjectForBaseline >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec postLoadDoIt: #'postload:package:'.
			
			self dependencies: spec.

			"Packages"
			spec package: 'TestProjectForBaseline'.
		  ]
]

{ #category : #baselines }
BaselineOfTestProjectForBaseline >> dependencies: spec [

	spec baseline: 'DependencyTestProjectForBaseline' with: [
		spec repository: 'github://OpenSmock/DependencyTestProjectForBaseline:main' 
	].

	"specific tags of Bloc, OnBloc, Album and Toplo"
	spec baseline: 'Bloc' with: [ 
		spec repository: 'github://OpenSmock/bloc:1.0.0.1/src'.
	].
	spec baseline: 'OnBloc' with: [ 
		spec repository: 'github://OpenSmock/OnBloc:alpha1/src'.
	].
	spec baseline: 'Album' with: [ 
		spec repository: 'github://OpenSmock/Album:alpha1/src'.
	].
	spec baseline: 'Toplo' with: [
		spec repository: 'github://OpenSmock/Toplo:alpha1/src'.
	].
]

{ #category : #baselines }
BaselineOfTestProjectForBaseline >> postload: loader package: packageSpec3 [

	"do nothing"
]
