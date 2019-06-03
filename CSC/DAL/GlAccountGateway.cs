using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace CSC.DAL
{
    public class GlAccountGateway
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ULTIMUS"].ConnectionString;
        public DataTable GetAccountsByDate(string dateFrom, string dateTo)
        {
            DataTable dtab = new DataTable();
            OracleDataAdapter adp = new OracleDataAdapter();
            using (OracleConnection connection = new OracleConnection())
            {

                connection.ConnectionString = connectionString;
                try
                {

                    connection.Open();
                    OracleCommand command = new OracleCommand();
                    command.Connection = connection;
                    command.CommandText = "fsp_get_gl_chart_accounts";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("pdate_from", OracleDbType.Varchar2).Value = dateFrom;
                    command.Parameters.Add("pdate_to", OracleDbType.Varchar2).Value = dateTo;
                    command.Parameters.Add("perrorcode", OracleDbType.Int32, 5).Direction = ParameterDirection.Output;
                    command.Parameters.Add("perrormsg", OracleDbType.Varchar2, 2000).Direction = ParameterDirection.Output;
                    command.Parameters.Add("presult_set_cur", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                    OracleDataReader dr = command.ExecuteReader();
                    dtab.Load(dr);
                    command.Parameters.Clear();
                    return dtab;

                }

                catch (OracleException ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public DataTable GetAllProductGroup()
        {
            DataTable dtab = new DataTable();
            OracleDataAdapter adp = new OracleDataAdapter();
            using (OracleConnection connection = new OracleConnection())
            {

                connection.ConnectionString = connectionString;
                try
                {

                    connection.Open();
                    OracleCommand command = new OracleCommand();
                    command.Connection = connection;
                    command.CommandText = "fsp_get_product_group_param";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("perrorcode", OracleDbType.Int32, 5).Direction = ParameterDirection.Output;
                    command.Parameters.Add("perrormsg", OracleDbType.Varchar2, 2000).Direction = ParameterDirection.Output;
                    command.Parameters.Add("presult_set_cur", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                    OracleDataReader dr = command.ExecuteReader();
                    dtab.Load(dr);
                    command.Parameters.Clear();
                    return dtab;

                }

                catch (OracleException ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
            }

        }
        public DataTable GetAllCategory()
        {
            DataTable dtab = new DataTable();
            OracleDataAdapter adp = new OracleDataAdapter();
            using (OracleConnection connection = new OracleConnection())
            {

                connection.ConnectionString = connectionString;
                try
                {

                    connection.Open();
                    OracleCommand command = new OracleCommand();
                    command.Connection = connection;
                    command.CommandText = "fsp_get_csc_category";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("perrorcode", OracleDbType.Int32, 5).Direction = ParameterDirection.Output;
                    command.Parameters.Add("perrormsg", OracleDbType.Varchar2, 2000).Direction = ParameterDirection.Output;
                    command.Parameters.Add("presult_set_cur", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                    OracleDataReader dr = command.ExecuteReader();
                    dtab.Load(dr);
                    command.Parameters.Clear();
                    return dtab;

                }

                catch (OracleException ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
            }

        }

        public DataTable GetAllDepositCode()
        {
            DataTable dtab = new DataTable();
            OracleDataAdapter adp = new OracleDataAdapter();
            using (OracleConnection connection = new OracleConnection())
            {

                connection.ConnectionString = connectionString;
                try
                {

                    connection.Open();
                    OracleCommand command = new OracleCommand();
                    command.Connection = connection;
                    command.CommandText = "fsp_get_deposit_code";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("perrorcode", OracleDbType.Int32, 5).Direction = ParameterDirection.Output;
                    command.Parameters.Add("perrormsg", OracleDbType.Varchar2, 2000).Direction = ParameterDirection.Output;
                    command.Parameters.Add("presult_set_cur", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                    OracleDataReader dr = command.ExecuteReader();
                    dtab.Load(dr);
                    command.Parameters.Clear();
                    return dtab;

                }

                catch (OracleException ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
            }

        }
        public DataTable GetAllSectorCode()
        {
            DataTable dtab = new DataTable();
            OracleDataAdapter adp = new OracleDataAdapter();
            using (OracleConnection connection = new OracleConnection())
            {

                connection.ConnectionString = connectionString;
                try
                {

                    connection.Open();
                    OracleCommand command = new OracleCommand();
                    command.Connection = connection;
                    command.CommandText = "fsp_get_sector_code";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("perrorcode", OracleDbType.Int32, 5).Direction = ParameterDirection.Output;
                    command.Parameters.Add("perrormsg", OracleDbType.Varchar2, 2000).Direction = ParameterDirection.Output;
                    command.Parameters.Add("presult_set_cur", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                    OracleDataReader dr = command.ExecuteReader();
                    dtab.Load(dr);
                    command.Parameters.Clear();
                    return dtab;

                }

                catch (OracleException ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public string InsertSbsGlDepoSetup(Dictionary<string, string> obj)
        {
            
            OracleDataAdapter adp = new OracleDataAdapter();
            using (OracleConnection connection = new OracleConnection())
            {

                connection.ConnectionString = connectionString;
                try
                {
                    //Bchar[] depoCode = obj["dep_code"].ToCharArray();

                    connection.Open();
                    OracleCommand command = new OracleCommand();
                    command.Connection = connection;
                    command.CommandText = "fsp_set_sbs_gl_depo_setup";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("pgl_acc_sl", OracleDbType.NVarchar2).Value = obj["acc_sl"].ToString();
                    command.Parameters.Add("pgl_acc_no", OracleDbType.NVarchar2).Value = obj["acc_no"].ToString();
                    command.Parameters.Add("pgl_acc_nm", OracleDbType.NVarchar2).Value = obj["acc_nm"].ToString();
                    command.Parameters.Add("pis_payable_ac", OracleDbType.Int32).Value = Convert.ToInt32(obj["pay_acc"]);
                    command.Parameters.Add("pis_vat_tax_ac", OracleDbType.Int32).Value = Convert.ToInt32(obj["vt_tx"]);
                    command.Parameters.Add("pdeposit_code", OracleDbType.Varchar2).Value = obj["dp_code"];
                    command.Parameters.Add("pservice_type_id", OracleDbType.Varchar2).Value = obj["acc_typ"].ToString() == "Islamic" ? "I" :"C";
                    command.Parameters.Add("psector_id_sbs", OracleDbType.Varchar2).Value = obj["sect_code"].ToString();
                    command.Parameters.Add("psbs1_product_group_id", OracleDbType.Int32).Value = Convert.ToInt32(obj["pd_group"]);
                    command.Parameters.Add("psbs_enable_flag", OracleDbType.Int32).Value = Convert.ToInt32(obj["sbsFlag"]);
                    command.Parameters.Add("pcsc_category_id", OracleDbType.Int32).Value = Convert.ToInt32(obj["csc_category_id"]);

                    command.Parameters.Add("perrorcode", OracleDbType.Int32, 5).Direction = ParameterDirection.Output;
                    command.Parameters.Add("perrormsg", OracleDbType.Varchar2, 2000).Direction = ParameterDirection.Output;
                    command.ExecuteNonQuery();
                    string perrormsg = command.Parameters["perrormsg"].Value.ToString();
                    command.Parameters.Clear();
                    return perrormsg;

                }

                catch (OracleException ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public DataTable GetSbsDetails(string accNo, string serviceId)
        {
            DataTable dtab = new DataTable();
            string sql = @"SELECT t.deposit_code
                                 ,t.is_payable_ac
                                 ,t.is_vat_tax_ac
                                 ,t.sector_id_sbs
                                 ,t.sbs_enable_flag
                                 ,t.sbs1_product_group_id 
                                 ,t.csc_category_id
                            FROM SEBL_SBS_GL_DEPO_SETUP t
                           WHERE t.gl_acc_no='" +accNo+"'AND t.service_type_id='"+serviceId+"'";
            using (OracleConnection connection = new OracleConnection())
            {
                connection.ConnectionString = connectionString;
                try
                {
                    connection.Open();
                    OracleCommand command = new OracleCommand(sql,connection);
                    command.CommandType = CommandType.Text;
                    OracleDataReader dr =command.ExecuteReader();
                    dtab.Load(dr);
                    return dtab;

                }
                catch(OracleException ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
}