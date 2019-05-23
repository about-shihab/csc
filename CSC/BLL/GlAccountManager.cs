using CSC.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CSC.BLL
{
    public class GlAccountManager
    {
        GlAccountGateway glAccountGateway = new GlAccountGateway();
        public DataTable GetAccountsByDate(string dateFrom, string dateTo)
        {
            return glAccountGateway.GetAccountsByDate(dateFrom, dateTo);
        }
        public DataTable GetAllProductGroup()
        {
            return glAccountGateway.GetAllProductGroup();
        }
        public DataTable GetAllDepositCode()
        {
            return glAccountGateway.GetAllDepositCode();
        }
        public DataTable GetAllSectorCode()
        {
            return glAccountGateway.GetAllSectorCode();
        }
        public string InsertSbsGlDepoSetup(Dictionary<string, string> obj)
        {
            return glAccountGateway.InsertSbsGlDepoSetup(obj);
        }
        public DataTable GetSbsDetails(string accNo, string serviceId)
        {
            serviceId = serviceId.ToUpper() == "Islamic".ToUpper() ? "I" : "C";
            return glAccountGateway.GetSbsDetails(accNo, serviceId);
        }
    }
}