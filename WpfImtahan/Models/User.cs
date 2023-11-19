using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfImtahan.Models
{
    public class User
    {
        public string ?UserName { get; set; }
        public string ?Surname { get; set; }
        public string ?City { get; set; }
        public string ?Phone { get; set; }
        public string ?Email { get; set; }
        public string ?Birthday { get; set;}
        public string ?Password { get; set;}
        public List<Car> UserCar { get; set; }=new List<Car>();

      
        
    }
}
