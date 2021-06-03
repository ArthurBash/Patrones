Class {
	#name : #DispositivoTest,
	#superclass : #TestCase,
	#instVars : [
		'dispositivo'
	],
	#category : #'DispositivoMovil-Tests'
}

{ #category : #running }
DispositivoTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	dispositivo := Dispositivo new
]

{ #category : #tests }
DispositivoTest >> testConectarCon [
	| wifiCon cuatroGCon |
	wifiCon := WifiConn new.
	self assert: (dispositivo conectarCon: wifiCon) equals: wifiCon pict.
	self assert: dispositivo connection equals: wifiCon.
	cuatroGCon := Adapter4GConnection new.
	self
		assert: (dispositivo conectarCon: cuatroGCon)
		equals: cuatroGCon pict.
	self assert: dispositivo connection equals: cuatroGCon
]

{ #category : #tests }
DispositivoTest >> testConfigurarCRC [
	| unCRC |
	unCRC := CRC16_Calculator new.
	dispositivo configurarCRC: unCRC.
	self assert: dispositivo crc equals: unCRC.
	self assert: (unCRC crcFor: 'unMensaje') equals: 57093.
	unCRC := CRC32_Calculator new.
	dispositivo configurarCRC: unCRC.
	self assert: dispositivo crc equals: unCRC.
	self assert: (unCRC crcFor: 'unMensaje') equals: 1357831006.
]

{ #category : #tests }
DispositivoTest >> testSend [
	"Pruebo el test de send con la conexión ya que no podemos cambiar la el metodo, más alla de eso simulamos el ''pasamanos'', probamos con un solo CRC ya que nos pareció indistinto sobre cual se probaba"

	| unCRC wifiCon cuatroGCon |
	unCRC := CRC16_Calculator new.
	dispositivo configurarCRC: unCRC.
	wifiCon := WifiConn new.
	dispositivo conectarCon: wifiCon.
	self
		assert: (wifiCon sendData: 'unMensaje' crc: (unCRC crcFor: 'unMensaje'))
		equals: 'Conexión: Datos enviados por WiFi'.
	cuatroGCon := Adapter4GConnection new.
	dispositivo conectarCon: cuatroGCon.
	self
		assert: (cuatroGCon sendData: 'unMensaje' crc: (unCRC crcFor: 'unMensaje'))
		equals: 'Conexión: Datos enviados por 4G'
]
