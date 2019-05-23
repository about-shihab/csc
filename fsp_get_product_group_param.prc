CREATE OR REPLACE PROCEDURE fsp_get_product_group_param(
                                     perrorcode         OUT INTEGER
                                   	,perrormsg          OUT VARCHAR2
                                    ,presult_set_cur    OUT SYS_REFCURSOR)
  IS
BEGIN
       OPEN presult_set_cur FOR
     SELECT  t.sbs1_product_group_id
             ,CONCAT(CONCAT(t.cb_sbs1_product_code,'-'),t.sbs1_product_group_nm) AS sbs1_product_group_nm
       FROM SEBL_SBS1_PRODUCT_GROUP_PARAM t;
  EXCEPTION
      WHEN OTHERS THEN
          perrorcode := SQLCODE;
          perrormsg := SQLERRM;
END fsp_get_product_group_param;
/
