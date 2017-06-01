using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Demo5Lagen001.BU
{
    public partial class Docent
    {
        public Array ZoekDocent(string docentnaam)
        {
            using (Demo5Lagen001Container context = new Demo5Lagen001Container())
            {
                IQueryable<Docent> docenten = context.DocentSet;

                Docent[] docArray = (
                    from d in docenten
                    where d.Naam == docentnaam
                    select d).ToArray();

                return docArray;
            }
        }

        private static DataTable dt;

        public DataTable GeefDocent(string docentnaam)
        {
            Docent d = new Docent();
            Array docgevonden;
            docgevonden = d.ZoekDocent(docentnaam);
            dt = new DataTable();

            for (int i = 0; i < docgevonden.Length; i++)
            {
                Dictionary<string, object> dict = DataDictProperties.DictionaryFromType(docgevonden.GetValue(i));
                if (i == 0)
                {
                    foreach (KeyValuePair<String, object> kvp in dict)
                    {
                        dt.Columns.Add(kvp.Key);    // Kolomen benoemen 
                    }
                }
                DataRow dr = dt.NewRow();
                foreach (KeyValuePair<String, object> kvp in dict)
                {
                    dr[kvp.Key] = kvp.Value;        // Waarden aan de kolommen toevoegen
                }

                dt.Rows.Add(dr);
            }
            return dt;
        }

    }
}