Class {
	#name : #CuatroGConnection,
	#superclass : #Object,
	#instVars : [
		'symb'
	],
	#category : #DispositivoMovil
}

{ #category : #ssl }
CuatroGConnection >> connect [
	^ self logo
]

{ #category : #initialization }
CuatroGConnection >> initialize [
	symb := '4G'
]

{ #category : #'as yet unclassified' }
CuatroGConnection >> logo [
	^ symb
]

{ #category : #'as yet unclassified' }
CuatroGConnection >> transmit: data crc: crc [
	^ ' Datos enviados por 4G  '
]
