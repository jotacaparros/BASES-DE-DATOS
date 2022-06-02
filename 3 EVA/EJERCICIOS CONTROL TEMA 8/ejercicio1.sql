SELECT gusta.nom_usuario_1, perfil.nom_usuario, perfil.fechanac, perfil.email FROM perfil
JOIN usuario ON perfil.nom_usuario = usuario.nom_usuario
JOIN gusta ON usuario.nom_usuario = gusta.nom_usuario_2
WHERE gusta.nom_usuario_1 = 'emgonzalez';