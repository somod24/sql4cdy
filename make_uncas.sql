CREATE SCHEMA uncas AUTHORIZATION candy_user;

DROP TABLE if exists Uncas.paramset;

CREATE TABLE uncas.paramset (
	nrun int4 NULL,parm1 numeric NULL, parm2 numeric NULL, parm3 numeric NULL );

DROP TABLE if exists uncas.parmint;

CREATE TABLE uncas.parmint (
	fname varchar(25) NULL,	pname varchar(25) NULL, selection varchar(25) NULL,
	df_name varchar(10) NULL, p_mv float8 NULL, minimum float8 NULL, maximum float8 NULL,
	dfp1 float8 NULL, dfp2 float8 NULL, item_ix int4 NULL, alias varchar(25) NULL );


DROP TABLE if exists uncas.unc_obsout;

CREATE TABLE uncas.unc_obsout (
	run_id int4 NULL,"key" int4 NULL, fname varchar(25) NULL, pnr int4 NULL, spnr int4 NULL,
	"date" timestamp NULL, m_ix int4 NULL, s0 int4 NULL, s1 int4 NULL, m_value float8 NULL,
	adapt varchar(1) NULL, ix varchar(50) NULL, s_value float8 NULL );

DROP TABLE if exists uncas.unc_resout;

CREATE TABLE uncas.unc_resout (
	run_id int4 NULL, id int4 NULL, "date" timestamp NULL,
	res_id int4 NULL, obj_id int4 NULL, value float8 NULL );