using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace i2SWhereRU_WS
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IMainService" in both code and config file together.
    [ServiceContract]
    public interface IMainService
    {
        [OperationContract]
        Int32 personExists(Int32 personID);

        [OperationContract]
        string getMapLocation(Int32 personID);

        [OperationContract]
        KeyValuePair<int,int> getBeaconLocation(Int32 personID);
    }
}
