1----------------------------------------------
select emp.FIRST_NAME as empleado,rop.FECHA as FECHA_DE_COMPRA,pro.DESCRIPCION,pro.TITULO 
     from PRODUCTOS pro 
     inner join registro_op rop  on rop.producto_id=pro.producto_id
     inner join empleados emp on emp.EMPLEADO_ID=rop.EMPLEADO_ID
     where pro.PRODUCTO_ID  = (select RP.producto_id 
                               from registro_op RP
                               where empleado_id=(select empleado_id 
                                                  from EMPLEADOS 
                                                  where FIRST_NAME='LUIS')
        );
                     
---------------------
select descripcion , titulo, PRODUCTO_ID, registro
from productos
where PRODUCTO_ID in (   select producto_id
                         from registro_op
                         where cliente_id in ( select cliente_id
                                               from clientes
                                               where correo= :DATO
                                              )
                     ) ; 
                     

2-----------------------------------------------
create or replace FUNCTION dame_nombre(id varchar2)
 RETURN varchar2 
 
 IS 
  
   nombre varchar2(20) ;
  BEGIN 

        select first_name into nombre from empleados
        where EMPLEADO_ID=id;
        return nombre;
END ;

3--------------------------------------------

create or replace procedure aumentar_todo
is
begin
    update detalle_op
    set monto_base = monto_base + 100;
end aumentar_todo;
----------
create or replace procedure aumento_precio
    (d_id in detalle_op.monto_base%TYPE)
is
begin
    update detalle_op
    set monto_base = monto_base + 100
    where detalle_id=d_id;
end aumento_precio;

4--------------------------------------------

create or replace procedure despedir_empleado(id IN VARCHAR2)
is 
begin
    delete from empleados
    where EMPLEADO_ID=id;
end;
---------------
create or replace procedure aumento_precio
    (d_id in detalle_op.monto_base%TYPE)
is
begin
    update detalle_op
    set monto_base = monto_base + 100
    where detalle_id=d_id;
end aumento_precio;