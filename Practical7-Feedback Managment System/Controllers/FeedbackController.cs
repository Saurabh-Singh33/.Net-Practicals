
using Microsoft.AspNetCore.Mvc;
using Practical7_MVC.Models;
using System.Collections.Generic;

namespace Practical7_MVC.Controllers
{
    public class FeedbackController : Controller
    {
        private static List<Feedback> feedbackList = new();
        private static int nextId = 1;

        // Display the feedback page
        public IActionResult Index()
        {
            return View(feedbackList);
        }

        // Submit feedback
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Feedback feedback)
        {
            if (ModelState.IsValid)
            {
                feedback.Id = nextId++;
                feedbackList.Add(feedback);

                return RedirectToAction("Index");
            }

            return View("Index", feedbackList);
        }
    }
}
