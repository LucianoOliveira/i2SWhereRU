//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace i2SWhereRU_WS
{
    using System;
    using System.Collections.Generic;
    
    public partial class Station
    {
        public Station()
        {
            this.Persons = new HashSet<Person>();
        }
    
        public int s_id { get; set; }
        public string s_description { get; set; }
        public string s_image_location { get; set; }
        public Nullable<int> s_X_position { get; set; }
        public Nullable<int> s_Y_position { get; set; }
        public Nullable<int> s_Z_position { get; set; }
    
        public virtual ICollection<Person> Persons { get; set; }
    }
}
