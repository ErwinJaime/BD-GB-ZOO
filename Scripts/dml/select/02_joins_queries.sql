SELECT E.nombre as especie, ec.nombre as estado_conservacion, FA.nombrecomun

FROM especie E INNER JOIN estado_conservacion EC ON E.idestadoconservacion = EC.id
INNER JOIN familia FA ON E.idfamilia = FA.id
WHERE E.nombre LIKE '%Delfín%';

-- INNER JOIN
SELECT A.nombre as animales, CU.nombre as cuidador, H.nombre

FROM animales A INNER JOIN cuidador CU ON A.idcuidador = CU.id
INNER JOIN habitat H ON A.idhabitat = H.id;

 -- LEFT JOIN
SELECT A.nombre as animales, H.nombre
FROM animales A LEFT JOIN habitat H ON A.idhabitat = H.id;

--RIGT JOIN
SELECT C.nombre as animales, A.nombre
FROM cuidador C RIGHT JOIN animales A ON C.idespecialidad = A.id;


