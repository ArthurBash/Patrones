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

{ #category : #accessing }
Dispositivo >> connectarCon: unaConexion [
	connection := unaConexion.
	self display showBanner: unaConexion connect.
	self ringer ring
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
	""

	| crc |
	crc := crsCalculator crcFor: datos.
	self connection sendData: datos crc: crc
]
