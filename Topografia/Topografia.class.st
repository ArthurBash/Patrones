Class {
	#name : #Topografia,
	#superclass : #Object,
	#instVars : [
		'estado'
	],
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
Topografia >> calcular [ 
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> comparar: unaTopografia [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> crear [
self subclassResponsibility 
]
