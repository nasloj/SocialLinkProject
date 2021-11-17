using Employees.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Employees.Controllers
{
    public class FileUploadController : Controller
    {
        private readonly ILogger<FileUploadController> _logger;

        public FileUploadController(ILogger<FileUploadController> logger)
        {
            _logger = logger;
        }


        //https://www.youtube.com/watch?v=pLuHhQBBPe8
        public IActionResult Upload()
        {
            return View();
        }
        /*
            We can access the individual files uploaded to the application through the model binding using the IFormFile interface 
            model binding in asp.net MVC Maps the data from the HTTP requests to the action method parameters.
        */




        [HttpPost("FileUpload")]   /* now let's modify the file upload controller first we add the HTTP POST attribute to mark this
                                    * action for the post requests and create the "Upload" action in an async manner with the list
                                    * "IFormFile" parameter*/
        public async Task<IActionResult> Upload(List<Microsoft.AspNetCore.Http.IFormFile> files)
         {
                    var size = files.Sum(f => f.Length); /* Extract the size of all the files */


            var filePaths = new List<string>();  /*we needed path for all the files so we create an empty string list */

            foreach (var formFi1e in files) /* "foreach" file in our files array */
            {
                string uniqueFileName = null;
                if (formFi1e.Length > 0) /* Check if it has the length */ 
                {

                    /*If it has the length we created the path for that file using the directory get current director methods
                     * and the "FileName" property
                     *
                    */

                    string uploadsFolder = Path.Combine(Directory.GetCurrentDirectory(), "uploaddedFiles");
                            uniqueFileName = Guid.NewGuid().ToString() + "_" + formFi1e.FileName;
                            string filePath = Path.Combine(uploadsFolder, uniqueFileName);




                            filePaths.Add(filePath);
                    /* Add that path to the list after that we create a new file stream object with our file path and file mode create
                     * and just copy the file to the stream
                    */

                    using (var stream = new FileStream(filePath , FileMode.Create))
                            {
                                await formFi1e.CopyToAsync(stream); /*finally you just returned an anonymous object with count, size,
                                                                     * and paths properties
                                                                    */

                    }

                        }

                    }

                    return Ok(new { files.Count, size, filePaths });
         }






        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
