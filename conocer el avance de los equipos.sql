/* query para conocer el avance de los equipos*/
select od.equipo, max(f_equipo)	,od.ofertaperfil_id, count(*)
FROM oferta o, oferta_detalle od
where o.id_oferta = od.id_oferta 
and o.id_estado is null and od.ind_activo is null
group by od.equipo, od.ofertaperfil_id
order by 1,3  desc