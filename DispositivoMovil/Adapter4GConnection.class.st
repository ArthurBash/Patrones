Class {
	#name : #Adapter4GConnection,
	#superclass : #StrategyConnection,
	#instVars : [
		'cuatroGConnect'
	],
	#category : #DispositivoMovil
}

{ #category : #ssl }
Adapter4GConnection >> connect [
	self cuatroGConnect connect
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
Adapter4GConnection >> sendData: data crc: crc [ 
	cuatroGConnect  transmit: data crc: crc
]
