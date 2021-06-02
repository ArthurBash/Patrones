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
Dispositivo >> conectarCon: unaConexion [
	| showBan |
	showBan := unaConexion pict.
	self display
		showBanner: 'Dispositivo: Conectando por ' , showBan.
	connection := unaConexion.
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

{ #category : #'as yet unclassified' }
Dispositivo >> crc [
	^ crsCalculator
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
	| crc mostrar |
	self display showBanner: 'Calculando la redundancia de ' , datos.
	crc := crsCalculator crcFor: datos.
	self display showBanner: 'Datos asegurados, enviando .....'.
	mostrar:=self connection sendData: datos crc: crc.
	self display showBanner: (mostrar).
	^mostrar
]
