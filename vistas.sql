SELECT areas.id_area,areas.piso, CONCAT(COALESCE(nombre, ''), ' ', COALESCE(CONCAT('Habitacion: ',numero), '')) AS area_habitacion FROM hotelclean.areas left join areacomun using(id_area) left join habitacion using(id_area);

create view areahabitacion2 as
SELECT areas.id_area,areas.piso, CONCAT(COALESCE(nombre, ''), COALESCE(numero,'')) AS area_habitacion FROM hotelclean.areas left join areacomun using(id_area) left join habitacion using(id_area);

create view nombrecompleto as select id_empleado, CONCAT(nombre,' ',apellido_paterno,' ',apellido_materno) as nomcompleto from empleado;