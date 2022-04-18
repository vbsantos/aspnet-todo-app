using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace aspnet_todo_app.Models
{
  public class Todo
  {
    public int Id { get; set; }
    
    [DisplayName("Título")]
    [Required(ErrorMessage = "Campo obrigatório")]
    public string Title { get; set; } = string.Empty;

    [DisplayName("Concluído")]
    public bool Done { get; set; }

    [DisplayName("Criado em")]
    public DateTime CreatedAt { get; set; } = DateTime.Now;

    [DisplayName("Última atualização")]
    public DateTime LastUpdateDate { get; set; } = DateTime.Now;

    [DisplayName("Usuário")]
    public string? User { get; set; }
  }
}
