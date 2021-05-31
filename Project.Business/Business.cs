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

        public void AddOutcome(string month, string year, string elektricity, string water, string gas, string internet, string employeecharges, string tools, string office, string others)
        {
            try
            {
                Giderler gider = new Giderler();
                gider.Ay = month;
                gider.Yil = Convert.ToInt32(year);
                gider.Elektrik = Convert.ToDecimal(elektricity);
                gider.Su = Convert.ToDecimal(water);
                gider.Dogalgaz = Convert.ToDecimal(gas);
                gider.Internet = Convert.ToDecimal(internet);
                gider.Maaslar = Convert.ToDecimal(employeecharges);
                gider.Malzeme = Convert.ToDecimal(tools);
                gider.Ofis = Convert.ToDecimal(office);
                gider.Diger = Convert.ToDecimal(others);
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

        public void AddWork(string type, string start, string end, int employeeid, int customerid, int adressid, string price, string plan)
        {
            try
            {
                Isler work = new Isler();
                work.IsTuru = type;
                work.BaslangicTarihi = Convert.ToDateTime(start);
                work.BitisTarihi = Convert.ToDateTime(end);
                work.Durum = "Aktif";
                work.AdresId = adressid;
                work.YetkiliPersonelId = employeeid;
                work.MusteriId = customerid;
                work.Fiyat = Convert.ToDecimal(price);
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

        public void AddNote(string note, string type, string alarm)
        {
            try
            {
                Notlar notes = new Notlar();
                notes.Olusturulma = DateTime.Now;
                notes.NotDetay = note;
                notes.Alarm = Convert.ToDateTime(alarm);
                notes.NotTuru = type;
                db.Notlar.Add(notes);
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

        public void AddEmployee(string name, string surname, int depid, string idnumber, string mail, string salary, string phone)

        {
            try
            {
                Personeller employee = new Personeller();
                employee.PersonelAdi = name;
                employee.PersonelSoyadi = surname;
                employee.DepartmanId = depid;
                employee.GirisTarihi = DateTime.Now;
                employee.PersBankaId = 3;
                employee.KullaniciId = 4;
                employee.PersonelTc = idnumber;
                employee.PersonelMail = mail;
                employee.PersonelMaas = Convert.ToDecimal(salary);
                employee.AdresId = 2;
                employee.PersonelTelefon = phone;
                db.Personeller.Add(employee);
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

        public void AddAppointment(int userid, string adress, string date, string time, string detail, string type)
        {
            int adresid = GetAdressId(adress);
            int customerid = GetCustomerIdByUserId(userid);
            try
            {
                Randevular appointment = new Randevular();
                appointment.MusteriId = customerid;
                appointment.AdresId = adresid;
                appointment.Tarih = Convert.ToDateTime(date);
                appointment.Saat = TimeSpan.Parse(time);
                appointment.Detay = detail;
                appointment.IsTuru = type;
                db.Randevular.Add(appointment);
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
                    where x.MusteriTc == musteri
                    select x.AdresId).ToList();


                List<string> liste = new List<string>();

                foreach (var item in sorgu )
                {
                    var sorgu2 = (from a in db.Adresler
                        where a.Id.Equals(item)
                        select a.AdresDetay).FirstOrDefault();
                    liste.Add(sorgu2);
                }

                return liste;
            }

        }

        public static int GetAdressIdByCustomers(string musteri)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = (from x in db.Musteriler
                    where x.MusteriTc == musteri
                    select x.AdresId).FirstOrDefault();

                return sorgu;
            }

        }

        public static int GetCustomerId(string tc)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = (from a in db.Musteriler
                    where a.MusteriTc == tc
                    select a.Id).FirstOrDefault();

                int result = sorgu;
                return result;
            }
        }

        public static int GetCustomerIdByUserId(int userid)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = (from a in db.Musteriler
                    where a.KullaniciId == userid
                    select a.Id).FirstOrDefault();

                int result = sorgu;
                return result;
            }
        }

        public static int GetEmployeeId(string tc)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = (from a in db.Personeller
                    where a.PersonelTc == tc
                    select a.Id).FirstOrDefault();

                int result = sorgu;

                return result;
            }
        }

        public static int GetAdressId(string adres)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = (from a in db.Adresler
                    where a.AdresDetay == adres
                    select a.Id).FirstOrDefault();

                int result = sorgu;

                return result;
            }
        }

        public static int GetUserIdByCustomersMail(string mail)
        {
            Model1 model = new Model1();
            using (model)
            {
                var sorgu = (from x in model.Musteriler
                    where x.MusteriMail == mail
                    select x.KullaniciId).FirstOrDefault();

                return sorgu;
            }
        }

        public static int GetUserIdByCustomersTC(string tc)
        {
            Model1 model = new Model1();
            using (model)
            {
                var sorgu = (from x in model.Musteriler
                    where x.MusteriTc == tc
                    select x.KullaniciId).FirstOrDefault();

                return sorgu;
            }
        }


        public void UpdateCustomers(int id, string password)
        {
            Model1 model = new Model1();
            using (model)
            {
                var x = model.Kullanicilar.Find(id);

                x.KullaniciSifre = password;
                model.SaveChanges();
            }
        }

        public void UpdateMusteriler(int id,string tel,string name,string surname,string email)
        {
            Model1 model = new Model1();
            using (model)
            {
                
                var x = model.Musteriler.Find(id);

                x.MusteriTelefon = tel;
                x.MusteriAd = name;
                x.MusteriSoyad = surname;
                x.MusteriMail = email;
                model.SaveChanges();
            }
        }

        public void UpdateAdresses(int id,string detail,string city,string county)
        {
            Model1 model = new Model1();
            using (model)
            {
                var a = model.Adresler.Find(id);
                a.AdresDetay = detail;
                a.Ilce = county;
                a.Sehir = city;
                model.SaveChanges();
            }
        }

        public static string GetUserPasswordByUserId(int id)
        {
            Model1 model = new Model1();
            using (model)
            {
                var sorgu = (from x in model.Kullanicilar
                    where x.Id == id
                    select x.KullaniciSifre).FirstOrDefault();

                return sorgu;
            }
        }

        public static string GetCustomerTcByCustomerId(int id)
        {
            Model1 db = new Model1();
            using (db)
            {
                var sorgu = (from a in db.Musteriler
                    where a.KullaniciId == id
                    select a.MusteriTc).FirstOrDefault();

                string result = sorgu;
                return result;
            }
        }

    }
}
