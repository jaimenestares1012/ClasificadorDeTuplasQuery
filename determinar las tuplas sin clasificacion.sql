/query para determinar las tuplas sin clasificacion/
select trim (od.descripcion_normalizada) as descripcion, count (*) as nrows 
from webscraping w inner join oferta o 
on (w.id_webscraping =o.id_webscraping)
inner join oferta_detalle od
on (o.id_oferta = od.id_oferta)
left outer join ofertaperfil_tipo opt
on (od.ofertaperfil_id =opt.ofertaperfil_id)
where length(trim(od.descripcion_normalizada))<=120
and o.id_estado is null and opt.ofertaperfil_id is null and od.ind_activo is null
group by trim (od.descripcion_normalizada)
order by 2 desc;