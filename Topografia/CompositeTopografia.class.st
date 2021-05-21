Class {
	#name : #CompositeTopografia,
	#superclass : #Topografia,
	#instVars : [
		'components'
	],
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
CompositeTopografia >> calcular [
	components calcular
]

{ #category : #'as yet unclassified' }
CompositeTopografia >> comparar: unaTopografia [
	^(components
		select: [ :component | component comparar: unaTopografia ]) size
		= components size
]

{ #category : #'as yet unclassified' }
CompositeTopografia >> crear [
	^components collect: [ :componente | componente crear ]
	
]

{ #category : #initialization }
CompositeTopografia >> initialize [ 
	components:=OrderedCollection new.
]
