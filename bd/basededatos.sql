CREATE TABLE pregunta (
    idPregunta INT AUTO_INCREMENT PRIMARY KEY,
    textoP VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE respuesta (
    idRespuesta INT AUTO_INCREMENT PRIMARY KEY,
    textoR VARCHAR(255) NOT NULL,
    idPregunta INT,
    FOREIGN KEY (idPregunta) REFERENCES pregunta(idPregunta) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE archivos_pdf (
    id_archivo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_original VARCHAR(255) NOT NULL,
    nombre_guardado VARCHAR(255) NOT NULL,
    ruta_archivo VARCHAR(255) NOT NULL,
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;