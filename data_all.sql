--start productos data

INSERT INTO PRODUCTOS VALUES (
   1,
  'EMPANADA',
  'EMPANADA PA LOS PANA',
  '990444739',
  '857494023',
  '9876', 
  NULL
);

INSERT INTO PRODUCTOS VALUES (
  2,
  'PASTELES NO EMPANADAS',
  'PASTELES PA MAMA',
  '990234734',
  '857494090',
  '9875', 
  NULL
);

INSERT INTO PRODUCTOS VALUES (
  3,
  'EMPANADAAS NO PASTELES',
  'EMPANADAS PA MAMA',
  '990234739',
  '857345090',
  '759832474', 
  '0584623643'
);

INSERT INTO PRODUCTOS VALUES (
  4,
  'TEKCHONGOS',
  'RICO PA',
  '990232379',
  '857494093',
  '759898234', 
  'REGIS'
);

INSERT INTO PRODUCTOS VALUES (
  5,
  'YUKA PA',
  'PA TI PAPA',
  '990294230',
  '857494320',
  '759898230', 
  '058467623'
);

commit;
-- end productos data
-- start EMPLEADOS

INSERT INTO EMPLEADOS VALUES (
	1,
	'YASIIKE',
	'GASMILE',
	'26205990',
	'GASMILE@ELLA.ESO'
);

INSERT INTO EMPLEADOS VALUES (
	2,
	'LUIS',
	'PANITA',
	'42205990',
	'PANITAX@TATTA.THAT'
);

INSERT INTO EMPLEADOS VALUES (
	3,
	'ANTONELLA',
	'LAURANO',
	'24674982',
	'ANTO@HOTMAIL.TU.SABE'
);

INSERT INTO EMPLEADOS VALUES (
	4,
	'DANIEL',
	'NO RECUERDO',
	'1048489303',
	'DANIEAL@SUGMAIL.ESO'
);

INSERT INTO EMPLEADOS VALUES (
	5,
	'MARIO',
	'GRIECO',
	'26305981',
	'MARIOJOSUEXZ@GMAIL.COM'
);

COMMIT;
-- end EMPLEADOS
--star clientes
INSERT INTO CLIENTES VALUES (
       1,
       'datos 1',
       'WILLIAM@GMAIL.COM'
    
);
     INSERT INTO CLIENTES VALUES (
        2,
        'datos 2',
        'MARIO@GMAIL.COM'
    
    );
    INSERT INTO CLIENTES VALUES (
        3,
        'datos 3',
        'MARIA@GMAIL.COM'
    
    );
   INSERT INTO CLIENTES VALUES (
        4,
        'datos 4',
        'YENIFER@GMAIL.COM'
    
    );
  INSERT INTO CLIENTES VALUES (
        5,
        'datos 5',
        'YESICA@GMAIL.COM'
    
    );
--end clientes 
-- start REGISTRO_TELEFONO_EMP

	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			1,
			'5849301235',
			3
	);

  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			2,
			'1312312512',
			5
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			3,
			'574146029280',
			1
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			4,
			'582347593',
			4
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			5,
			'58234759224',
			3
	);

COMMIT;
-- end REGISTRO_TELEFONO_EMP
--  start REGISTRO_OP
	INSERT INTO REGISTRO_OP VALUES (
		1,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		1,
        1,
        '990444739',
        '9876', 
        1
	);

	INSERT INTO REGISTRO_OP VALUES (
		2 ,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		2,
        2,
        '990234734',
        '9875',
        2
	);
  	INSERT INTO REGISTRO_OP VALUES (
		3 ,
		'D',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		3,
        3,
        '990234739',
        '759832474',
        3
	);
  	INSERT INTO REGISTRO_OP VALUES (
		4 ,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		4,
        4,
        '990232379',
        '759898234',
        4
	); 
  
        	
-- end REGISTRO_OP
--star detalle_pro

INSERT INTO DETALLE_PRO VALUES(
        1,
        300,
        20,
        1,
        '990444739',
        '9876'
);
INSERT INTO DETALLE_PRO VALUES(
        2,
        240,
        10,
        2,
        '990234734',
        '9875'
);
INSERT INTO DETALLE_PRO VALUES(
        3,
        40,
        120,
        3,
        '990234739',
        '759832474'
);
INSERT INTO DETALLE_PRO VALUES(
        4,
        440,
        220,
        4,
        '990232379',
        '759898234'
);
--end detalle_pro
INSERT INTO DETALLE_OP VALUES(
    
      1,
      300,
      20,
      30,
      12,
      1,
      1,
      '990444739',
      '9876',
      1
      
);
INSERT INTO DETALLE_OP VALUES(
    
      2,
      240,
      10,
      40,
      18,
      2,
      2,
      '990234734',
      '9875',
      2
      
);
INSERT INTO DETALLE_OP VALUES(
    
      3,
      40,
      120,
      15,
      12,
      3,
      3,
      '990234739',
      '759832474',
      3
      
);
INSERT INTO DETALLE_OP VALUES(
    
      4,
      440,
      220,
      23,
      11,
      4,
      4,
      '990232379',
      '759898234',
      4
      
);
