using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TestWSApp.MainService;

namespace TestWSApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnGetInfo_Click(object sender, EventArgs e)
        {
            MainServiceClient loClient = new MainServiceClient();
            Int32 personID = Convert.ToInt32(txtPersonID.Text.Trim());

            string mapImageLocation = loClient.getMapLocation(personID);
            var pair = loClient.getBeaconLocation(personID);
            string X_pos = pair.Key.ToString();
            string Y_pos = pair.Value.ToString();
            txtOutput.Text = "Map Image Location: " + mapImageLocation + " Position X: " + X_pos + " Position Y:" + Y_pos;

        }
    }
}
