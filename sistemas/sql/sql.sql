## 2. Configuración de Base de Datos

### 2.1 Cliente SQL
- URL: https://squirrel-sql.sourceforge.io/#installation
- Driver: jTDS JDBC Driver (https://sourceforge.net/projects/jtds/)

### 2.2 Configuración de Bases de Datos
#### JIRA
- PRE: jdbc:jtds:sqlserver://10.8.32.125:1433;databaseName=JIRADBPRE
- PRO: jdbc:jtds:sqlserver://10.8.32.138:1433;databaseName=JIRADB
- Usuario: JIRAADMIN
- Contraseña: (Keepass - fichero CAU.kdbx)

#### Confluence
- PRE: jdbc:jtds:sqlserver://ersa.udc.pri:1433;database=CONFLUENCEDB
- PRO: jdbc:jtds:sqlserver://pandia.udc.pri:1433;database=CONFLUENCEDBP
- Usuario: CONFADMINP
- Contraseña: S0luc10nInt3gr4l



## Filtros JIRA SD

status in (Open, "In Progress", "Waiting for customer", "Waiting for approval", "Waiting for provider") AND "Grupo de Soporte" in ("GS_SISTEMAS [GS_SISTEMAS]", "GS_SISTEMAS_AD [GS_SISTEMAS_AD]", "GS_SISTEMAS_BACKUP [GS_SISTEMAS_BACKUP]", "GS_SISTEMAS_VDI [GS_SISTEMAS_VDI]")


reporter = "david.varela.garrido" order by created DESC
project = UTS AND Asignado = "Marcos Silvar Sánchez [marcos.silvar]" order by updated DESC

## ROLES Y GRUPOS
grupo automático: VEPEU-SECRETARIA

select pt.personEntity 
from PersonType pt 
where pt.departmentEntity.code='UN1756I1600' 
and pt.personEntity.status='ACTIVE' and pt.personEntity.isEx=FALSE

select pt.personEntity from PersonType pt 
where pt.personEntity.login in ('aida.cangasb', 'david.mloira')
and pt.personEntity.status='ACTIVE' and current_date() < to_date('01/10/2023','dd/mm/yyyy') and pt.personEntity.isEx=FALSE



--Seleccionar los formularios abiertos en el último año en el proyecto UTS
SELECT 
    SUMMARY, COUNT(*) AS openI
FROM 
    [JIRADCDB-PRO].dbo.jiraissue
WHERE 
    PROJECT = 10000 
    AND CREATED > '2023-01-11 10:30:23.347' 
 
GROUP BY 
    summary
   ORDER BY openI DESC;
    
 --seleccionar formulario por summary 
 SELECT 
    * 
FROM 
    [JIRADCDB-PRO].dbo.jiraissue
WHERE SUMMARY = 'Solicitude de ampliación de espazo dun sitio Documenta Alfresco' 
AND CREATED > '2023-01-11 10:30:23.347';



SELECT x.* FROM [JIRADCDB-PRO].dbo.AO_54307E_VIEWPORTFORM x
