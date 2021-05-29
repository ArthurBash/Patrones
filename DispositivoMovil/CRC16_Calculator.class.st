Class {
	#name : #'CRC16_Calculator',
	#superclass : #StrategyCrc,
	#category : #DispositivoMovil
}

{ #category : #'as yet unclassified' }
CRC16_Calculator >> crcFor: datos [
	" retorna el crc16 para el string 'message' "

	^ CRC crc16FromCollection: datos
]
