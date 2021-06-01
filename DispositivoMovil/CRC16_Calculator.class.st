Class {
	#name : #'CRC16_Calculator',
	#superclass : #StrategyCrc,
	#category : #DispositivoMovil
}

{ #category : #'as yet unclassified' }
CRC16_Calculator >> crcFor: datos [
	"Retorna el CRC16 para el string datos"

	^ CRC crc16FromCollection: datos
]
