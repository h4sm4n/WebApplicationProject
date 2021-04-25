﻿using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Project.DataAccess;

namespace Project.Business
{
    public class Business
    {
        Model1 db = new Model1();
        

        public void AddBank(string name, string department, string accnumber, string iban, string detail)
        {
            try
            {
                Bankalar bank = new Bankalar();
                bank.BankaAdi = name;
                bank.BankaSube = department;
                bank.HesapNo = accnumber;
                bank.Iban = iban;
                bank.BankaDetay = detail;
                bank.BankaTip = "Sirket";
                db.Bankalar.Add(bank);
                db.SaveChanges();
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }
    }
}
