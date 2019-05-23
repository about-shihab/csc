CREATE OR REPLACE PROCEDURE fsp_set_sbs_gl_depo_setup
       ( 
         pgl_acc_sl                IN sebl_sbs_gl_depo_setup.gl_acc_sl%TYPE
        ,pgl_acc_no                IN sebl_sbs_gl_depo_setup.gl_acc_no%TYPE
        ,pgl_acc_nm                IN sebl_sbs_gl_depo_setup.gl_acc_nm%TYPE
        /*,pcurrency_full_nm         IN sebl_sbs_gl_depo_setup.currency_full_nm%TYPE*/
        ,pis_payable_ac            IN sebl_sbs_gl_depo_setup.is_payable_ac%TYPE
        ,pis_vat_tax_ac            IN sebl_sbs_gl_depo_setup.is_vat_tax_ac%TYPE
        ,pdeposit_code             IN VARCHAR2/*sebl_sbs_gl_depo_setup.deposit_code%TYPE*/
        ,pservice_type_id          IN VARCHAR2 /*sebl_sbs_gl_depo_setup.service_type_id%TYPE*/
        ,psector_id_sbs            IN sebl_sbs_gl_depo_setup.sector_id_sbs%TYPE
        ,psbs1_product_group_id    IN sebl_sbs_gl_depo_setup.sbs1_product_group_id%TYPE
        ,psbs_enable_flag          IN sebl_sbs_gl_depo_setup.sbs_enable_flag%TYPE
        ,perrorcode                OUT INTEGER
        ,perrormsg                 OUT VARCHAR2
         )
  IS
   v_count              PLS_INTEGER := 0;
BEGIN
  SELECT COUNT(*)
    INTO v_count
    FROM sebl_sbs_gl_depo_setup s
   WHERE s.gl_acc_no=pgl_acc_no
     AND s.service_type_id=pservice_type_id;

      IF v_count = 0 THEN
         INSERT INTO sebl_sbs_gl_depo_setup
                     (
                      gl_acc_sl
                     ,gl_acc_no
                     ,gl_acc_nm
                     ,currency_full_nm
                     ,deposit_code
                     ,is_payable_ac
                     ,is_vat_tax_ac
                     ,service_type_id
                     ,sector_id_sbs
                     ,sbs1_product_group_id
                     ,sbs_enable_flag
                     )
         VALUES
                   (
                      pgl_acc_sl
                     ,pgl_acc_no
                     ,pgl_acc_nm
                     ,'Bangladeshi Taka'/*pcurrency_full_nm*/
                     ,pdeposit_code
                     ,pis_payable_ac
                     ,pis_vat_tax_ac
                     ,pservice_type_id
                     ,psector_id_sbs
                     ,psbs1_product_group_id
                     ,psbs_enable_flag);
     END IF;  
     
     IF v_count > 0 THEN
        UPDATE   sebl_sbs_gl_depo_setup s
           SET  s.deposit_code=pdeposit_code
               ,s.is_payable_ac=pis_payable_ac
               ,s.sector_id_sbs=psector_id_sbs
               ,s.is_vat_tax_ac=pis_vat_tax_ac
               ,s.sbs1_product_group_id=psbs1_product_group_id
               ,s.sbs_enable_flag=psbs_enable_flag 
         WHERE  s.gl_acc_no=pgl_acc_no
           AND  s.service_type_id=pservice_type_id;
           
     END IF;      
COMMIT;
       
  EXCEPTION
      WHEN OTHERS THEN
          perrorcode := SQLCODE;
          perrormsg := SQLERRM;
END fsp_set_sbs_gl_depo_setup;
/
