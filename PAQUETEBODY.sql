--------------------------------------------------------
-- Archivo creado  - lunes-abril-15-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body MI_PAQUETE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "MARCO"."MI_PAQUETE" AS
    PROCEDURE sp_insertAndListProducts(
        idProducto IN NUMBER,
        nombre IN VARCHAR2,
        fecRegistro IN DATE,
        cursor OUT producto_cursor,
        codigoRespuesta OUT NUMBER,
        mensajeRespuesta OUT VARCHAR2
    ) AS
    BEGIN
        -- Insertar el nuevo producto
        INSERT INTO PRODUCTO (idProducto, nombre, fecRegistro) VALUES (idProducto, nombre, fecRegistro);

        -- Abrir el cursor para devolver todos los productos
        OPEN cursor FOR
        SELECT * FROM PRODUCTO;

        -- Establecer código y mensaje de respuesta
        codigoRespuesta := 0;
        mensajeRespuesta := 'Ejecución con éxito';
    EXCEPTION
        WHEN OTHERS THEN
            -- En caso de error, establecer código y mensaje de respuesta correspondientes
            codigoRespuesta := 1;
            mensajeRespuesta := 'Error: ' || SQLERRM;
    END sp_insertAndListProducts;
END mi_paquete;

/
