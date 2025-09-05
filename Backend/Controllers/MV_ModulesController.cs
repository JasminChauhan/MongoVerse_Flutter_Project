//using Microsoft.AspNetCore.Http;
//using Microsoft.AspNetCore.Identity;
//using Microsoft.AspNetCore.Mvc;
//using Microsoft.Data.SqlClient;
//using MongoVerse.Models;
//using System.Xml.Linq;


//namespace MongoVerse.Controllers
//{
//    [Route("api/[controller]")]
//    [ApiController]
//    public class MV_ModulesController : ControllerBase
//    {
//        private readonly IConfiguration _configuration;
//        public MV_ModulesController(IConfiguration configuration)
//        {
//            _configuration = configuration;
//        }

//        [HttpGet]
//        public IActionResult GetAllModules()
//        {
//            try
//            {
//                List<MV_Modules> listModules = new List<MV_Modules>();
//                SqlConnection connection = new SqlConnection(this._configuration.GetConnectionString("MongoVerse"));
//                connection.Open();
//                SqlCommand command = connection.CreateCommand();
//                command.CommandType = System.Data.CommandType.StoredProcedure;
//                command.CommandText = "PR_MV_Modules_SelectAll";
//                SqlDataReader reader = command.ExecuteReader();
//                if (reader != null)
//                {
//                    while (reader.Read())
//                    {
//                        var module = new MV_Modules();
//                        module.Module_Id = Convert.ToInt32(reader["Module_Id"]);
//                        module.Module_Name = reader["Module_Name"].ToString();
//                        module.Module_Description = reader["Module_Description"].ToString();
//                        listModules.Add(module);
//                    }
//                }
//                Dictionary<string , object> response = new Dictionary<string , object>();
//                response.Add("IsResponse", true);
//                response.Add("HasRecords" , listModules.Count > 0 ? true : false);
//                response.Add("Data" , listModules.Count > 0 ? listModules : null);


//                connection.Close();

//                return Ok(response);
//            }
//            catch (Exception ex) 
//            {
//                return BadRequest(new { 
//                    Message = ex.Message,
//                    InnerException = ex.InnerException
//                });

//            }

//        }
//    }
//}

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Npgsql;
using MongoVerse.Models;
using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
// using Microsoft.Data.SqlClient;
using System.Xml.Linq;

namespace MongoVerse.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MV_ModulesController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public MV_ModulesController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpGet]
        public IActionResult GetAllModules()
        {
            try
            {
                List<MV_Modules> listModules = new List<MV_Modules>();
                using (NpgsqlConnection connection = new NpgsqlConnection(_configuration.GetConnectionString("postgresql")))
                {
                    connection.Open();
                    using (NpgsqlCommand command = new NpgsqlCommand("SELECT module_id, module_name, module_description FROM mv_modules", connection))
                    {
                        using (NpgsqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var module = new MV_Modules
                                {
                                    Module_Id = reader.GetInt32(0),
                                    Module_Name = reader.GetString(1),
                                    Module_Description = reader.GetString(2)
                                };
                                listModules.Add(module);
                            }
                        }
                    }
                }

                Dictionary<string, object> response = new Dictionary<string, object>
                {
                    { "IsResponse", true },
                    { "HasRecords", listModules.Count > 0 },
                    { "Data", listModules.Count > 0 ? listModules : null }
                };

                return Ok(response);
            }
            catch (Exception ex)
            {
                return BadRequest(new
                {
                    Message = ex.Message,
                    InnerException = ex.InnerException?.Message
                });
            }
        }
    }
}

