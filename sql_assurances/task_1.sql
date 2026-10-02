SELECT
    libelle,
    nbplaces,
    modele,
    couleur,
    immat
FROM vehicules
JOIN types_vehicules ON vehicules.type_voiture = types_vehicules.id ;
