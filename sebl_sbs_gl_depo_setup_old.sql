prompt PL/SQL Developer import file
prompt Created on Thursday, April 18, 2019 by abdulla.mamun
set feedback off
set define off
prompt Disabling triggers for SEBL_SBS_GL_DEPO_SETUP...
alter table SEBL_SBS_GL_DEPO_SETUP disable all triggers;
prompt Disabling foreign key constraints for SEBL_SBS_GL_DEPO_SETUP...
alter table SEBL_SBS_GL_DEPO_SETUP disable constraint FK1_SEBL_SBS_GL_DEPO_SETUP;
prompt Deleting SEBL_SBS_GL_DEPO_SETUP...
delete from SEBL_SBS_GL_DEPO_SETUP;
commit;
prompt Loading SEBL_SBS_GL_DEPO_SETUP...
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000574', '90306370399', 'VAT ON OFFICE RENT/LEASE VALUE', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000579', '90306402000', 'AIT FOR CLEANING SERVICES', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000583', '90306406002', 'AIT FR CERTAIN SERV-SECURITY S', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000477', '90306370341', 'TAX: COMM/CHARGE-AGENT F/BUYER', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000585', '90306417007', 'AIT-RESIDENT INC. FM SERV. TO FOREIGN PER.', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000624', '90303390900', 'OTHER ACCR. INTEREST PAYABLE', 'Bangladeshi Taka', null, 1, 0, 'C', null, null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000525', '90303390900', 'OTHER ACCR. INTEREST PAYABLE', 'Bangladeshi Taka', null, 1, 0, 'I', null, null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000145', '90303160304', 'UNIDENTIFIED ENTRIES', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000144', '90303150501', 'MARGIN AGAINST GUARANTEE', 'Bangladeshi Taka', '183', 0, 0, 'C', '10000493', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000026', '90303160895', 'INTER-BRANCH COLLECTION A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000016', '90303150402', 'MARGIN AGAINST L/C (TAKA)', 'Bangladeshi Taka', '183', 0, 0, 'C', '10000308', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000019', '90303150105', 'ACCOUNTS PAYABLE FCC (TAKA)', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000023', '90303150701', 'REMITT. AWAITING DISPOSAL (TAKA)', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000062', '90303390200', 'ACCR. INTT. PAYABLE FC (USD)', 'Bangladeshi Taka', '185', 1, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000020', '90303150411', 'MARGIN AGAINST IBP (TAKA)', 'Bangladeshi Taka', '183', 0, 0, 'C', '10000309', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000142', '90303160909', 'SUNDRY CREDITORS', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000015', '90303150018', 'PAY ORDERS (FCY REMITTANCE)', 'Bangladeshi Taka', '120', 0, 0, 'C', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000022', '90303150600', 'MATURED FIXED DEPOSITS', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000024', '90303160007', 'DEMAND DRAFTS PAYABLE', 'Bangladeshi Taka', '120', 0, 0, 'C', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000025', '90303160106', 'T.T PAYABLE', 'Bangladeshi Taka', '120', 0, 0, 'C', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000014', '90303150006', 'PAY ORDER', 'Bangladeshi Taka', '120', 0, 0, 'C', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000175', '90303160931', 'SUNDRY CREDITORS-GP', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000176', '90303160955', 'SUNDRY CREDITORS-BL', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000248', '90303160921', 'SUNDRY CREDITORS BUYING COMMIS', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000247', '90303150519', 'MARGIN AGAINST BILLS/PURCHASED', 'Bangladeshi Taka', '183', 0, 0, 'C', '10000309', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000259', '90303160970', 'PORTFOLIO MARGIN DEPOSIT ACCOUNT', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000340', '90303160922', 'Sundry Cr: FC Sale-Purchase (Taka)', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000260', '90303150711', 'REMITT. AWAITING DISPOSAL AGT. ONLINE', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000265', '90303130011', 'CURRENT A/C US($)-NON RESIDENT', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000267', '90303160910', 'Sundry Creditors (Temporary)', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000368', '90303160911', 'SUNDRY CREDITORS REFUND/DIVIDEND', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000432', '90303134000', 'NON CONVERTIBLE TAKA ACCOUNT', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000461', '90303150520', 'MARGIN AGAINST BILLS / PURCHASED (System)', 'Bangladeshi Taka', '183', 0, 0, 'C', '10000309', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000460', '90303150412', 'MARGIN AGAINST IBP (TAKA) (System)', 'Bangladeshi Taka', '183', 0, 0, 'C', '10000309', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000465', '90303160923', 'SUNDRY CREDITORS BUYING COMMIS. (System)', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000464', '90303150578', 'MARGIN AGAINST FBP DOCUMENST (System)', 'Bangladeshi Taka', '183', 0, 0, 'C', '10000309', 8);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000462', '90303150554', 'EXPORT PROCEED ON ACEEPT. IN USD (System)', 'US Dollar', '183', 0, 0, 'C', '10000309', 8);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000463', '90303150559', 'MARGIN ON ACCEPTANCE IN USD (System)', 'US Dollar', '183', 0, 0, 'C', '10000309', 8);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000466', '90303160944', 'FC HELD AGAINST EDF L/C (System)', 'US Dollar', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000521', '90303140001', 'SOUTHEAST BANK LTD, OBU (DEPZ)', 'US Dollar', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000522', '90303140011', 'SOUTHEAST BANK LTD, OBU (CEPZ)', 'US Dollar', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000523', '90303140021', 'F.D.D. PAYABLE-OBU (B.B. CLEARING)', 'US Dollar', '120', 0, 0, 'C', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000254', '90303160967', 'SUNDRY DEPOSIT FCY USD', 'US Dollar', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000261', '90303150553', 'EXPORT PROCEED ON ACEEPT. IN USD', 'US Dollar', '183', 0, 0, 'C', '10000309', 8);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000146', '90303160943', 'FC Held Against EDF L/C', 'US Dollar', null, 1, 0, 'C', null, null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000174', '90303160916', 'Sundry Cr: FC Sale-Purchase (USD)', 'US Dollar', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000336', '90303160917', 'Sundry Cr. Pound FC Sale-Purchase', 'British Pound', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000339', '90303160920', 'Sundry Cr. Other FC Sale-Purchase', 'ACU dollar', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000338', '90303160919', 'Sundry Cr. YEN FC Sale-Purchase', 'Japanees Yen', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000337', '90303160918', 'Sundry Cr. EURO FC Sale-Purchase', 'European Currency', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000141', '90306300704', '10% INCOME TAX ON DEPOSITS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000151', '90306370205', 'PAY ROLL TAX', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000152', '90306370311', 'VAT', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000153', '90306370329', 'VAT ON L/C COMMISSION', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000154', '90306370341', 'TAX: COMM/CHARGE-AGENT F/BUYER', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000155', '90306370350', 'VAT ON OTHER BANKING SERVICES', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000156', '90306370375', 'INCOME TAX-EXPORT PROCEEDS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000143', '90306300729', 'OTHERS AND VAT/IT', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000140', '90306370304', 'GOVT.EXCISE DUTY', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000226', '90306371185', 'VAT ON INCOME-LOCAL', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000164', '90306370338', '5% TAX ON EXPORT SUBSIDY', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000218', '90306371112', 'ADVANCE INCOME TAX (AIT)', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000187', '90306370106', 'INCOME TAX', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000191', '90306370363', 'VAT ON C.CARD FEES', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000234', '90306300711', '5% TAX ON INDENTING COMMISSION', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000208', '90306371020', 'VAT ON CREDIT CARD', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000238', '90306370387', 'VAT ON ELECTRIC BILLS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000240', '90306300699', '5% I/T ON COURIER COMPANY', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000255', '90306300750', '5% TAX ON INTT. OF S.PATRA', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000274', '90306404001', 'AIT FR SHIPPING AGENCY COMMIS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000290', '90306503005', 'VAT : DOCKYARD(S003.2)', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000299', '90306512007', 'VAT : PROCUREMENT PROVIDER', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000307', '90306520003', 'VAT : BUILD, FLOOR CLEANING FIRM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000313', '90306522041', 'VAT : LOCAL ACCEPT UND L/C CLEAN AND OTHERS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000324', '90306522157', 'VAT :FDR A/C OPEN , CLOSE,INS,CHARGES', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000325', '90306522169', 'VAT : DPS A/C OPEN , CLOSE,INS,CHARGES', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000326', '90306522170', 'VAT : LOCKER AND SAFE CUSTODY OPEN', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000295', '90306508002', 'VAT : REPAIR AND SERVICE PERS/FIR', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000297', '90306510006', 'VAT : LEASING PERSON/INST/FIRM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000314', '90306522053', 'VAT : LETTER OF GUARANTEE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000315', '90306522065', 'VAT : BILL COLLECT (OBC)', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000329', '90306522201', 'VAT : BILL PURCHASE CHARGE,FEES', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000332', '90306522237', 'VAT : CHECK RETURN OR BOUNCE CHARGE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000277', '90306407008', 'AIT FR SAVINGS INSTRUMENT(S52)', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000286', '90306416001', 'AIT FR DIVIDENDS(S-54)', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000293', '90306506001', 'VAT : PRINTING PRESS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000296', '90306509008', 'VAT : CONSULTANCY AND SUPERVIS FIR', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000298', '90306511001', 'VAT : AUDIT AND ACCOUNTING FIRM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000301', '90306514008', 'VAT : LAW ADVISOR - PERS/INST/FIR', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000302', '90306515003', 'VAT : TRANSPORT CONSTRUCTOR', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000308', '90306521009', 'VAT : LOTTERY TICKET SALER', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000322', '90306522133', 'VAT : SB A/C OPENING,CLOSING,INS,SERVICE CHARGES', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000278', '90306408003', 'AIT FR FREIGHT FRW AGENCY COM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000279', '90306409009', 'AIT FR INCOME HOUSE PROPERTY', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000289', '90306502001', 'VAT: MOTOR GARAGE AND WORKSHOP', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000310', '90306522016', 'VAT : FOREIGN L/C CLEAN AND OTHER', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000318', '90306522090', 'VAT :PO CHARGE,FEES,COMMISION', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000321', '90306522121', 'VAT : CD A/C OPEN,CLOSING,INS,SERVICE CHARGE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000328', '90306522194', 'VAT : LOAN PROCESS CHARGE,FEES', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000330', '90306522213', 'VAT : CHECK BOOK ISSUE CHARGE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
commit;
prompt 100 records committed...
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000331', '90306522225', 'VAT : ISSUE BB AND OTHER BANK CHARGE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000333', '90306522249', 'VAT : SUPPLY A/C STATMENT CHARGE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000323', '90306522145', 'VAT : STD A/C OPEN , CLOSE,INS,CHARGES', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000275', '90306405007', 'AIT FR FEES PROFESS AND TECH.SE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000282', '90306412008', 'AIT FR EXPORT CASH SUBSIDY', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000291', '90306504000', 'VAT : CONSTRUCTION FIRM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000294', '90306507007', 'VAT : SURVEYORS FIRM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000304', '90306517004', 'VAT : ENGINEERING FIRM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000316', '90306522077', 'VAT : ONLINE CHARGES,FEES,COMMISSION', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000317', '90306522089', 'VAT : DD CHARGE, FEES , COMMISSION', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000334', '90306522250', 'VAT : SUPPLY SOLVENCY,A/C CERTIFICATE CHARGE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000335', '90306522262', 'VAT : OTHER BANKING SERVICE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000271', '90306401005', 'AIT FR EMPLOYEES SALARY(S-50)', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000281', '90306411002', 'AIT FR EXP GOODS EXCEPT KNIT', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000288', '90306501004', 'VAT: OFFICE RENT/LEASE VALUE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000305', '90306518001', 'VAT : DIRECTORS HONOURARIUM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000327', '90306522182', 'LOAN A/C OPEN,CLOSE,INS,CHARGES', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000266', '90306370314', 'VAT ON EXPENDITURE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000272', '90306402000', 'AIT FR PAYMENT TO CONSTRACTOR', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000273', '90306403006', 'AIT FR INDENTING COMMISSION', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000276', '90306406002', 'AIT FR CERTAIN SERV-SECURITY S', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000280', '90306410007', 'AIT FR EXP KNIT - WEAV AND GARMEN', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000292', '90306505006', 'VAT : ADVERTISING FIRM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000283', '90306413003', 'AIT FR FRGN BUYERS AGENT COM', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000285', '90306415004', 'AIT FR ADVERT BILL OF NP.TV.MZ', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000284', '90306414009', 'AIT FR INT ON SAVING/FDR/SCHE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000287', '90306417005', 'AIT FR INCOME NON-RESIDENTS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000300', '90306513002', 'VAT : SECURITY SERVICE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000303', '90306516009', 'VAT : RENT A CAR', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000306', '90306519005', 'VAT : AUCTION BUYER', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000311', '90306522028', 'VAT : FOREIGN ACCEPT UND L/C CLEAN AND OTHERS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000312', '90306522031', 'VAT : LOCAL L/C CLEAN AND OTHERS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000319', '90306522108', 'VAT :TT CHARGE, FEES, COMMISSION', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000320', '90306522111', 'VAT : SWIFT/FAX/TEL CHARGE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000366', '90306370399', 'VAT ON OFFICE RENT/LEASE VALUE', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000365', '90306370343', 'TAX COMM/CHARGES - AGENT F/BUYERS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000497', '90306300707', 'Salary TAX from Branches', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000515', '90306300705', '15% INCOME TAX ON DEPOSITS', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000219', '90306371124', 'ADVANCE INCOME TAX (AIT) INT''L', 'US Dollar', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000212', '90306371044', 'VAT ON CREDIT CARD-INTL', 'US Dollar', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000227', '90306371197', 'VAT ON INCOME-INTERNATIONAL', 'US Dollar', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000541', '90303150502', 'MARGIN AGAINST TIME LOAN TO ISSUE PAY ORDER', 'Bangladeshi Taka', '183', 0, 0, 'C', '10000493', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000381', '90303150553', 'EXPOT PORCEED ON ACCEPTANCE IN USD', 'US DOLLAR', '183', 0, 0, 'I', '10000309', 8);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000142', '90306300699', '5% I/T on Courier Companies', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000439', '90306300705', '15% INCOME TAX ON DEPOSITS', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000144', '90306300711', '5% TAX ON INDENTING COMMISSION', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000145', '90306300729', '15% VALUE ADDED TAX', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000165', '90306370304', 'GOVT. EXCISE DUTY', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000166', '90306370329', 'VAT ON L/C COMMISSION', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000167', '90306370338', '5% TAX ON EXPORT SUBSIDY', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000161', '90306370106', 'INCOME TAX', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000162', '90306370205', 'PAY ROLL TAX', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000168', '90306370343', 'TAX:COMM/CHRG-AGENT F/BUYERS', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000169', '90306370350', 'VAT ON OTHER BANKING SERVICES', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000170', '90306370375', 'INCOME TAX-EXPORT PROCEEDS', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000390', '90306410007', 'PENALTY REALIZABLE ON BAI-MUAJJAL COMMERCIAL', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000394', '90306370314', 'VAT ON EXPENDITURE', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000402', '90306370363', 'VAT ON CREDIT CARD FEES', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000424', '90306370311', 'VAT', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000143', '90306300704', '10% TAX ON INTT.ON DEPOSITS', 'Bangladesh Taka Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000009', '90303120035', 'CURRENT A/C OTHER FCY - RESIDENT', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000479', '90303160922', 'Sundry Cr: FC Sale-Purchase (Taka)', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000074', '90303330001', 'BEARER CERTIFICATE OF DEPOSITS', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000561', '90303110013', 'CREDIT BALANCE OF LOAN ACCOUNT', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000004', '90303110011', 'CURRENT ACCOUNT (TAKA)', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000024', '90303150541', 'DEPOSIT AWAITING DISPOSAL - EURO', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000026', '90303150577', 'MARGIN AGAINST FBP DOCUMENT', 'Bangladeshi Taka', '183', 0, 0, 'I', '10000309', null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000063', '90303320306', 'EDUCATION SAVINGS SCHEME (ESS)', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000054', '90303320009', 'FIXED TERM DEPOSITS (FDR)', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000046', '90303321011', 'HAJJ SANCHAY PRAKALPA', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000038', '90303320223', 'M. CHILD. EDU. SAVINGS SCHEME', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000562', '90303150500', 'MARGIN AGAINST GUARANTEE (FCY)', 'US Dollar', '183', 0, 0, 'C', '10000493', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000060', '90303320207', 'MARRIAGE SAVINGS SCHEME (MSS)', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000042', '90303320339', 'MUD. MONTH. INCOME SCHEME (MMIS)', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000045', '90303320420', 'MUDARABA DOUBLE BENEFIT SCHEME', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000056', '90303320108', 'PENSION SAVINGS SCHEME (PSS)', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000060', '90303350422', 'PROFIT PAYABLE ON MDBS', 'Bangladeshi Taka', '185', 1, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000057', '90303350317', 'PROFIT PAYABLE ON MESS', 'Bangladeshi Taka', '185', 1, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000053', '90303350133', 'PROFIT PAYABLE ON MMIS', 'Bangladeshi Taka', '185', 1, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000091', '90303350410', 'PROFIT PAYABLE ON MSBDS', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000048', '90303340019', 'PROFIT PAYABLE ON MSTD', 'Bangladeshi Taka', '185', 1, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000045', '90303210005', 'SAVINGS ACCOUNTS', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000052', '90303310008', 'SHORT TERM DEPOSITS (STD)', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000088', '90303350309', 'ACCR.INTT.PAYABLE ON ESS', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000077', '90303350001', 'ACCR.INTT.PAYABLE ON FDR', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000085', '90303350201', 'ACCR.INTT.PAYABLE ON MSS', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000079', '90303350100', 'ACCR.INTT.PAYABLE ON PSS', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000049', '90303240008', 'ACCR.INTT.PAYABLE ON SB A/C', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000075', '90303340000', 'ACCR.INTT.PAYABLE ON STD', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000005', '90303110027', 'CD: NON-RES. INVESTORS TK. A/C', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000014', '90303150006', 'PAY ORDERS', 'Bangladesh Taka Currency', '120', 0, 0, 'I', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000015', '90303150018', 'PAY ORDERS (FCY REMITTANCE)', 'Bangladesh Taka Currency', '120', 0, 0, 'I', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000016', '90303150105', 'ACCOUNT PAYABLE FCC (TAKA)', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000017', '90303150204', 'ACCOUNT PAYABLE FCC(USD)', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000013', '90303130036', 'CURRENT ACCOUNT OTHER FCY - NON RESIDENT', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000018', '90303150303', 'ACCOUNTS PAYABLE FCC UK PND', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000019', '90303150402', 'MARGIN AGAINST L/C (TAKA)', 'Bangladesh Taka Currency', '183', 0, 0, 'I', '10000308', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000020', '90303150411', 'MARGIN AGAINST IBP (TAKA)', 'Bangladesh Taka Currency', '183', 0, 0, 'I', '10000309', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000021', '90303150427', 'MARGIN AGAINST FBP (TAKA)', 'Bangladesh Taka Currency', '183', 0, 0, 'I', '10000309', null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000022', '90303150434', 'MARGIN AGAINST EXP', 'Bangladesh Taka Currency', '183', 0, 0, 'I', '10000309', null);
commit;
prompt 200 records committed...
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000023', '90303150501', 'MARGIN AGAINST GUARANTEE', 'Bangladesh Taka Currency', '183', 0, 0, 'I', '10000493', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000011', '90303130011', 'CURRENT ACCOUNT USD - NON RESIDENT', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000012', '90303130029', 'CURRENT ACCOUNT UK POUND - NON RESIDENT', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000047', '90303230007', 'SAVINGS ACCOUNTS ( DORMANT )', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000048', '90303230012', 'MUDARABA SAVING ACC DORMANT', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000032', '90303160205', 'MAIL TRANSFER PAYABLE', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000033', '90303160304', 'UNIDENTIFIED ENTRIES', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000034', '90303160403', 'CURRENT ACCOUNTS (DORMANT)', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000028', '90303150701', 'REMITT. AWAITING DISPOSAL (TK.)', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 9);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000061', '90303320211', 'MUDARABA MARRIAG SAV SCH(MMSS)', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000086', '90303350213', 'PROFIT PAYABLE A/C ON MMSS', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000095', '90303351001', 'PROFIT PAYABLE A/C ON MTDR', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000097', '90303360002', 'NFCD ( US$ )', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000098', '90303360101', 'ACCR.INTT.PAYABLE ON NFCD -US$', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000030', '90303160007', 'DEMAND DRAFTS PAYABLE', 'Bangladesh Taka Currency', '120', 0, 0, 'I', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000035', '90303160895', 'INTER-BRANCH COLLECTION A/C', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000036', '90303160909', 'SUNDRY CREDITORS', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000037', '90303160916', 'SUNDRY CR. FC SALES A/C', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000100', '90303370102', 'ACCR.INTT.PAYABLE NFCD -UK PND', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000027', '90303150600', 'MATURED FIXED DEPOSITS', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000031', '90303160106', 'T. T. PAYABLE', 'Bangladesh Taka Currency', '120', 0, 0, 'I', '10000336', 3);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000038', '90303160921', 'SUNDRY CREDITORS BUYING COMMIS', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000039', '90303160931', 'SUNDRY CREDITORS- GP BILLS', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000099', '90303370003', 'NFCD ( UK POUND )', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000101', '90303380004', 'RFCD - US$', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000102', '90303380103', 'ACCR.INTT.PAYABLE ON RFCD -US$', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000103', '90303390005', 'RFCD - UK POUND', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000104', '90303390104', 'ACCR.INTT.PAYABLE RFCD -UK PND', 'Bangladesh Taka Currency', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000029', '90303150711', 'REMITT. AWAITING DISPOSAL AGT. ONLINE', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000040', '90303160943', 'FC Held Against EDF L/C', 'Bangladesh Taka Currency', null, 1, 0, 'I', null, null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000041', '90303160955', 'SUNDRY CREDITORS-BL', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000042', '90303160967', 'SUNDRY DEPOSIT FCY USD', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000043', '90303160970', 'PORTFOLIO MARGIN DEPOSIT ACCOUNT', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000072', '90303321008', 'MUDARABA TERM DEP REC. (MTDR)', 'Bangladesh Taka Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000584', '90303110014', 'SEBL-CE CARD DEPOSIT', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000509', '90303110014', 'SEBL-CE CARD DEPOSIT', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000580', '90303160981', 'TeleCash Customer mWallet', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000507', '90303160981', 'TeleCash Customer mWallet', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000581', '90303160982', 'TeleCash Utility Service A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000508', '90303160982', 'TeleCash Utility Service A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000582', '90303160983', 'TeleCash Remittance Service A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000569', '90303240012', 'ACCR. INTT. Payable on MFS Customer  A/C', 'Bangladeshi Taka', '185', 1, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000499', '90303240012', 'ACCR. INTT. Payable on MFS Customer', 'Bangladeshi Taka', '185', 1, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000568', '90303210008', 'TeleCash MFS mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000575', '90303160979', 'TeleCash DESCO mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000505', '90303160979', 'TeleCash DESCO mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000574', '90303160978', 'TeleCash DPDC mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000504', '90303160978', 'TeleCash DPDC mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000572', '90303160976', 'TeleCash Distributor mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000502', '90303160976', 'TeleCash Distributor mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000498', '90303210008', 'TeleCash MFS mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000573', '90303160977', 'TeleCash Merchant mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000503', '90303160977', 'TeleCash Merchant mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000576', '90303160980', 'TeleCash WASA mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000506', '90303160980', 'TeleCash WASA mWallet A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000643', '90303160945', 'FC HELD AGAINST LONG TERM FINANCING FACILITY (LTFF)', 'US Dollar', null, 1, 0, 'C', null, null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000675', '90303160946', 'FC HELD AGAINST GTF', 'Bangladeshi Taka', null, 1, 0, 'C', null, null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000660', '90303160987', 'RAJ. WASA BILLS COLL. A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000557', '90303160987', 'RAJ. WASA BILLS COLL. A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000540', '90303150546', 'DEPOSIT AWAITING DISPOSAL – GBP', 'British Pound', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000524', '90303150546', 'DEPOSIT AWAITING DISPOSAL – GBP', 'British Pound', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000641', '90303160986', 'EDUCATIONAL INSTITUTION MWALLET A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000537', '90303160986', 'EDUCATIONAL INSTITUTION MWALLET A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000662', '90303160989', 'C. NAWAB. PURSV. BILLS COLL. A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000559', '90303160989', 'C. NAWAB. PURSV. BILLS COLL. A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000661', '90303160988', 'CABLE TV BILLS COLL. A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000558', '90303160988', 'CABLE TV BILLS COLL. A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000616', '90303160984', 'BGDCL COLLECTION A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000677', '90303160968', 'SUNDRY CR: CTSD COLL. A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000577', '90303160968', 'SUNDRY CR: CTSD COLL. A/C', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000528', '90303160910', 'Sundry Creditors (Temporary)', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000520', '90303160918', 'Sundry Cr. EURO FC Sale-Purchase', 'European Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000657', '90303240015', 'ACCR. INTT. PAYABLE CUSTOMER SALARY ACCOUNT ', 'Bangladeshi Taka', null, 1, 0, 'C', null, null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000550', '90303240015', 'ACCR. PROFIT PAYABLE ON PAYROLL PACKAGE 1', 'Bangladeshi Taka', null, 1, 0, 'I', null, null);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000252', '90303120065', 'CD A/C EURO-RETENTION QUOTA', 'European Currency', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000519', '90303120065', 'CD A/C EURO-RETENTION QUOTA', 'European Currency', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000617', '90303160985', 'WINTEL TOP-UP EMONEY A/C', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000517', '90303110013', 'CREDIT BALANCE OF LOAN ACCOUNT', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000591', '90306521011', 'Vat : Indenting Commission', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000531', '90306521011', 'Vat : Indenting Commission', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000626', '90306300708', '10% INCOME TAX ON DEPOSITS (53/F-Ga)', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000221', '90306371161', 'CHARGEABLE AIT-LOCAL', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000526', '90306300708', '10% INCOME TAX ON DEPOSITS (53/F-Ga)', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000220', '90306371151', 'CHARGEABLE AIT-INT''L', 'US Dollar', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000592', '90303160971', 'Parking A/C (Remittance)', 'Bangladeshi Taka', '185', 0, 0, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000688', '90303160971', 'Parking A/C (Remittance)', 'Bangladeshi Taka', '185', 0, 0, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000575', '90306513002', 'VAT : SECURITY SERVICE', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000627', '90306300709', '5% INCOME TAX ON DEPOSITS (53/F-Gha)', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000518', '90306370344', 'ADVANCE INCOME TAX FROM IGW', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000524', '90306370345', 'TAX DEDUCTED AT SOUCE ON LOCAL L/C', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000538', '90306370945', 'VAT ON CLEARING CHQ', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000549', '90306370126', 'Income Tax from Branch', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000550', '90306370376', 'INCOME TAX-EXPORT PROCEEDS- 53BBBB', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000548', '90306370116', 'Income Tax on Office Rent', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000557', '90306370306', 'GOVT. EXCISE DUTY IN POUND', 'British Pound', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000558', '90306370307', 'GOVT. EXCISE DUTY IN EURO', 'European Currency', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000578', '90306670003', 'TDS from MNO', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000500', '90306670001', 'TDS from Distributor', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000527', '90306300709', '5% INCOME TAX ON DEPOSITS (53/F-Gha)', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000592', '90306370340', 'Tax on Honorarium/fees', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
commit;
prompt 300 records committed...
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000442', '90306370345', 'TAX DEDUCTED AT SOUCE ON LOCAL L/C', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000475', '90306370116', 'Income Tax on Office Rent', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000476', '90306370126', 'Income Tax from Branch', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000478', '90306370376', 'INCOME TAX-EXPORT PROCEEDS- 53BBBB', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000447', '90306370945', 'VAT ON CLEARING CHQ', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000628', '90306417007', 'AIT-RESIDENT INC. FM SERV. TO FOREIGN PER.', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000492', '90306370307', 'GOVT. EXCISE DUTY IN EURO', 'European Currency', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000491', '90306370306', 'GOVT. EXCISE DUTY IN POUND', 'British Pound', '185', 0, 1, 'I', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000570', '90306670001', 'TDS from Distributor', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000579', '90306670004', 'TDS from Agent', 'Bangladeshi Taka', '185', 0, 1, 'C', '10000336', 10);
insert into SEBL_SBS_GL_DEPO_SETUP (gl_acc_sl, gl_acc_no, gl_acc_nm, currency_full_nm, deposit_code, is_payable_ac, is_vat_tax_ac, service_type_id, sector_id_sbs, sbs1_product_group_id)
values ('90300000576', '90306370387', 'VAT ON ELECTRIC BILLS', 'Bangladeshi Taka', '185', 0, 1, 'I', '10000336', 10);
commit;
prompt 311 records loaded
prompt Enabling foreign key constraints for SEBL_SBS_GL_DEPO_SETUP...
alter table SEBL_SBS_GL_DEPO_SETUP enable constraint FK1_SEBL_SBS_GL_DEPO_SETUP;
prompt Enabling triggers for SEBL_SBS_GL_DEPO_SETUP...
alter table SEBL_SBS_GL_DEPO_SETUP enable all triggers;
set feedback on
set define on
prompt Done.
