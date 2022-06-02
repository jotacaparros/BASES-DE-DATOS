SELECT cita.id, usuario1.nom_usuario, encuesta1.valoracion, usuario2.nom_usuario, encuesta2.valoracion FROM encuesta as encuesta1
JOIN usuario as usuario1
	ON usuario1.nom_usuario = encuesta1.nom_usuario
JOIN cita
	ON encuesta1.cita = cita.id
JOIN encuesta as encuesta2
	ON encuesta2.cita = cita.id
JOIN usuario as usuario2
	ON usuario2.nom_usuario = encuesta2.nom_usuario
WHERE usuario1.nom_usuario != usuario2.nom_usuario AND encuesta1.valoracion = encuesta2.valoracion
GROUP BY cita.id;
	