CREATE OR REPLACE PROCEDURE fsp_get_gl_chart_accounts(
                                      pdate_from         IN VARCHAR2
                                     ,pdate_to           IN VARCHAR2
                                     ,perrorcode         OUT INTEGER
                                     ,perrormsg          OUT VARCHAR2
                                     ,presult_set_cur    OUT SYS_REFCURSOR)
  IS
BEGIN
       OPEN presult_set_cur FOR
     SELECT  ch.gl_acc_sl
            ,ch.gl_acc_no
            ,ch.gl_acc_nm
            ,ch.service_type_id
            ,ch.opening_dt
            ,CONCAT(CONCAT(x.sector_id_sbs,'-'),x.sector_nm) AS sector_name
       FROM cor_glchart ch
       LEFT OUTER JOIN
            sebl_sbs_gl_depo_setup sb
         ON ch.gl_acc_no=sb.gl_acc_no
        AND ch.service_type_id=sb.service_type_id
        
       LEFT OUTER JOIN TABLE(pkg_sbs.fxn_get_sector_param ( psector_id => NULL
                                           ,psector_id_sbs => NULL
                                           ,psector_type_id => NULL
                                           ,psector_section_id => NULL
                                           ,psector_subsection_id => NULL
                                           ,psbs1_sector_section_id => NULL
                                           ,psbs1_sector_subsection_id => NULL
                                           ,pcustomer_type_id => NULL
                                           ,pcustomer_category_id => NULL
                                           )  ) x
         ON x.sector_id=sb.sector_id_sbs     
      WHERE ch.opening_dt>=TO_DATE(pdate_from, 'DD/MM/YYYY')
        AND ch.opening_dt<=TO_DATE(pdate_to, 'DD/MM/YYYY')
        AND UPPER(ch.auth_status_id)=UPPER('A');
  EXCEPTION
      WHEN no_data_found THEN
          perrorcode := SQLCODE;
          perrormsg := SQLERRM;
END fsp_get_gl_chart_accounts;
/
