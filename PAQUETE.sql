--------------------------------------------------------
-- Archivo creado  - lunes-abril-15-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package MI_PAQUETE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "MARCO"."MI_PAQUETE" AS
    TYPE producto_cursor IS REF CURSOR;

    PROCEDURE sp_insertAndListProducts(
        idProducto IN NUMBER,
        nombre IN VARCHAR2,
        fecRegistro IN DATE,
        cursor OUT producto_cursor,
        codigoRespuesta OUT NUMBER,
        mensajeRespuesta OUT VARCHAR2
    );
END mi_paquete;

/
