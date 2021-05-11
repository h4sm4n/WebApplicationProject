using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Validation;
using System.Globalization;
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

        public void AddIncome(string type, string invoiceno, string invoicedate, string accounter)
        {
            try
            {
                Gelirler gelir = new Gelirler();
                gelir.GelirTipi = type;
                gelir.FaturaNo = invoiceno;
                gelir.Ay = DateTime.Now.Month.ToString("d2");
                gelir.Yil = DateTime.Now.Year.ToString("d4");
                gelir.FaturaTarih = Convert.ToDateTime(invoicedate);
                gelir.Muhasebeci = accounter;
                db.Gelirler.Add(gelir);
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

        public void AddOutcome(string month, int year, decimal elektricity, decimal water, decimal gas, decimal internet, decimal employeecharges, decimal tools, decimal office, decimal others)
        {
            try
            {
                Giderler gider = new Giderler();
                gider.Ay = month;
                gider.Yil = year;
                gider.Elektrik = elektricity;
                gider.Su = water;
                gider.Dogalgaz = gas;
                gider.Internet = internet;
                gider.Maaslar = employeecharges;
                gider.Malzeme = tools;
                gider.Ofis = office;
                gider.Diger = others;
                db.Giderler.Add(gider);
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
