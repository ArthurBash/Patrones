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
	self display
		showBanner: 'Dispositivo: Conectando por ' , unaConexion logo.
	connection := unaConexion.
	showBan := unaConexion connect.
	self display showBanner: 'Simbolo: ' , showBan.
	self ringer ring.
	^ showBan
]

{ #category : #'as yet unclassified' }
Dispositivo >> configurarCRC: unCRCcalculator [
	self display showBanner: 'Configurando CRC'.
	crsCalculator := unCRCcalculator. self display
		showBanner: 'CRC configurado'
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
	crsCalculator:= CRC32_Calculator new.
]

{ #category : #accessing }
Dispositivo >> ringer [
	^ringer
]

{ #category : #commands }
Dispositivo >> send: datos [
	| crc |
	self display showBanner: 'Calculando la redundancia de ', datos.
	crc := crsCalculator crcFor: datos.
	self display showBanner: 'Datos asegurados, enviando .....'.
	self display showBanner: (self connection sendData: datos crc: crc)
	
]
