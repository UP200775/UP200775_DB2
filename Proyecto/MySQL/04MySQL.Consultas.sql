/*Crear vista*/
create view title_unavail
AS
Select movies.title_id, media.media_id, rental_history.rental_date
from Online_Media_Rental.movies ,Online_Media_Rental.rental_history,Online_Media_Rental.media
where rental_history.media_id = media.media_id
and movies.title_id = media.title_id
and return_date is null;

/*Mostar vista*/
select * from title_unavail;

/*Crear indice*/
create index Customer_lastName_indx 
ON customers(last_name);

/*Mostrar indice*/
show index from customers;

/*Crear sinonimo de una manera alternativa en MySQL*/
create view tu as
select * from title_unavail;

/*Mostar indice*/
select * from tu;

/*Un querry que muestre, nombre del cliente, fecha de renta, formato, titulo de pelicula, comentario de cliente, nombre del actor principal de la pelicula*/
SELECT c.last_name, rh.rental_date, me.format, m.title, sb.comments, a.stage_name
FROM customers c, rental_history rh, media me, movies m, star_billings sb, actors a
WHERE c.customer_id = rh.customer_id
and rh.media_id = me.media_id
and me.title_id = m.title_id
and m.title_id = sb.title_id
and sb.actor_id = a.actor_id;

/*Mostrar Actor y Pelicula de peliculas con clasificacion R que no han sido devueltas*/
SELECT c.last_name, a.stage_name, m.title, m.rating, rh.return_date
FROM actors a, movies m, rental_history rh, star_billings sb, media me, customers c
WHERE a.actor_id = sb.actor_id
    and m.title_id = sb.title_id
    and me.media_id = rh.media_id
    and m.title_id = me.title_id
    and c.customer_id = rh.customer_id
    and m.rating = 'R'
    and rh.return_date is NULL;

/*Mostrar el ID de pelicula, nombre de pelicula y cantidad de copias en DVD que tardaron mas de 15 dias en ser devueltas CON WITH*/    
with copies as
(SELECT e.media_id, e.title_id, m.title, e.format
from movies m, media e
where m.title_id = e.title_id
and e.format like 'DVD'),
	rentalday as
    (select media_id
    from rental_history
    where (return_date-rental_date)>15),
    rentaldelays as(select c.title_id, count(c.title_id) quantity
					from copies c, rentalday r
                    where c.media_id=r.media_id
                    group by c.title_id)
	select rd.title_id, m.title, rd.quantity
    from movies m, rentaldelays rd
    where m.title_id = rd.title_id;

/*Mostrar el ID de pelicula, nombre de pelicula y cantidad de copias en DVD que tardaron mas de 15 dias en ser devueltas CONTANDO NULOS*/
select a.title_id, d.titulo, d.Cantidad
from movies a inner join (select m.title as titulo, COUNT(d.format) as Cantidad
                          from rental_history h inner join media d using (media_id)
                          inner join movies m using (title_id)
                          where ((h.return_date - h.rental_date >= 15) or (sysdate()-h.rental_date >= 15)) and d.format = 'DVD' 
                          GROUP BY m.title) d on (a.title = d.titulo);
                          
/*Muestrame el nombre de la película, la cantidad en DVD y la cantidad en VHS*/
select mo.title,
 count(case me.format when 'DVD' then 'DVD'  end) "DVD",
 count(case me.format when 'VHS' then 'VHS'  end) "VHS",
 count(*) total
from movies mo INNER JOIN  media me on mo.title_id=me.title_id 
group by mo.title;