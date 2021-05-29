Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'crsCalculator',
		'ringer',
		'display'
	],
	#category : #DispositivoMovil
}

{ #category : #'as yet unclassified' }
Dispositivo >> CRC [ 
	^ crsCalculator
]

{ #category : #accessing }
Dispositivo >> conectarCon: unaConexion [
	| showBan |
	connection := unaConexion.
	showBan := unaConexion connect.
	self display showBanner: showBan.
	self ringer ring.
	
	^ showBan
]

{ #category : #'as yet unclassified' }
Dispositivo >> configurarCRC: unCRCcalculator [
	crsCalculator := unCRCcalculator 
]

{ #category : #accessing }
Dispositivo >> connection [
	^ connection
]

{ #category : #accessing }
Dispositivo >> display [ 
	^ display
]

{ #category : #initialization }
Dispositivo >> initialize [
	ringer := Ringer new.
	display := DisplayDispositivo new.
]

{ #category : #accessing }
Dispositivo >> ringer [
	^ringer
]

{ #category : #commands }
Dispositivo >> send: datos [
	| crc |
	crc := crsCalculator crcFor: datos.
	self connection sendData: datos crc: crc
]
