using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using mediabalans_sufre.Areas.WebCms.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using MySql.Data.MySqlClient;

namespace mediabalans_sufre.Areas.WebCms.Controllers
{
    [Area("WebCms")]
    [Route("WebCms/[controller]/[action]")]
    //[Authorize(Roles = "Admin,Manger,Editor")]
    public class AjaxsController : Controller
    {
        public IConfiguration _configuration;
        public readonly ILogger<AjaxsController> _logger;
        public AjaxsController(IConfiguration configuration, ILogger<AjaxsController> logger)
        {
            _configuration = configuration;
            _logger = logger;
        }
        public async Task<IActionResult> Order(string table, List<Order> order)
        {
            JsonResultModel js = new JsonResultModel();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(_configuration.GetConnectionString("connect")))
                {
                    await connection.OpenAsync();
                    foreach (var item in order)
                    {
                        string query = "UPDATE " + table + " SET OrderBy =" + item.Place + " WHERE id = " + item.Id + "";
                        MySqlCommand comm = connection.CreateCommand();
                        comm.CommandText = query;
                        await comm.ExecuteNonQueryAsync();
                    }
                    await connection.CloseAsync();
                }
                js.IsSuccess = true;
                js.Messages = "Siralama Isleminiz Gerceklesti.";
            }
            catch (Exception ex)
            {

                js.IsSuccess = false;
                js.Messages = "Beklenmedik bir hata " + ex.Message;
            }
            return Json(js);
        }
    }
}