--start productos data

INSERT INTO PRODUCTOS VALUES (
  '00001',
  'EMPANADA',
  'EMPANADA PA LOS PANA',
  '990444739',
  '857494023',
  '9876', 
  NULL
);

INSERT INTO PRODUCTOS VALUES (
  '00002',
  'PASTELES NO EMPANADAS',
  'PASTELES PA MAMA',
  '990234734',
  '857494090',
  '9875', 
  NULL
);

INSERT INTO PRODUCTOS VALUES (
  '00003',
  'EMPANADAAS NO PASTELES',
  'EMPANADAS PA MAMA',
  '990234739',
  '857345090',
  '759832474', 
  '0584623643'
);

INSERT INTO PRODUCTOS VALUES (
  '00004',
  'TEKCHONGOS',
  'RICO PA',
  '990232379',
  '857494093',
  '759898234', 
  'REGIS'
);

INSERT INTO PRODUCTOS VALUES (
  '00005',
  'YUKA PA',
  'PA TI PAPA',
  '990294230',
  '857494320',
  '759898230', 
  '058467623'
);

INSERT INTO PRODUCTOS VALUES (
  '00006',
  'CHURROS',
  'CHURROS MUY BUENOS',
  '990224739',
  '857114023',
  '1234', 
  NULL
);

INSERT INTO PRODUCTOS VALUES (
  '00007',
  'POLLO',
  'POLLOS GRANDES',
  '12044119',
  '347494023',
  '1176', 
  NULL
);

INSERT INTO PRODUCTOS VALUES (
  '00008',
  'NUGUETS',
  'NUGUETS BUENOS',
  '93748433',
  '239344',
  '31333', 
  NULL
);

commit;
-- end productos data
-- start EMPLEADOS
INSERT INTO EMPLEADOS VALUES (
	'0001',
	'YASIIKE',
	'GASMILE',
	'26205990',
	'GASMILE@ELLA.ESO'
);

INSERT INTO EMPLEADOS VALUES (
	'0002',
	'LUIS',
	'PANITA',
	'42205990',
	'PANITAX@TATTA.THAT'
);

INSERT INTO EMPLEADOS VALUES (
	'0003',
	'ANTONELLA',
	'LAURANO',
	'24674982',
	'ANTO@HOTMAIL.TU.SABE'
);

INSERT INTO EMPLEADOS VALUES (
	'0004',
	'DANIEL',
	'NO RECUERDO',
	'1048489303',
	'DANIEAL@SUGMAIL.ESO'
);

INSERT INTO EMPLEADOS VALUES (
	'0005',
	'MARIO',
	'GRIECO',
	'26305981',
	'MARIOJOSUEXZ@GMAIL.COM'
);

INSERT INTO EMPLEADOS VALUES (
	'0006',
	'PEDRO',
	'MARTINEZ',
	'26123444',
	'MARIXZ@GMAIL.COM'
);

INSERT INTO EMPLEADOS VALUES (
	'0007',
	'KATY',
	'KATE',
	'21123444',
	'KATY@GMAIL.COM'
);

INSERT INTO EMPLEADOS VALUES (
	'0008',
	'ZOILA',
	'BECERRA',
	'12345678',
	'TRRTRT@GMAIL.COM'
);
COMMIT;
-- end EMPLEADOS
--star clientes
    INSERT INTO CLIENTES VALUES (
        '001',
        'datos 1',
        'WILLIAM@GMAIL.COM'
    
    );
     INSERT INTO CLIENTES VALUES (
        '002',
        'datos 2',
        'MARIO@GMAIL.COM'
    
    );
    INSERT INTO CLIENTES VALUES (
        '003',
        'datos 3',
        'MARIA@GMAIL.COM'
    
    );
   INSERT INTO CLIENTES VALUES (
        '004',
        'datos 4',
        'YENIFER@GMAIL.COM'
    
    );
  INSERT INTO CLIENTES VALUES (
        '005',
        'datos 5',
        'YESICA@GMAIL.COM'
    
    );
--end clientes 
-- start REGISTRO_TELEFONO_EMP

	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'001',
			'5849301235',
			'0003'
	);

  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'002',
			'1312312512',
			'0005'
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'003',
			'574146029280',
			'0001'
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'004',
			'582347593',
			'0004'
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'005',
			'58234759224',
			'0003'
	);

COMMIT;
-- end REGISTRO_TELEFONO_EMP
--  start REGISTRO_OP
	INSERT INTO REGISTRO_OP VALUES (
		'1' ,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00001',
        '0001',
        '990444739',
        '9876', 
        '1'
	);

	INSERT INTO REGISTRO_OP VALUES (
		'2' ,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00002',
        '0002',
        '990234734',
        '9875',
        '2'
	);
  	INSERT INTO REGISTRO_OP VALUES (
		'3' ,
		'D',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00003',
        '0003',
        '990234739',
        '759832474',
        '3'
	);
  	INSERT INTO REGISTRO_OP VALUES (
		'4' ,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00004',
        '0004',
        '990232379',
        '759898234',
        '4'
	); 
  
        	
-- end REGISTRO_OP
--star detalle_pro

INSERT INTO DETALLE_PRO VALUES(
        '00001',
        300,
        20,
        '00001',
        '990444739',
        '9876'
);
INSERT INTO DETALLE_PRO VALUES(
        '00002',
        240,
        10,
        '00002',
        '990234734',
        '9875'
);
INSERT INTO DETALLE_PRO VALUES(
        '00003',
        40,
        120,
        '00003',
        '990234739',
        '759832474'
);
INSERT INTO DETALLE_PRO VALUES(
        '00004',
        440,
        220,
        '00004',
        '990232379',
        '759898234'
);
--end detalle_pro
INSERT INTO DETALLE_OP VALUES(
    
      '000001',
      300,
      20,
      30,
      12,
      '1',
      '0001',
      '990444739',
      '9876',
      '001'
      
);
INSERT INTO DETALLE_OP VALUES(
    
      '000002',
      240,
      10,
      40,
      18,
      '2',
      '0002',
      '990234734',
      '9875',
      '002'
      
);
INSERT INTO DETALLE_OP VALUES(
    
      '000003',
      40,
      120,
      15,
      12,
      '3',
      '0003',
      '990234739',
      '759832474',
      '003'
      
);
INSERT INTO DETALLE_OP VALUES(
    
      '000004',
      440,
      220,
      23,
      11,
      '4',
      '0004',
      '990232379',
      '759898234',
      '004'
      
);
