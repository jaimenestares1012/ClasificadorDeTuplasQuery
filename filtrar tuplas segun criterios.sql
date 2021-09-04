/*query para filtrar tuplas segun criterios */

select od.id_ofertadetalle, trim (od.descripcion_normalizada) as descripcion 
from webscraping w inner join oferta o
on (w.id_webscraping =o.id_webscraping)
inner join oferta_detalle od
on (o.id_oferta =od.id_oferta)
left outer join ofertaperfil_tipo opt 
on (od.ofertaperfil_id=opt.ofertaperfil_id)
where length(trim (od.descripcion_normalizada))<=200
and o.id_estado is null and opt.ofertaperfil_id is null and ind_activo is null
and (position ('INTELIGENCIA ARTIFICIAL' in trim (descripcion_normalizada))>0)
order by 2;