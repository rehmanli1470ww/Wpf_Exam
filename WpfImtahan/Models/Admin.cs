using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfImtahan.Models
{
    public class Admin 
    {

        public string ?AdminName { get; set; }
        public string ?Surname { get; set; }
        public string ?Email { get; set; }  
        public string ?Password { get; set; }
        public List<Car> ?AdminCar { get; set; }

    
    }
}
