Class {
	#name : #VoorheesExporter,
	#superclass : #Object,
	#instVars : [
		'neoJSON'
	],
	#category : #Biblioteca
}

{ #category : #exporting }
VoorheesExporter >> export: socios [
	"exportedString := '[' , Character cr asString
		, (self exportSocio: socios first).
	socios allButFirst
		do: [ :socio | 
			exportedString := exportedString , ',' , Character cr asString
				, (self exportSocio: socio) ].
	^ exportedString , Character cr asString , ']'"

	| coleccionTotal |
	coleccionTotal := OrderedCollection new.
	coleccionTotal := socios
		collect: [ :socio | 
			Dictionary new
				at: #Nombre put: socio nombre;
				at: #Email put: socio email;
				at: #Legajo put: socio legajo; yourself ].
	^ NeoJSONWriter toStringPretty: coleccionTotal
]

{ #category : #exporting }
VoorheesExporter >> exportSocio: aSocio [
	^
		'	{', Character cr asString,
		'		"nombre" : "',aSocio nombre,'",',Character cr asString,
		'		"email" : "',aSocio email,'",',Character cr asString,
		'		"legajo" : "',aSocio legajo,'"',Character cr asString,
		'	}'
]
