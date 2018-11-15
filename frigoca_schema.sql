	CREATE SEQUENCE SQ_PRODUCTOS START WITH 1 INCREMENT BY 1;
	CREATE SEQUENCE SQ_REGISTRO_OP START WITH 1 INCREMENT BY 1;
	CREATE SEQUENCE SQ_DETALLE_OP START WITH 1 INCREMENT BY 1;
	CREATE SEQUENCE SQ_DETALLE_PRO START WITH 1 INCREMENT BY 1;
	CREATE SEQUENCE SQ_CLIENTES START WITH 1 INCREMENT BY 1;
	CREATE SEQUENCE SQ_EMPLEADOS START WITH 1 INCREMENT BY 1;

CREATE TABLE PRODUCTOS (
	producto_id                  VARCHAR2(50) NOT NULL,
	titulo                       VARCHAR2(50) NOT NULL,
	descripcion                  VARCHAR2(50) NOT NULL,
	codigo_barra                 VARCHAR2(50) NOT NULL,
	referencia_cod               VARCHAR2(50) NOT NULL,
	cpe_cod                      VARCHAR2(50),
	registro                     VARCHAR2(50),
	CONSTRAINT PRODUCTO_PK PRIMARY KEY (producto_id,codigo_barra,cpe_cod)
);

CREATE TABLE EMPLEADOS (
	EMPLEADO_ID  VARCHAR2(50) NOT NULL,
	FIRST_NAME   VARCHAR2(50) NOT NULL,
    LAST_NAME    VARCHAR2(50) NOT NULL,
    CI           VARCHAR2(50) NOT NULL,
	EMAIL       VARCHAR2(50) NOT NULL,
    CONSTRAINT EMPLEADO_ID_PK PRIMARY KEY (EMPLEADO_ID),
	CONSTRAINT CHK_UNICO_EMAIL UNIQUE(EMAIL)
	);
    
CREATE TABLE CLIENTES (
    CLIENTE_ID INTEGER NOT NULL,
    descripcion  CLOB NOT NULL,
    correo VARCHAR2(50) NOT NULL,
    CONSTRAINT CLIENTE_ID_PK PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT CHK_UNICO_CORREO UNIQUE(CORREO)
	);

CREATE TABLE REGISTRO_OP (
	registro_id     VARCHAR2(50) NOT NULL,
	tipo            CHAR(1) NOT NULL,
	fecha           DATE NOT NULL,
	producto_id     VARCHAR2(50) NOT NULL,
    empleado_id  VARCHAR2(50) NOT NULL,
    codigo_barra      VARCHAR2(50) NOT NULL,
    cpe_cod                     VARCHAR2(50),
    cliente_id INTEGER NOT NULL,
	constraint CHK_IN_TIPO CHECK (tipo in ('D','V')),
	CONSTRAINT REGISTRO_OP_PK PRIMARY KEY (registro_id,empleado_id,cliente_id,codigo_barra,cpe_cod),
	CONSTRAINT REGISTRO_OP_PRODUCTO_FK FOREIGN KEY (producto_id,codigo_barra,cpe_cod) REFERENCES PRODUCTOS(producto_id,codigo_barra,cpe_cod) on delete cascade,
    CONSTRAINT REGISTRO_EMPLEADOS_FK FOREIGN KEY (empleado_id) REFERENCES EMPLEADOS(EMPLEADO_ID) on delete cascade,
    CONSTRAINT REGISTRO_CLIENTES_FK FOREIGN KEY (cliente_id) REFERENCES CLIENTES(CLIENTE_ID) on delete cascade
);

CREATE TABLE DETALLE_OP (
	detalle_id VARCHAR2(50) NOT NULL,
	monto_base number(25,5) NOT NULL,
	peso number(20,5) NOT NULL, -- MISMO PESO DEL DETALLE (TIPO DE VALOR PENDIENTE)
	cantidad number(10) NOT NULL, -- DETALLE NOT NULL EN INSERT (INSERT DESDE FUERA)
	iva number(10,2) NOT NULL,
	registro_id     VARCHAR2(50) NOT NULL,
    empleado_id  VARCHAR2(50) NOT NULL,
    codigo_barra      VARCHAR2(50) NOT NULL,
    cpe_cod                     VARCHAR2(50),
     CLIENTE_ID INTEGER NOT NULL,
	CONSTRAINT DETALLE_OP_PK PRIMARY KEY (detalle_id,registro_id,empleado_id,CLIENTE_ID,codigo_barra,cpe_cod),
	CONSTRAINT DETALLE_OP_REGISTRO_OP_FK FOREIGN KEY (registro_id,empleado_id,CLIENTE_ID,codigo_barra,cpe_cod)
    REFERENCES REGISTRO_OP(registro_id,empleado_id,cliente_id,codigo_barra,cpe_cod) on delete cascade
);

CREATE TABLE DETALLE_PRO (
    detalle_pro_id    VARCHAR2(50) NOT NULL,
    monto_base        NUMBER(20,3) NOT NULL,
    PESO              NUMBER(10,3) NOT NULL,
    producto_id       VARCHAR2(50) NOT NULL,
    codigo_barra      VARCHAR2(50) NOT NULL,
    cpe_cod           VARCHAR2(50),
    CONSTRAINT PK_DETALLE_PRO PRIMARY KEY (detalle_pro_id,producto_id,codigo_barra,cpe_cod),
    CONSTRAINT DETALLE_PRO_PRODUCTO_FK FOREIGN KEY (producto_id,codigo_barra,cpe_cod) REFERENCES PRODUCTOS(producto_id,codigo_barra,cpe_cod) on delete cascade,
    CONSTRAINT CHK_UNICO_DETALLE_PRO UNIQUE(producto_id)    
    );
    
CREATE TABLE REGISTRO_TELEFONO (
	REGISTRO_TELEFONO_ID  VARCHAR2(50) NOT NULL,
    numero           VARCHAR2(50) NOT NULL,
    CLIENTE_ID       INTEGER NOT NULL,
    CONSTRAINT REGISTRO_TELEFONO_ID_PK PRIMARY KEY (REGISTRO_TELEFONO_ID),
    CONSTRAINT CHK_UNICO_numero UNIQUE(numero),
    CONSTRAINT RG_TLF_ID_FK FOREIGN KEY (CLIENTE_ID)
    REFERENCES CLIENTES(CLIENTE_ID) on delete cascade 
	);



CREATE TABLE REGISTRO_TELEFONO_EMP (
    REGISTRO_TELEFONO_EMP_ID  VARCHAR2(50) NOT NULL,
    numero           VARCHAR2(50) NOT NULL,
    EMPLEADO_ID       VARCHAR2(50) NOT NULL,
    CONSTRAINT REGISTRO_TELEFONO_EMP_ID_PK PRIMARY KEY (REGISTRO_TELEFONO_EMP_ID),
    CONSTRAINT CHK_UNICO_RG_TLF_EMP_numero UNIQUE(numero),
    CONSTRAINT RG_TLF_EMP_ID_FK FOREIGN KEY (EMPLEADO_ID)
    REFERENCES EMPLEADOS(EMPLEADO_ID) on delete cascade
	);