#VARIOS JIRA

BUNDLE FIELDS
DYNAMIC FORMS
ELEMENTS CONNECT
Custom Fields
ScriptRunner -- Fields


# Para añadir los formularios con campo personalizado (el típico en amarillo con el texto), hay que tocar
-behaviours -- beh_initializerAvisosGeneral.groovy
-utils -- RequestTypeEnum.groovy


# Los campos que salen al escalar, por ejemplo GSU_ GS_, etc. son Elements Connect
Para llegar a ellos tenemos que ir a "manage apps" dentro del proyecto y luego abajo de to EC


## ELEMENTS CONNECT
Tras la formación del maestro Torrón, si en los Elements Connect sustituyo esta sentencia por esta otra:
where group_name LIKE 'GS%' or group_name like 'SAT%' or group_name like 'SEGURIDADE%' or group_name like 'UXAI%'
where group_name LIKE 'GS[A-Z]%' or group_name like 'SAT%' or group_name like 'SEGURIDADE%' or group_name like 'UXAI%'