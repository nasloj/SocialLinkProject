using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Employees.Data;
using Employees.Models;
using Employees.ViewModels;
using System.IO;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;

namespace Employees.Controllers
{
    public class EmployeesController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment webHostEnvironment;
        public EmployeesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Employees
        public async Task<IActionResult> Index()
        {
            return View(await _context.Employee.ToListAsync());
        }


        public ViewResult Search(string q)
        {
            var employees = from p in _context.Employee select p;
            if (!string.IsNullOrWhiteSpace(q))
            {
                //employees = employees.Where(p => p.FirstName.Contains(q));
                //employees = employees.Where(c => c.LastName.Contains(q) || c.FirstName.Contains(q));
                //employees = employees.Where(c => c.LastName.Contains(q) && c.Age ==5);
                employees = employees.Where(c => c.FullName.Equals(q));


            }
            return View(employees);
        }


        // GET: Employees/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var employee = await _context.Employee
                .FirstOrDefaultAsync(m => m.Id == id);
            if (employee == null)
            {
                return NotFound();
            }
            ViewBag.Employee = employee;
            return View();
        }

        // GET: Employees/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Employees/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,FirstName,LastName,FullName,Age,Gender,Position,Office,Salary,ProfilePicture")] Employee employee)
        {
            if (ModelState.IsValid)
            {
                _context.Add(employee);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(employee);
        }

        // GET: Employees/Edit/5
        public async Task<IActionResult> Edit0(int? EmployeeID)
        {
            if (EmployeeID == null)
            {
                return NotFound();
            }

            var employee = await _context.Employee.FindAsync(EmployeeID);
            if (employee == null)
            {
                return NotFound();
            }
            return View(employee);
        }



        // GET: Employees/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var employee = await _context.Employee
                .FirstOrDefaultAsync(m => m.Id == id);
            if (employee == null)
            {
                return NotFound();
            }

            return View(employee);
        }

        // POST: Employees/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var employee = await _context.Employee.FindAsync(id);
            _context.Employee.Remove(employee);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EmployeeExists(int id)
        {
            return _context.Employee.Any(e => e.Id == id);
        }

        public IActionResult New()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> New(EmployeeViewModel model)
        {
            if (ModelState.IsValid)
            {
                string uniqueFileName = UploadedFile(model);

                Employee employee = new Employee
                {
                    FirstName = model.FirstName,
                    LastName = model.LastName,
                    FullName = model.FirstName + " " + model.LastName,
                    Gender = model.Gender,
                    Age = model.Age,
                    Office = model.Office,
                    Position = model.Position,
                    Salary = model.Salary,
                    ProfilePicture = uniqueFileName,
                };
                _context.Add(employee);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View();
        }




        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var employee = await _context.Employee
                .FirstOrDefaultAsync(m => m.Id == id);
            if (employee == null)
            {
                return NotFound();
            }


            ViewBag.Employee = employee;



            EmployeeViewModel e = new EmployeeViewModel();
            e.FirstName = employee.FirstName;
            e.LastName = employee.LastName;
            e.Gender = employee.Gender;
            e.Age = employee.Age;
            e.Office = employee.Office;
            e.Position = employee.Position;
            e.Salary = employee.Salary;
            e.ProfilePicture = employee.ProfilePicture;

            return View(e);
        }


        // POST: Employees/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit1(int id, [Bind("Id,FirstName,LastName,FullName,Age,Gender,Position,Office,Salary,ProfilePicture")] Employee employee)
        {
            if (id != employee.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(employee);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EmployeeExists(employee.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(employee);
        }






        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int EmployeeID, EmployeeViewModel model)
        {
            


            if (ModelState.IsValid)
            {
                
                string uniqueFileName = UploadedFile(model);

                Employee employee = _context.Employee.Find(EmployeeID);
                employee.FirstName = model.FirstName;
                employee.LastName = model.LastName;
                employee.FullName = model.FirstName + " " + model.LastName;
                employee.Gender = model.Gender;
                employee.Age = model.Age;                
                employee.Office = model.Office;
                employee.Gender = model.Gender;
                employee.Position = model.Position;
                employee.Salary = model.Salary;
                employee.ProfilePicture = uniqueFileName;

                //_context.Update(employee);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View();
        }














        private string UploadedFile(EmployeeViewModel model)
        {
            string uniqueFileName = null;

            if (model.ProfileImage != null)
            {
                string uploadsFolder = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/Images");
                //uniqueFileName = Guid.NewGuid().ToString() + "_" + model.ProfileImage.FileName;
                uniqueFileName = model.ProfileImage.FileName;
                string filePath = Path.Combine(uploadsFolder, uniqueFileName);

                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    model.ProfileImage.CopyTo(fileStream);
                }
            }
            return uniqueFileName;
        }







    }



}
