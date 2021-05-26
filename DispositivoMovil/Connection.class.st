Class {
	#name : #Connection,
	#superclass : #Object,
	#instVars : [
		'strategy'
	],
	#classInstVars : [
		'aStrategy',
		'strategy'
	],
	#category : #DispositivoMovil
}

{ #category : #'as yet unclassified' }
Connection >> sendData: data crc: crc [ 
	strategy sendData: data crc: crc. 
]

{ #category : #accessing }
Connection >> strategy [ 	
	^ strategy 
]

{ #category : #accessing }
Connection >> strategy: aStrategy [
	strategy := aStrategy 
]
