--Crear vista
CREATE VIEW title_unavail
AS SELECT m.title_id, d.media_id, r.rental_date, r.return_date
FROM movies m, media d, rental_history r
WHERE r.media_id = d.media_id
and m.title_id = d.title_id
and return_date is null;

--Mostar vista
select * from title_unavail;

--Crear Indice
CREATE INDEX OMR_Customer_LastName_idx
ON customers(last_name);

--Mostrar Indice
select * from user_indexes
where index_name = 'OMR_CUSTOMER_LASTNAME_IDX';

--Crear sinonimo
CREATE or replace SYNONYM tu FOR title_unavail;

--Mostar sinonimo
select * from tu;

--Un querry que muestre, nombre del cliente, fecha de renta, formato, titulo de pelicula ,comentario de cliente ,nombre del actor principal de la pelicula
SELECT c.LAST_NAME, r.RENTAL_DATE, m.FORMAT, mo.TITLE, s.COMMENTS, a.STAGE_NAME
from customers c inner join rental_history r on (c.CUSTOMER_ID = r.CUSTOMER_ID) 
    INNER join media m on (r.MEDIA_ID = m.MEDIA_ID) 
    INNER JOIN movies mo on (m.TITLE_ID = mo.TITLE_ID)
    INNER JOIN star_billings s on (mo.TITLE_ID = s.TITLE_ID) 
    INNER JOIN actors a on (s.ACTOR_ID = a.ACTOR_ID);

---Mostrar Actor y Pelicula de peliculas con clasificacion R que no han sido devueltas
SELECT c.last_name, a.stage_name, m.title, m.rating, rh.return_date
FROM actors a, movies m, rental_history rh, star_billings sb, media me, customers c
WHERE a.actor_id = sb.actor_id
    and m.title_id = sb.title_id
    and me.media_id = rh.media_id
    and m.title_id = me.title_id
    and c.customer_id = rh.customer_id
    and m.rating = 'R'
    and rh.return_date is NULL;
    
---Mostrar el ID de pelicula, nombre de pelicula y cantidad de copias en DVD que tardaron mas de 15 dias en ser devueltas CON WITH
with copies as
(SELECT e.media_id, e.title_id, m.title, e.format
from movies m, media e
where m.title_id = e.title_id
and e.format like 'DVD'),
    rentalday as
    (select media_id
    from rental_history
    where (to_char(return_date,'ddd')-to_char(rental_date,'ddd'))>15),
    rentaldelays as(
    select c.title_id, count(c.title_id) quantity
    from copies c, rentalday r
    where c.media_id=r.media_id
    group by c.title_id)
    select rd.title_id, m.title, rd.quantity
    from movies m, rentaldelays rd
    where m.title_id = rd.title_id;

---Mostrar el ID de pelicula, nombre de pelicula y cantidad de copias en DVD que tardaron mas de 15 dias en ser devueltas CONTANDO NULOS
select a.title_id, d.titulo, d.Cantidad
from movies a inner join (select m.title as titulo, COUNT(d.format) as Cantidad
                          from rental_history h inner join media d using (media_id)
                          inner join movies m using (title_id)
                          where ((h.return_date - h.rental_date >= 15) or (sysdate-h.rental_date >= 15)) and d.format = 'DVD' 
                          GROUP BY m.title) d on (a.title = d.titulo);
    
--Muestrame el nombre de la película, la cantidad en DVD y la cantidad en VHS
select mo.title,
 count(case me.format when 'DVD' then 'DVD'  end) "DVD",
 count(case me.format when 'VHS' then 'VHS'  end) "VHS",
 count(*) total
from movies mo INNER JOIN  media me on mo.title_id=me.title_id 
group by mo.title;