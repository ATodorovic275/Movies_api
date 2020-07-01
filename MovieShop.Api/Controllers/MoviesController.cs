﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EfDataAccess;
using EfDataAccess.Configuration;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MovieShop.Application;
using MovieShop.Application.Commands;
using MovieShop.Application.Dto;
using MovieShop.Application.Queries;
using MovieShop.Application.Searches;
using MovieShop.Domain;

namespace MovieShop.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MoviesController : ControllerBase
    {
        private readonly UseCaseExecutor executor;

        public MoviesController(UseCaseExecutor executor, MovieContext context)
        {
            this.executor = executor;
        }


        // GET: api/Movies
        [HttpGet]
        public IActionResult Get([FromQuery] MovieSearch search, [FromServices] IGetMovieQuery query)
        {
           
            return Ok(executor.ExecuteQuery(query, search));
        }

        // GET: api/Movies/5
        [HttpGet("{id}", Name = "GetMovies")]
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Movies
        [HttpPost]
        public IActionResult Post([FromBody] MovieDto dto, [FromServices] ICreateMovieCommand command)
        {
            executor.ExecuteCommand(command, dto);
            return StatusCode(StatusCodes.Status201Created);
        }

        // PUT: api/Movies/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}