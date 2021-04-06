using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Extensions
{
    public class ImagesHelpers
    {
        public static bool ImageIsValid(IFormFile file)
        {
            if (file.Length <= 1 * 1024 * 1024)
            { return true; }
            else
            {
                return false;
            }
        }
        public static void DeleteImage(string filename, string path)
        {
            try
            {
                string file = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", string.Concat(path, filename));
                if (File.Exists(file))
                {
                    File.Delete(file);
                }
            }
            catch 
            { }

        }
        public static async Task<string> UploadAsync(IFormFile img, string paths)
        {
            var uploads = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", paths);
            string fileID = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 15);
            var ext= GetMimeTypes(img.ContentType);
            string filename = fileID + ext;
            var filePath = Path.Combine(uploads, filename);
            using (var fileStream = new FileStream(filePath, FileMode.Create))
            {
                await img.CopyToAsync(fileStream);
            }
            return filename;
        }
        public static string GetMimeTypes(string url)
        {
            string ext = "";
            switch (url)
            {
                case "text/plain":
                    ext = ".txt";
                    break;
                case "application/pdf":
                    ext = ".pdf";
                    break;
                case "application/vnd.ms-word":
                    ext = ".doc";
                    break;
                case "application/vnd.openxmlformats-officedocument.wordprocessingml.document":
                    ext = ".docx";
                    break;
                case "application/vnd.ms-excel":
                    ext = ".xls";
                    break;
                case "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet":
                    ext = ".xlsx";
                    break;
                case "application/vnd.openxmlformats-officedocument.presentationml.presentation":
                    ext = ".pptx";
                    break;
                case "image/jpeg":
                    ext = ".jpeg";
                    break;
                case "image/jpg":
                    ext = ".jpg";
                    break;
                case "image/png":
                    ext = ".png";
                    break;
                case "image/gif":
                    ext = ".gif";
                    break;
                case "image/svg+xml":
                    ext = ".svg";
                    break;
            }
            return ext;
        }
    }
}
