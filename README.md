# Experimento de Expediente Médico

Esta es una pequeña prueba de concepto de un expediente médico. Está hecha en [ruby 2.6.3][1], [sinatrarb 2.0.5][2], y [PostgreSQL 11][3]. Una vez corriendo, la aplicación contesta en la ruta `/demo/v1/{id}/record`, dónde `{id}` es un identificador numérico positivo. En caso de ser encontrado, devuelve un JSON con la siguiente información:

```json
{
	"codigo": 200,
	"mensaje": "Todo chido",
	"payload": {
		"no_expediente": 1234,
		"fecha_ultima_consulta": "31/12/19",
		"tipo_sangre": "A+",
		"alergias": [
			{ "nombre": "Rinitivitis", "fecha_alta": "31/12/19", "medicamento": "aspirina 100mg" },
			{ "nombre": "Gluten", "fecha_alta": "31/12/19", "medicamento": "comer en puro restaurante hipster" },
			...
		]
	}
}
```

En caso de que no lo encuentre ó suceda algún otro error, devuelve un JSON con este formato:

```json
{
	"codigo": 404,
	"mensaje": "No lo encontré"
}
```

## Cómo instalo esto?

## Cómo hago que corra?

## Extras
