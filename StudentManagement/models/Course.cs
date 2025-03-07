using System.ComponentModel.DataAnnotations;
public class Course
{
    [Key]
    public int Id { get; set; }

    [Required]
    [MaxLength(100)]
    public string Title { get; set; }

    public double Credits { get; set; }

    public ICollection<Enrollment> Enrollments { get; set; } = new List<Enrollment>(); // Initialisere med tom liste

    public int InstructorId { get; set; }
    
    // Constructor
    public Course()
    {
        Enrollments = new List<Enrollment>(); // Sørg for at Enrollments er initialiseret
    }
}
