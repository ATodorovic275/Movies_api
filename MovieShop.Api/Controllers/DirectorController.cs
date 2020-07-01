﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MovieShop.Application;
using MovieShop.Application.Commands;
using MovieShop.Application.Dto;
using MovieShop.Application.Queries;
using MovieShop.Application.Searches;

namespace MovieShop.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DirectorController : ControllerBase
    {
        private readonly UseCaseExecutor executor;

        public DirectorController(UseCaseExecutor executor)
        {
            this.executor = executor;
        }

        // GET: api/Director
        [HttpGet]
        public IActionResult Get([FromQuery] DirectorSearch search, [FromServices] IGetDirectorQuery query)
        {
            return Ok(executor.ExecuteQuery(query,search));
        }

        // GET: api/Director/5
        [HttpGet("{id}", Name = "GetDirector")]
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Director
        [HttpPost]
        public IActionResult Post([FromBody] DirectorDto dto, [FromServices] ICreateDirectorCommand command)
        {
            executor.ExecuteCommand(command, dto);
            return StatusCode(StatusCodes.Status201Created); 
        }

        // PUT: api/Director/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] UpdateDirectorDto dto, [FromServices] IUpdateDirectorCommand command)
        {
            dto.Id = id;
            executor.ExecuteCommand(command, dto);
            return StatusCode(StatusCodes.Status204NoContent);
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteDirectorCommand command)
        {
            executor.ExecuteCommand(command, id);
            return StatusCode(StatusCodes.Status204NoContent);

        }
    }
}