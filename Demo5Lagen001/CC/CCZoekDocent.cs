using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Demo5Lagen001.BU;

namespace Demo5Lagen001.CC
{
    public class CCZoekDocent
    {
        public DataTable ZoekDocent(string docnaam)
        {
            Docent d = new Docent();
            return d.GeefDocent(docnaam);
        }

        public Array ZoekDocentA(string docnaam)
        {
            Docent d = new Docent();
            return d.ZoekDocent(docnaam);
        }
    }
}