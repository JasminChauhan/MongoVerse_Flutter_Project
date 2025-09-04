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
//    public class MV_TopicsController : ControllerBase
//    {
//        private readonly IConfiguration _configuration;
//        public MV_TopicsController(IConfiguration configuration)
//        {
//            _configuration = configuration;
//        }

//        [HttpGet]
//        public IActionResult GetAllTopics()
//        {
//            try
//            {
//                List<MV_Topics> listTopics = new List<MV_Topics>();
//                SqlConnection connection = new SqlConnection(this._configuration.GetConnectionString("MongoVerse"));
//                connection.Open();
//                SqlCommand command = connection.CreateCommand();
//                command.CommandType = System.Data.CommandType.StoredProcedure;
//                command.CommandText = "PR_MV_Topics_SelectAll";
//                SqlDataReader reader = command.ExecuteReader();
//                if (reader != null)
//                {
//                    while (reader.Read())
//                    {
//                        var topic = new MV_Topics();
//                        topic.Topic_Id = Convert.ToInt32(reader["Topic_Id"]);
//                        topic.Topic_Title = reader["Topic_Title"].ToString();
//                        topic.Topic_Content = reader["Topic_Content"].ToString();
//                        topic.Module_Id = Convert.ToInt32(reader["Module_Id"]);
//                        topic.Topic_Description = reader["Topic_Description"].ToString();
//                        listTopics.Add(topic);
//                    }
//                }
//                Dictionary<string, object> response = new Dictionary<string, object>();
//                response.Add("IsResponse", true);
//                response.Add("HasRecords", listTopics.Count > 0 ? true : false);
//                response.Add("Data", listTopics.Count > 0 ? listTopics : null);


//                connection.Close();

//                return Ok(response);
//            }
//            catch (Exception ex)
//            {
//                return BadRequest(new
//                {
//                    Message = ex.Message,
//                    InnerException = ex.InnerException
//                });

//            }

//        }
//    }
//}


using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using MongoVerse.Models;
using System;
using System.Collections.Generic;

namespace MongoVerse.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MV_TopicsController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public MV_TopicsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/MV_Topics
        [HttpGet]
        public IActionResult GetAllTopics()
        {
            try
            {
                List<MV_Topics> listTopics = new List<MV_Topics>();
                using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("MongoVerse")))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand("PR_MV_Topics_SelectAll", connection)
                    {
                        CommandType = System.Data.CommandType.StoredProcedure
                    };

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            MV_Topics topic = new MV_Topics
                            {
                                Topic_Id = Convert.ToInt32(reader["Topic_Id"]),
                                Topic_Title = reader["Topic_Title"].ToString(),
                                Topic_Content = reader["Topic_Content"].ToString(),
                                Module_Id = Convert.ToInt32(reader["Module_Id"]),
                                Topic_Description = reader["Topic_Description"].ToString()
                            };
                            listTopics.Add(topic);
                        }
                    }
                }

                var response = new Dictionary<string, object>
                {
                    { "IsResponse", true },
                    { "HasRecords", listTopics.Count > 0 },
                    { "Data", listTopics.Count > 0 ? listTopics : null }
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

        
        [HttpGet("/api/[controller]/{moduleId}")]
        public IActionResult GetTopicsByModuleId(int moduleId)
        {
            try
            {
                List<MV_Topics> listTopics = new List<MV_Topics>();
                using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("MongoVerse")))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand("PR_MV_Topics_SelectByModuleId", connection)
                    {
                        CommandType = System.Data.CommandType.StoredProcedure
                    };
                    command.Parameters.AddWithValue("@ModuleId", moduleId);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            MV_Topics topic = new MV_Topics
                            {
                                Topic_Id = Convert.ToInt32(reader["Topic_Id"]),
                                Topic_Title = reader["Topic_Title"].ToString(),
                                Topic_Content = reader["Topic_Content"].ToString(),
                                Module_Id = Convert.ToInt32(reader["Module_Id"]),
                                Topic_Description = reader["Topic_Description"].ToString()
                            };
                            listTopics.Add(topic);
                        }
                    }
                }

                var response = new Dictionary<string, object>
                {
                    { "IsResponse", true },
                    { "HasRecords", listTopics.Count > 0 },
                    { "Data", listTopics.Count > 0 ? listTopics : null }
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
