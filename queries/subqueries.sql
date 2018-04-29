-- Subconsultas en el SELECT:
select e.identificacion, (select c.nombre from cargos c where c.id = e.cargos_id and estado = 1) as cargo
from empleados e where estado = 1;

-- Subconsultas en el WHERE:

-- Menor salario (No óptimo)
select c.salario, c.nombre
from cargos c where c.estado = 1
order by c.salario limit 1;

-- Menor salario (Óptimo)
select c.salario, c.nombre
from cargos c
where c.salario = (select min(c.salario) from cargos c where estado = 1 )
and c.estado = 1;

-- La persona de sexo femenino que mas gana
select e.identificacion, e.primer_nombre, c.nombre as cargo, c.salario as salario, vp1.nombre as genero
from empleados e
inner join cargos c on e.cargos_id = c.id
inner join valor_parametro vp1 on e.genero_vp = vp1.id
and vp1.id = 4
and c.salario = (select max(salario) from empleados e
				inner join cargos c on e.cargos_id = c.id
				inner join valor_parametro vp on e.genero_vp = vp.id
				and vp.id = 4
				and e.estado = 1 and c.estado = 1 and vp.estado = 1)
and e.estado = 1 and vp1.estado = 1 and c.estado = 1;