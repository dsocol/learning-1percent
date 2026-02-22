import java.util.ArrayList;
import java.util.List;

public class TaskManager {
    public static void main(String[] args) {
        // Creăm o listă de task-uri
        List<String> taskuri = new ArrayList<>();
        
        // Adăugăm task-uri
        taskuri.add("Configurare WSL");
        taskuri.add("Instalare JDK");
        taskuri.add("Setup Git");

        System.out.println("--- Progresul tău DevOps ---");
        for (String task : taskuri) {
            System.out.println("[COMPLET]: " + task);
        }
    }
}
