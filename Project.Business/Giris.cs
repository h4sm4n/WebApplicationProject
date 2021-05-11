using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Project.DataAccess;

namespace Project.Business
{
    public static class Giris
    {
        public static int getSessionRole(string uname, string pw)
        {
            Model1 db = new Model1();
            using (db)
            {
                try
                {
                    int query = (from role in db.Kullanicilar
                        where role.KullaniciAdi == uname && role.KullaniciSifre == pw
                        select role.SessionRoleId).Single();
                    return query;
                }


                catch
                {
                    return 00404;
                }
            }
        }

        public static List<Kullanicilar> getCredentials(string uname, string pw)
        {
            Model1 db = new Model1();
            using (db) 
            {
                var query = from cr in db.Kullanicilar
                    where cr.KullaniciAdi == uname && cr.KullaniciSifre == pw
                    select cr;

                //select new { cr.kullaniciID, cr.kullaniciAdi, cr.tckn, cr.bolumID, cr.pozisyonID };
                //select (cr.kullaniciID, cr.kullaniciAdi, cr.tckn, cr.bolumID, cr.pozisyonID)).ToList();


                /*var credentials = from cr in db.kullanicis
                                  where cr.kullaniciAdi.Equals(uname) && cr.parola.Equals(pw)
                                  select cr;*/

                List<Kullanicilar> credentials = query.ToList(); 
                return credentials;
            }
        }

        public static string getPozisyonAd(int pozid)
        {
            Model1 db = new Model1();
            using (db)
            {
                string query = (from pid in db.SessionRoles
                    where pid.Id == pozid
                    select pid.RoleName).Single();
                return query;
            }
        }


    }
}
