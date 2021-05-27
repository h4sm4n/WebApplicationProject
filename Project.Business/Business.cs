using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Validation;
using System.Globalization;
using System.Linq;
using System.Net.Sockets;
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

        public void AddWork(string type, DateTime start, DateTime end, int employeeid, int customerid, int adressid, decimal price, string plan)
        {
            try
            {
                Isler work = new Isler();
                work.IsTuru = type;
                work.BaslangicTarihi = start;
                work.BitisTarihi = end;
                work.Durum = "Aktif";
                work.AdresId = adressid;
                work.YetkiliPersonelId = employeeid;
                work.MusteriId = customerid;
                work.Fiyat = price;
                work.OdemePlani = plan;
                db.Isler.Add(work);
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

        public static List<string> GetCustomers()
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = from x in db.Musteriler
                    select x.MusteriTc;

                List<string> liste = sorgu.ToList();

                return liste;
            }

        }

        public static List<string> GetEmployees()
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = from x in db.Personeller
                    select x.PersonelAdi + x.PersonelSoyadi;
                    

                List<string> liste = sorgu.ToList();

                return liste;
            }

        }

        public static List<string> GetAdressByCustomers(string musteri)
        {
            Model1 db = new Model1();
            using (db)
            {
                List<int> sorgu = (from x in db.Musteriler
                    where x.MusteriTc.Contains(musteri)
                    select x.AdresId).ToList();


                List<string> liste = new List<string>();

                foreach (var item in sorgu )
                {
                    var sorgu2 = from a in db.Adresler
                        where a.Id.Equals(item)
                        select a.AdresDetay;
                    liste.Add(sorgu2.FirstOrDefault());
                }

                return liste;
            }

        }

        public static int GetCustomerId(string tc)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = from a in db.Musteriler
                    where a.MusteriTc.Contains(tc)
                    select a.Id;

                int result = Convert.ToInt32(sorgu);

                return result;
            }
        }

        public static int GetEmployeeId(string tc)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = from a in db.Personeller
                    where a.PersonelTc.Contains(tc)
                    select a.Id;

                int result = Convert.ToInt32(sorgu);

                return result;
            }
        }

        public static int GetAdressId(string adres)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = from a in db.Adresler
                    where a.AdresDetay.Contains(adres)
                    select a.Id;

                int result = Convert.ToInt32(sorgu);

                return result;
            }
        }
    }
}
