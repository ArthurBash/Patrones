Class {
	#name : #Connection,
	#superclass : #Object,
	#classInstVars : [
		'aStrategy',
		'strategy'
	],
	#category : #DispositivoMovil
}

{ #category : #'as yet unclassified' }
Connection >> pict [ 
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Connection >> sendData: data crc: crc [
	self subclassResponsibility 
]
