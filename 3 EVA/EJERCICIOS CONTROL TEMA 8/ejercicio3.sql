SELECT distinct usuario.nom_usuario, cita.id, encuesta.valoracion FROM encuesta 
INNER JOIN usuario
	ON encuesta.nom_usuario = usuario.nom_usuario
INNER JOIN cita
	ON encuesta.cita = cita.id
ORDER BY usuario.nombre ASC;