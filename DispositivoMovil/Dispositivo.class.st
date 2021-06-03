Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'crcCalculator',
		'ringer',
		'display'
	],
	#category : #DispositivoMovil
}

{ #category : #accessing }
Dispositivo >> conectarCon: unaConexion [
	| showBan |
	showBan := unaConexion pict.
	Transcript show: 'Dispositivo: Conectando por ' , showBan;cr.
	connection := unaConexion.
	self display showBanner: 'Simbolo: ' , showBan.
	self ringer ring.
	^ showBan
]

{ #category : #'as yet unclassified' }
Dispositivo >> configurarCRC: unCRCcalculator [
	Transcript show: 'Dispositivo: Configurando CRC'; cr.
	crcCalculator := unCRCcalculator.
	Transcript show: 'Dispositivo: Nuevo CRC configurado'; cr. 
]

{ #category : #accessing }
Dispositivo >> connection [
	^ connection
]

{ #category : #'as yet unclassified' }
Dispositivo >> crc [
	^ crcCalculator
]

{ #category : #accessing }
Dispositivo >> display [ 
	^ display
]

{ #category : #initialization }
Dispositivo >> initialize [
	ringer := Ringer new.
	display := DisplayDispositivo new.
	crcCalculator := CRC16_Calculator new.
]

{ #category : #accessing }
Dispositivo >> ringer [
	^ringer
]

{ #category : #commands }
Dispositivo >> send: datos [
	| crc |
	crc := crcCalculator crcFor: datos.
	self connection sendData: datos crc: crc
]
