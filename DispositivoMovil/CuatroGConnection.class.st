Class {
	#name : #CuatroGConnection,
	#superclass : #Object,
	#instVars : [
		'symb'
	],
	#category : #DispositivoMovil
}

{ #category : #initialization }
CuatroGConnection >> initialize [
	symb := '4G'
]

{ #category : #'as yet unclassified' }
CuatroGConnection >> symb [
	^ symb
]

{ #category : #'as yet unclassified' }
CuatroGConnection >> transmit: data crc: crc [
	Transcript show: ' Datos enviados por 4G  '.
	^ self symb
]
