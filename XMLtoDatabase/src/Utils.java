import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;


/**
 * Classe static permetant d'utiliser des fonctions sans appel sur un objet précis
 */
public class Utils {

    /**
     * Parcourt de fichiers récursivement
     * @param directory le fichier qu'on parcourt
     * @param p
     */
    public static void listeRepertoire(File directory, PostGreSQL p) {
        if (directory.exists() && directory.isDirectory()) { // si le répertoire existe et que c'est bien un répertoire
            File[] files = directory.listFiles(); // on récupere tous les fichier qu'il comporte (dont les sous-répertoires)
            for (File file : files) { // pour chaqu'un de ces fichiers
                if(file.getName().equals("featuretype.xml") || file.getName().equals("coverage.xml")){ // si ce fichier est un featuretype.xml
                    String backslash = System.getProperty("file.separator");
                    String workspace = file.toString().replace(backslash, "/").split("/workspaces/")[1].split("/")[0];
                    p.addLine(file, workspace); // alors on l'ajoute dans la BD
                }
                // Appel récursif sur les sous-répertoires
                listeRepertoire(file, p); // on rappelle cette meme fonction pour chaqu'un des fichiers
            }
        }
    }

    /**
     * On lit le contenu du fichier et on le retourne sous forme de String
     * (classe copié sur internet)
     * @param file
     * @return
     * @throws IOException
     */
    public static String readFile(String file) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(file));
        String line = null;
        StringBuilder stringBuilder = new StringBuilder();
        String ls = System.getProperty("line.separator");
        try {
            while((line = reader.readLine())!= null) {
                stringBuilder.append(line);
                stringBuilder.append(ls);
            }

            return stringBuilder.toString();
        } finally {
            reader.close();
        }
    }
}
