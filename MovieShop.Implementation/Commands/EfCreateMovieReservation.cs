using EfDataAccess;
using EfDataAccess.Migrations;
using MovieShop.Application.Commands;
using MovieShop.Application.Dto;
using MovieShop.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MovieShop.Implementation.Commands
{
    public class EfCreateMovieReservation : ICreateMovieReservationCommand
    {
        private readonly MovieContext context;

        public EfCreateMovieReservation(MovieContext context)
        {
            this.context = context;
        }

        public int Id => 7;

        public string Name => "Ef create reservation";

        public void Execute(MovieReservationDto request)
        {
            //validacija

            var reservation = new MovieReservation
            {
                MovieId = request.MovieId,
                UserId = request.UserId,
                ReservationDate = DateTime.Now
            };

            context.MovieReservations.Add(reservation);
            context.SaveChanges();
        }
    }
}
