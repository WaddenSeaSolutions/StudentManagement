using (var db = new ApplicationDbContext())
{
    // Tilføj en ny studerende
    db.Student.Add(new Student
    {
        FirstName = "John",
        LastName = "Doe",
        Email = "john@example.com",
        EnrollmentDate = DateTime.Now
    });
    db.SaveChanges();

    // Hent og vis alle studerende
    var students = db.Student.ToList();
    foreach (var student in students)
    {
        Console.WriteLine($"Id: {student.Id}, Name: {student.FirstName} {student.LastName}");
    }
}