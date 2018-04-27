-- JOINS Examples (empresa schema used)

select * from empleados;

select * from cargos;

-- Inner Join:

select e.identificacion, c.nombre as cargo
from empleados e
inner join cargos c on e.cargos_id = c.id
where e.estado = 1 and c.estado = 1;

select e.identificacion, vp1.nombre as tipo_identificacion, vp2.nombre as genero,
c.nombre as cargo, vp3.nombre as departamento
from empleados e
inner join valor_parametro vp1 on e.tipo_identificacion_vp = vp1.id
inner join valor_parametro vp2 on e.genero_vp = vp2.id
inner join cargos c on e.cargos_id = c.id
inner join valor_parametro vp3 on e.departamento_vp = vp3.id
where e.estado = 1 and vp1.estado = 1 and vp2.estado = 1 and c.estado = 1 and vp3.estado = 1;


-- Right Join:

select c.nombre as cargo
from empleados e
right join cargos c on e.cargos_id = c.id
where e.id is null
and c.estado = 1;

-- Left Join:

select c.nombre as cargo
from cargos c
left join empleados e on e.cargos_id = c.id
where e.id is null
and c.estado = 1