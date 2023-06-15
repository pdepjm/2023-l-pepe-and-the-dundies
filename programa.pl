% El patio de Pepe (ejercicio visto en clase)

esVenenosa(petunia).
esVenenosa(rosa).
esVenenosa(menta).

esVenenosa(arlequin).
esVenenosa(bromadiolona).

esPlanta(petunia).
esPlanta(rosa).
esPlanta(menta).
esPlanta(girasol).

tieneGradoVeneno(Elemento, 3):-
    esPlanta(Elemento),
    esVenenosa(Elemento).

tieneGradoVeneno(arlequin, 40).
tieneGradoVeneno(bromadiolona, 20).
tieneGradoVeneno(pepe, 18).

% esPlantaComestible/1: una planta será comestible cuando no sea venenosa. 
%INVERSIBILIDAD

esPlantaComestible(Elemento):-
    esPlanta(Elemento),
    not(esVenenosa(Elemento)).

% esHeavy/1: algo será heavy cuando su nivel de veneno sea mayor a 10 y menor a 30. 

esHeavy(Elemento):-
    tieneGradoVeneno(Elemento, Cantidad),
    between(10, 30, Cantidad).

% esIncomible/1 un elemento será incomible cuando su nivel de veneno sea mayor a 30. 
esIncomible(Elemento):-
    tieneGradoVeneno(Elemento, Cantidad),
    Cantidad > 30.

% combinacionIncomible/2: una combinación de 2 elementos es incomible si la suma de sus grados es 21.
combinacionIncomible(Elemento1, Elemento2):-
    tieneGradoVeneno(Elemento1, Grado1),
    tieneGradoVeneno(Elemento2, Grado2),
    21 is Grado1 + Grado2.



%----------------------------------------------
% The dundies - Práctica labo

%consumoDeCafe/2 -> Empleado, Cant

consumoDeCafe(michael, 2).
consumoDeCafe(dwight,5).
consumoDeCafe(angela,1).
consumoDeCafe(jim,2).
consumoDeCafe(kevin,0).
consumoDeCafe(oscar,1).
consumoDeCafe(toby,3).
consumoDeCafe(phyllis,4).
consumoDeCafe(ryan,2).
consumoDeCafe(kelly,3).
consumoDeCafe(andy,3).
consumoDeCafe(stanley,4).
consumoDeCafe(meredith,1).
consumoDeCafe(erin,0).
consumoDeCafe(darryl,0).

%importancia/2 -> Dundie, Importancia

importancia(mejorJefeDelMundo,100).
importancia(sensei,5).
importancia(jimothy,10).
importancia(mejorPapa,15).
importancia(mejorMama,15).
importancia(masPequenia,10).
importancia(zapatosBlancos,30).
importancia(masAtractivoDeLaOficina,20).
importancia(mejorCoqueteo,10).
importancia(crucigrama,15).
importancia(peorVendedor,5).
importancia(abejaMasOcupada,10).
importancia(compromisoMasLargo,15).
