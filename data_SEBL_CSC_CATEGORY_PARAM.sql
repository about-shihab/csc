prompt PL/SQL Developer import file
prompt Created on Tuesday, April 23, 2019 by abdulla.mamun
set feedback off
set define off
prompt Disabling triggers for SEBL_CSC_CATEGORY_PARAM...
alter table SEBL_CSC_CATEGORY_PARAM disable all triggers;
prompt Deleting SEBL_CSC_CATEGORY_PARAM...
delete from SEBL_CSC_CATEGORY_PARAM;
commit;
prompt Loading SEBL_CSC_CATEGORY_PARAM...
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (1, 'Total Assets', 'Total Assets', 1, 1, 0, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (2, 'Total Liabilities', 'Total Liabilities', 2, 1, 0, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (3, 'Cash', 'Cash', 3, 2, 1, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (4, 'Balance With Other Banks', 'Balance With Other Banks', 4, 2, 1, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (5, 'Money at Call and on Short Notice', 'Money at Call and on Short Notice', 5, 2, 1, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (6, 'Total Investment', 'Total Investment', 6, 2, 1, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (7, 'Total Loans and Advances', 'Total Loans and Advances', 7, 2, 1, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (8, 'Total Fixed Assets', 'Total Fixed Assets', 8, 2, 1, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (9, 'Total Other Assets', 'Total Other Assets', 9, 2, 1, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (10, 'Head Office General A/C (Local Currency)', 'Head Office General A/C (Local Currency)', 10, 2, 1, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (11, 'Cash in Hand (LCY)', 'Cash in Hand (LCY)', 11, 3, 3, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (12, 'Cash in Hand (FCY)', 'Cash in Hand (FCY)', 12, 3, 3, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (13, 'Balance with Bangladesh Bank(LCY)', 'Balance with Bangladesh Bank(LCY)', 13, 3, 3, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (14, 'Balance with Bangladesh Bank(FCY)', 'Balance with Bangladesh Bank(FCY)', 14, 3, 3, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (15, 'Balance with Sonali Bank', 'Balance with Sonali Bank', 15, 3, 3, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (16, 'Balance with Other Banks(CD)', 'Balance with Other Banks(CD)', 16, 3, 4, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (17, 'Balance with Other Banks(Nostro)', 'Balance with Other Banks(Nostro)', 17, 3, 4, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (18, 'Balance with Other Banks(STD, FDR & Others)', 'Balance with Other Banks(STD, FDR & Others)', 18, 3, 4, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (19, 'Total Investments in Gov''t Securities', 'Total Investments in Gov''t Securities', 19, 3, 6, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (20, 'Total Investment in Gov''t Securities', 'Total Investment in Gov''t Securities', 20, 4, 19, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (21, 'Total Investment for IBB', 'Total Investment for IBB', 21, 4, 19, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (22, 'Total Investment in Shares', 'Total Investment in Shares', 22, 3, 6, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (23, 'Investment in Un-quoted Shares', 'Investment in Un-quoted Shares', 23, 4, 22, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (24, 'Investment in Quoted Shares', 'Investment in Quoted Shares', 24, 4, 22, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (25, 'Investment in Other Securities', 'Investment in Other Securities', 25, 3, 6, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (26, 'Investment in Subsidiaries', 'Investment in Subsidiaries', 26, 3, 6, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (27, 'Total Advances', 'Total Advances', 27, 3, 7, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (28, 'Advances', 'Advances', 28, 4, 27, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (29, 'Advances in IBB', 'Advances in IBB', 29, 4, 27, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (30, 'Total Bills Purshased and Discounted', 'Total Bills Purshased and Discounted', 30, 3, 7, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (31, 'Furniture and Fixtures Including Residence', 'Furniture and Fixtures Including Residence', 31, 3, 8, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (32, 'Furniture and Fixtures for Leased', 'Furniture and Fixtures for Leased', 32, 3, 8, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (33, 'Land', 'Land', 33, 3, 8, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (34, 'Buildings', 'Buildings', 34, 3, 8, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (35, 'Total Accured Interest', 'Total Accured Interest', 35, 3, 9, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (36, 'Other Assets Receivable', 'Other Assets Receivable', 36, 3, 9, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (37, 'Total Other Assets', 'Total Other Assets', 37, 3, 9, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (38, 'Reserves', 'Reserves', 38, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (39, 'Total Deposit', 'Total Deposit', 39, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (40, 'Subordinated Bond', 'Subordinated Bond', 40, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (41, 'Total Borrowings', 'Total Borrowings', 41, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (42, 'Total Accumulated Depreciation', 'Total Accumulated Depreciation', 42, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (43, 'Provision', 'Provision', 43, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (44, 'Total Other Liabilties', 'Total Other Liabilties', 44, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (45, 'Retained Earnings', 'Retained Earnings', 45, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (46, 'Retention Quota', 'Retention Quota', 46, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (47, 'Current A/C Foreign Resident', 'Current A/C Foreign Resident', 47, 2, 2, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (48, 'Other Demand Deposits', 'Other Demand Deposits', 48, 3, 39, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (49, 'Deposit Scheme', 'Deposit Scheme', 49, 3, 39, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (50, 'Savings', 'Savings', 50, 3, 39, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (51, 'SND', 'SND', 51, 3, 39, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (52, 'FDR', 'FDR', 52, 3, 39, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (53, 'Depreciations on Furniture and Fixtures', 'Depreciations on Furniture and Fixtures', 53, 3, 42, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (54, 'Total Depreciations on Leased Assets', 'Total Depreciations on Leased Assets', 54, 3, 42, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (55, 'Depreciations on Buildings', 'Depreciations on Buildings', 55, 3, 42, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (56, 'Interest Suspense', 'Interest Suspense', 56, 3, 44, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (57, 'Other Liabilities', 'Other Liabilities', 57, 3, 44, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (58, 'Obligation Under Finance Lease', 'Obligation Under Finance Lease', 58, 3, 44, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (59, 'AIT and VAT', 'AIT and VAT', 59, 3, 44, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (60, 'FC A/C USD-Retention Quota', 'FC A/C USD-Retention Quota', 60, 3, 46, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (61, 'CD A/C EURO-Retention Quota', 'CD A/C EURO-Retention Quota', 61, 3, 46, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (62, 'Current A/C USD-Resident', 'Current A/C USD-Resident', 62, 3, 47, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (63, 'Current A/C UK-Resident', 'Current A/C UK-Resident', 63, 3, 47, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
insert into SEBL_CSC_CATEGORY_PARAM (category_id, csc_category_name, csc_category_caption, report_order, category_level, parent_csc_category_id, enable_flag, make_by, make_dt, edit_by, edit_dt)
values (64, 'Current A/C Other FCY-Resident', 'Current A/C Other FCY-Resident', 64, 3, 47, 1, 'mamun4478', to_date('23-04-2019', 'dd-mm-yyyy'), null, null);
commit;
prompt 64 records loaded
prompt Enabling triggers for SEBL_CSC_CATEGORY_PARAM...
alter table SEBL_CSC_CATEGORY_PARAM enable all triggers;
set feedback on
set define on
prompt Done.
