using CSC.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using CSC.Model;
using Newtonsoft.Json;

namespace CSC.UI
{
    /// <summary>
    /// Summary description for GetAccountService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class GetAccountService : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public   string GetAccountsByDate(string dateFrom, string dateTo)
        {
            
            //string dateFrom = @"03/28/2019";
            GlAccountManager glAccountManager = new GlAccountManager();

            DataTable dt = glAccountManager.GetAccountsByDate(dateFrom, dateTo);

            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    if (col.ColumnName == "GL_ACC_SL" || col.ColumnName == "GL_ACC_NO" ||
                        col.ColumnName == "GL_ACC_NM" || col.ColumnName == "SERVICE_TYPE_ID" || col.ColumnName == "OPENING_DT")
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }

            return JsonConvert.SerializeObject(rows);
            //Context.Response.Write(serializer.Serialize(rows));

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public object GetAccountsByDate1()
        {
            DataTables result = new DataTables();
            // Initialization.
            string dateFrom = HttpContext.Current.Request.Params["dateFrom"];
            string dateTo = HttpContext.Current.Request.Params["dateTo"];
            string search = HttpContext.Current.Request.Params["search[value]"];
            string draw = HttpContext.Current.Request.Params["draw"];
            string order = HttpContext.Current.Request.Params["order[0][column]"];
            string orderDir = HttpContext.Current.Request.Params["order[0][dir]"];
            int startRec = Convert.ToInt32(HttpContext.Current.Request.Params["start"]);
            int pageSize = Convert.ToInt32(HttpContext.Current.Request.Params["length"]);

            //string dateFrom = @"03/28/2019";
            GlAccountManager glAccountManager = new GlAccountManager();

            DataTable dt = glAccountManager.GetAccountsByDate(dateFrom, dateTo);

            List<CorGlChart> data=new List<CorGlChart>();

            foreach (DataRow dr in dt.Rows)
            {
                CorGlChart crgl=new CorGlChart();
                crgl.GL_ACC_SL = dr["GL_ACC_SL"].ToString();
                crgl.GL_ACC_NM = dr["GL_ACC_NM"].ToString();
                crgl.GL_ACC_NO = dr["GL_ACC_NO"].ToString();
                crgl.SERVICE_TYPE_ID = dr["SERVICE_TYPE_ID"].ToString();
                crgl.OPENING_DT = Convert.ToDateTime(dr["OPENING_DT"]);
                crgl.SECTOR_NAME = dr["SECTOR_NAME"].ToString();

                data.Add(crgl);
            }
            // Total record count.
            int totalRecords = data.Count;

            // Verification.
            if (!string.IsNullOrEmpty(search) &&
                !string.IsNullOrWhiteSpace(search))
            {
                // Apply search
                data = data.Where(p => p.GL_ACC_SL.ToString().ToLower().Contains(search.ToLower()) ||
                                       p.GL_ACC_NM.ToLower().Contains(search.ToLower()) ||
                                       p.GL_ACC_NO.ToString().ToLower().Contains(search.ToLower()) ||
                                       p.SERVICE_TYPE_ID.ToLower().Contains(search.ToLower()) ||
                                       p.OPENING_DT.ToString().ToLower().Contains(search.ToLower())).ToList();
            }

            // Sorting.
           // data = _Default.SortByColumnWithOrder(order, orderDir, data);    

            // Filter record count.
            int recFilter = data.Count;

            // Apply pagination.
            data = data.Skip(startRec).Take(pageSize).ToList();

            // Loading drop down lists.
            result.draw = Convert.ToInt32(draw);
            result.recordsTotal = totalRecords;
            result.recordsFiltered = recFilter;
            result.data = data;

            return result;
            //Context.Response.Write(serializer.Serialize(rows));

        }

        public DataTable GetDataTableFromCacheOrDatabase(string dateFrom, string dateTo)
        {
            GlAccountManager glAccountManager = new GlAccountManager();
            DataTable dataTable = HttpContext.Current.Cache["secret key"] as DataTable;
            string dateF = HttpContext.Current.Cache["dateFrom"] as string;
            string dateT = HttpContext.Current.Cache["dateTo"] as string;
            if (dateF!= dateFrom||dateT!=dateTo)
            {

                dataTable = glAccountManager.GetAccountsByDate(dateFrom, dateTo);
                HttpContext.Current.Cache["secret key"] = dataTable;
                HttpContext.Current.Cache["dateFrom"] = dateFrom;
                HttpContext.Current.Cache["dateTo"] = dateTo;
            }
            return dataTable;
        }

        [WebMethod]
        //[ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void GetProductGroupDropdown()
        {
            GlAccountManager glAccountManager = new GlAccountManager();
            DataTable dt = glAccountManager.GetAllProductGroup();
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    
                        row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            //return JsonConvert.SerializeObject(rows);
            Context.Response.Write(JsonConvert.SerializeObject(rows));

        }

        [WebMethod]
        public void GetDepositDropdown()
        {
            GlAccountManager glAccountManager = new GlAccountManager();
            DataTable dt = glAccountManager.GetAllDepositCode();
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {

                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            //return JsonConvert.SerializeObject(rows);
            Context.Response.Write(JsonConvert.SerializeObject(rows));

        }

        [WebMethod]
        public void GetSectorDropdown()
        {
            GlAccountManager glAccountManager = new GlAccountManager();
            DataTable dt = glAccountManager.GetAllSectorCode();
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {

                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            //return JsonConvert.SerializeObject(rows);
            Context.Response.Write(JsonConvert.SerializeObject(rows));

        }

        [WebMethod]
        public void GetCategoryDropdown()
        {
            GlAccountManager glAccountManager = new GlAccountManager();
            DataTable dt = glAccountManager.GetAllCategory();
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {

                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            //return JsonConvert.SerializeObject(rows);
            Context.Response.Write(JsonConvert.SerializeObject(rows));

        }

        [WebMethod]
        public string SaveGlDepoSetup(Dictionary<string,string> obj)
        {

            if (obj.Values.Contains("-1"))
            {
                return "error";
            }

            GlAccountManager glAccountManager = new GlAccountManager();
            string message = glAccountManager.InsertSbsGlDepoSetup(obj);
            if (message=="null")
            {
                return "Saved Successfully !!";
            }
            else
            {
                return "error";
            }
        }
         [WebMethod]
        public string GetSbsDetails(string accNo, string serviceId)
        {
            GlAccountManager glAccountManager = new GlAccountManager();
            DataTable dt = glAccountManager.GetSbsDetails(accNo,serviceId);
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {

                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            return JsonConvert.SerializeObject(rows);
            //Context.Response.Write(JsonConvert.SerializeObject(rows));
}
    }
}
