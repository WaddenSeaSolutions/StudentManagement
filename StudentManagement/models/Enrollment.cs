using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
public class Enrollment
{
    [Key]
    public int Id { get; set; }

    [ForeignKey("Student")]
    public int StudentId { get; set; }

    [ForeignKey("Course")]
    public int CourseId { get; set; }

    [MaxLength(2)] // F.eks. "A", "B", "C", "F"
    public string FinalGrade { get; set; }

    public Student Student { get; set; }
    public Course Course { get; set; }

    // Constructor
    public Enrollment()
    {
        // Initialize collections or non-nullable properties here
    }
}
