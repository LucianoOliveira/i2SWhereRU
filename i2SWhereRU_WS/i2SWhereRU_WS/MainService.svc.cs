using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace i2SWhereRU_WS
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "MainService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select MainService.svc or MainService.svc.cs at the Solution Explorer and start debugging.
    public class MainService : IMainService
    {
        private i2SWhereRUEntities entities = new i2SWhereRUEntities();
        public KeyValuePair<int, int> getBeaconLocation(int personID)
        {
            if (personExists(personID) > 0)
            {
                Person p1 = entities.Persons.Single(p => p.p_id == personID);
                Int32 workstationID = p1.p_location_station_id;
                Station s1 = entities.Stations.Single(p => p.s_id == workstationID);
                int X_position = Convert.ToInt32(s1.s_X_position);
                int Y_position = Convert.ToInt32(s1.s_Y_position);
                return new KeyValuePair<int, int>(X_position, Y_position);
            }
            else
            {
                return new KeyValuePair<int, int>(0, 0);
            }
        }

        public string getMapLocation(int personID)
        {
            if (personExists(personID) > 0)
            {
                Person p1 = entities.Persons.Single(p => p.p_id == personID);
                Int32 mapID = p1.p_location_map_id;
                Map m1 = entities.Maps.Single(p => p.m_id == mapID);
                string location = m1.m_image_location;
                return location;
            }
            else
            {
                return "";
            }
        }

        public int personExists(int personID)
        {
            return entities.Persons.Count(p => p.p_id == personID);
        }
    }
}
