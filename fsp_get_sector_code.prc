CREATE OR REPLACE PROCEDURE fsp_get_sector_code(
                                      perrorcode         OUT INTEGER
                                     ,perrormsg          OUT VARCHAR2
                                     ,presult_set_cur    OUT SYS_REFCURSOR)
  IS
BEGIN
       OPEN presult_set_cur FOR
       SELECT x.sector_id
             ,CONCAT(CONCAT(x.sector_id_sbs,'-'),x.sector_nm) AS sector_name
         FROM TABLE(pkg_sbs.fxn_get_sector_param
                          (
                            psector_id => NULL
                           ,psector_id_sbs => NULL
                           ,psector_type_id => NULL
                           ,psector_section_id => NULL
                           ,psector_subsection_id => NULL
                           ,psbs1_sector_section_id => NULL
                           ,psbs1_sector_subsection_id => NULL
                           ,pcustomer_type_id => NULL
                           ,pcustomer_category_id => NULL
                           )
                     ) x;
  EXCEPTION
      WHEN no_data_found THEN
          perrorcode := SQLCODE;
          perrormsg := SQLERRM;
END fsp_get_sector_code;
/
