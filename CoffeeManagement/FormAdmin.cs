﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CoffeManagement
{
    public partial class FormAdmin : Form
    {
        public FormAdmin()
        {
            InitializeComponent();
        }

        private void lb_header_Click(object sender, EventArgs e)
        {

        }

        private void FormAdmin_Load(object sender, EventArgs e)
        {

        }

        private void tab_drink_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void pn_left_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button23_Click(object sender, EventArgs e)
        {

        }

        private void lb_to_Click(object sender, EventArgs e)
        {

        }

        private void btn_table_Click(object sender, EventArgs e)
        {
            FormTable formTable = new FormTable();
            this.Dispose();
            formTable.ShowDialog();
        }

        private void btn_logOut_Click(object sender, EventArgs e)
        {
            FormLogin formLogin = new FormLogin();
            this.Dispose();
            formLogin.ShowDialog();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            FormEditInformation formEditInformation = new FormEditInformation();
            this.Dispose();
            formEditInformation.ShowDialog();
        }
    }
}
