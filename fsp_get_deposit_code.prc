CREATE OR REPLACE PROCEDURE fsp_get_deposit_code(
                                      perrorcode         OUT INTEGER
                                     ,perrormsg          OUT VARCHAR2
                                     ,presult_set_cur    OUT SYS_REFCURSOR)
  IS
BEGIN
       OPEN presult_set_cur FOR
       SELECT x.cb_deposit_code
             ,CONCAT(CONCAT(x.cb_deposit_code,'-'),x.deposit_name) AS deposit_name
         FROM TABLE(pkg_sbs.fxn_get_deposit_type_param
              	        (
					     pdeposit_code => NULL
						,pcb_deposit_code => NULL
                        )
					) x;
  EXCEPTION
      WHEN no_data_found THEN
          perrorcode := SQLCODE;
          perrormsg := SQLERRM;
END fsp_get_deposit_code;
/
