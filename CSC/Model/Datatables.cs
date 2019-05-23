using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSC.Model
{
    public class DataTables
    {
        public int draw { get; set; }
        public int recordsTotal { get; set; }
        public int recordsFiltered { get; set; }
        public List<CorGlChart> data { get; set; }  
    }
}