Class {
	#name : #Adapter4GConnection,
	#superclass : #Connection,
	#instVars : [
		'cuatroGConnect'
	],
	#category : #DispositivoMovil
}

{ #category : #'as yet unclassified' }
Adapter4GConnection class >> logo [
	self shouldBeImplemented.
]

{ #category : #ssl }
Adapter4GConnection >> connect [
	^ self cuatroGConnect connect
]

{ #category : #accessing }
Adapter4GConnection >> cuatroGConnect [
	^ cuatroGConnect 
]

{ #category : #initialization }
Adapter4GConnection >> initialize [
	cuatroGConnect := CuatroGConnection new.
]

{ #category : #'as yet unclassified' }
Adapter4GConnection >> logo [
	^ self cuatroGConnect logo

]

{ #category : #'as yet unclassified' }
Adapter4GConnection >> sendData: data crc: crc [
	^ cuatroGConnect transmit: data crc: crc
]
