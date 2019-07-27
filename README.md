# Experimento de Expediente Médico

Esta es una pequeña prueba de concepto de un expediente médico. Está hecha con ruby, sinatrarb y postgresql. Una vez corriendo, la aplicación contesta en la ruta `/demo/v1/{id}/record`, dónde `{id}` es un identificador numérico positivo. En caso de ser encontrado, devuelve un JSON con la siguiente información:

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
Para que esto jale, necesitas tener:
- Ruby (yo usé 2.6.3, pero 2.4 ó mayor debería funcionar)
- PostgreSQL (yo usé el 11, pero 9.6 para arriba debería funcionar)

Si no tienes alguno de estos instalado, te recomiendo vayas a las páginas oficiales de cada proyecto para instrucciones mucho mejores de las que yo pudiera hacer.

[https://www.ruby-lang.org/en/](https://www.ruby-lang.org/en/)
[https://www.postgresql.org](https://www.postgresql.org)

Una vez que tengas todo eso, clona el repositorio en tu máquina, y corre:
```bash
bin/setup
```
para instalarlo. Se crean 100 pacientes por default, con `id`s incrementales del 1-100. Pa que sepas a dónde probar los requests.

Cabe resaltar que sólo lo probé en una Mac, pero cualquier máquina linux debería funcionar también.

## Cómo hago que corra?
Está re fácil, sólo corre:
```bash
bin/start
```
y se prenderá un server local que corre en el puerto `9292`. Para detenerlo, usa `Ctrl-C`.
