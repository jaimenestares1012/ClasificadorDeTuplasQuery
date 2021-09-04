/query para clasificar las tuplas segun dimension/
update oferta_detalle
set ofertaperfil_id=1,
f_equipo=CURRENT_DATE,
equipo='LAGARTOS DE LA G4'
WHERE id_ofertadetalle in (

);