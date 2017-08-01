package Element;

import Utils.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class StringCompared {

    private ArrayList<String> arrayList;

    private String originalText;
    private String textWithoutCommon;
    private String text;

    private String organization;
    private String uuid;

    private float leven, jaro;
    private float commonwords;

    private int sameOrgaScore;

    private static Map<String, ArrayList<String>> same = new HashMap<>();
    private static ArrayList<String> useless = new ArrayList<>();

    private int nbChar;

    static { // Gère les mots se ressemblant, ayant la meme signification et les mots "inutiles"
        useless = CSVUtils.readUseless();
        same = CSVUtils.readSame();
    }

    /**
     * Initialisation
     * @param t
     */
    public StringCompared(String t, String u, String o){
        originalText = t; // on stock le texte orignale
        uuid = u; // on stock l'id
        organization = o;
        sameOrgaScore = 0;

        if(organization != null)
            originalText = organization + " - " + originalText;

        text = originalText;

        arrayList = new ArrayList<>();

        for (Map.Entry<String, ArrayList<String>> entry : same.entrySet()){
            for (String s : entry.getValue()) {
                if(text.toLowerCase().contains(s.toLowerCase())){
                    text = text.toLowerCase();
                    text = text.replace(s.toLowerCase(), entry.getKey());
                    text = text.replace(s, entry.getKey());
                }
            }
        }

        text = text.replace("'", " ");
        String[] array = text.split(" "); // on sépare la phrase en plusieurs mots

        for (String word : array) {
            String s = word;
            // On vérifie que le mot ne fais pas partie de la liste des mots identiques pour pouvoir trouver un de ses synonymes
            for (Map.Entry<String, ArrayList<String>> entry : same.entrySet()) {
                for (String s1 : entry.getValue()) {
                    if(s.equals(s1))
                        s = entry.getKey();
                }
            }

            if(!arrayList.contains(s.toLowerCase())){
                if(!useless.contains(s.toLowerCase()) && s.toLowerCase().length() > 1){ // si il ne fait pas parti des useless et que sa taille est d'au moins 2 caractères
                    arrayList.add(Utils.withOutAccents(s.toLowerCase())); // on ajoute le mot en minuscule
                }
            }
        }

        if(organization == null){
            // On cherche le nom de l'organisme
            int index = 0;
            for (int i = 0; i < arrayList.size(); i++) {
                if(arrayList.get(i).equals("-"))
                    index = i;
            }
            for (int i = 0; i < index; i++) {
                organization += arrayList.get(i);
                if(i + 1 < index)
                    organization += " ";
            }
        }

        nbChar = 0;
        for (String s : arrayList) {
            nbChar += s.toCharArray().length;
        }


        // On enleve les caractères inutiles
        arrayList.remove("-");
        arrayList.remove(":");
        arrayList.remove(";");
        arrayList.remove(",");
        arrayList.remove("_");
        arrayList.remove(".");
        arrayList.remove("/");
        arrayList.remove("?");
        arrayList.remove("!");
        arrayList.remove("'");
        arrayList.remove("\"");
        arrayList.remove("...");
        arrayList.remove(".");
        arrayList.remove(")");
        arrayList.remove("(");
        arrayList.remove("...)");
        arrayList.remove(" ");
        arrayList.remove("&");
        arrayList.remove("");
    }

    /**
     * Effectue une comparaison en comptant le nombre de mots communs
     * @param comparedArrayList
     * @return
     */
    /*public ArrayList<StringCompared> commonWords(ArrayList<StringCompared> comparedArrayList){
        ArrayList<StringCompared> bestResults = new ArrayList<>();
        StringCompared bestResult;
        float bestSames = 0.f;

        ArrayList<StringCompared> arrayListToCompare;
        if(!organization.isEmpty()){
            ArrayList<StringCompared> sameOrga = new ArrayList<>();
            for (StringCompared compared :
                    comparedArrayList) {
                if (organization.equals(compared.getOrganization())) {
                    sameOrga.add(compared);
                }
            }

            if(sameOrga.size() == 0){
                arrayListToCompare = comparedArrayList;
            }
            else {
                arrayListToCompare = sameOrga;
            }
        }
        else
            arrayListToCompare = comparedArrayList;

        for (StringCompared compared: arrayListToCompare) {
            ArrayList<String> sames = new ArrayList<>();
            for (String wordFirst : arrayList) {
                for (String wordSecond: compared.getArrayList()) {
                    if(!sames.contains(wordFirst)){
                        if(wordFirst.equals(wordSecond)){
                            sames.add(wordFirst);
                        }
                    }
                }
            }

            if(sames.size() > bestSames){
                bestSames = sames.size();
                bestResult = compared;
                commonwords = bestSames;
                bestResults.clear();
                bestResults.add(bestResult);
            }
            else if(sames.size() == bestSames){
                bestResults.add(compared);
            }
        }

        if(bestSames == 0) // si aucun résultat n'as était trouvé
            return null;

        if(bestResults.size() == 0)
            return null;
        
        return bestResults;
    }*/

    /**
     * Retire les mots communs des deux phrases
     * Cette fonction renvoie le nombre de mots communs enlevés
     * @param compared
     * @return
     */
    public float removeCommonWords(StringCompared compared){
        ArrayList<String> tmp = new ArrayList<>();
        ArrayList<String> tmpCompared = new ArrayList<>();

        ArrayList<String> commons = new ArrayList<>();

        textWithoutCommon = "";
        compared.setTextWithoutCommon("");

        tmp.addAll(arrayList);
        tmpCompared.addAll(compared.getArrayList());

        for (String wordFirst : arrayList) {
            for (String wordSecond: compared.getArrayList()) {
                if(wordFirst.equals(wordSecond)){
                    commons.add(wordFirst);
                    break;
                }
            }
        }

        tmp.removeAll(commons);
        tmpCompared.removeAll(commons);


        for (int i = 0; i < tmp.size(); i++) {
            textWithoutCommon += tmp.get(i);
            if(i + 1 < tmp.size()) // pour ne pas rajouter d'espace à la fin.
                textWithoutCommon += " ";
        }

        for (int i = 0; i < tmpCompared.size(); i++) {
            compared.setTextWithoutCommon(compared.getTextWithoutCommon() + tmpCompared.get(i));
            if(i + 1 < tmpCompared.size())
                compared.setTextWithoutCommon(compared.getTextWithoutCommon() + " ");
        }

        int maxLength;
        if(arrayList.size() > compared.getArrayList().size())
            maxLength = arrayList.size();
        else
            maxLength = compared.getArrayList().size();

        float res = (float) commons.size() / (float) maxLength;
        return res;
    }


    /**
     * Calcule une distance entre une phrase et une liste de phrases pour trouver celle qui correspond le plus
     * Tout d'abord nous cherchons si certains organismes sont communs pour diminuer les recherches
     * Ensuite nous enlevant le nombre de mots communs, compte combien il y en a et trouve quel phrase peut correspondre le plus en prenant en compte le nombre de mots communs
     * et la distance de Levenshtein.
     * La distance de Levenshtein est une distance mathématique donnant une mesure de la similarité entre deux chaînes de caractères.
     * Elle est égale au nombre minimal de caractères qu'il faut supprimer, insérer ou remplacer pour passer d’une chaîne à l’autre.
     * @param comparedArrayList
     * @return
     */
    public ArrayList<StringCompared> levenshteinDistanceCW(ArrayList<StringCompared> comparedArrayList){
        ArrayList<StringCompared> bestResults = new ArrayList<>();
        StringCompared bestResult;
        float bestLevenshtein = 10000000;
        float levenshtein;
        float bestCommonWords = 0;

        ArrayList<StringCompared> arrayListToCompare;
        if(organization != null){
            ArrayList<StringCompared> sameOrga = new ArrayList<>();
            for (StringCompared compared : comparedArrayList) {
                if(compared.getOrganization() != null)
                    if (organization.equals(compared.getOrganization()))
                        sameOrga.add(compared);
            }

            if(sameOrga.size() == 0){
                arrayListToCompare = comparedArrayList;
                sameOrgaScore = 0;
            }
            else {
                arrayListToCompare = sameOrga;
                sameOrgaScore = sameOrga.size();
            }
        }
        else
            arrayListToCompare = comparedArrayList;


        for (StringCompared stringCompared : arrayListToCompare) {
            float common = removeCommonWords(stringCompared);

            if(textWithoutCommon.isEmpty() || stringCompared.getTextWithoutCommon().isEmpty())
                levenshtein = 0;
            else
                levenshtein = Utils.leven(this, stringCompared);


            if(common > bestCommonWords){
                bestLevenshtein = levenshtein;
                bestResult = stringCompared;
                bestCommonWords = common;
                leven = bestLevenshtein;
                commonwords = bestCommonWords;
                bestResults.clear();
                bestResults.add(bestResult);
            }
            else if(common == bestCommonWords) {
                if (levenshtein == bestLevenshtein)
                    bestResults.add(stringCompared);

                else if (levenshtein > bestLevenshtein) {
                    bestLevenshtein = levenshtein;
                    bestResult = stringCompared;
                    bestCommonWords = common;
                    leven = bestLevenshtein;
                    bestResults.clear();
                    bestResults.add(bestResult);
                }
            }
        }

        if(bestResults.size() == 0)
            return null;

        /*if(bestCommonWords == 0)
            return null;*/

        return bestResults;
    }


    /*public ArrayList<StringCompared> levenshteinDistance(ArrayList<StringCompared> comparedArrayList){
        ArrayList<StringCompared> bestResults = new ArrayList<>();
        StringCompared bestResult;
        int bestLevenshtein = 10000000;
        int levenshtein;

        ArrayList<StringCompared> arrayListToCompare;
        if(!organization.isEmpty()){
            ArrayList<StringCompared> sameOrga = new ArrayList<>();
            for (StringCompared compared :
                    comparedArrayList) {
                if (organization.equals(compared.getOrganization())) {
                    sameOrga.add(compared);
                }
            }

            if(sameOrga.size() == 0){
                arrayListToCompare = comparedArrayList;
            }
            else {
                arrayListToCompare = sameOrga;
            }
        }
        else
            arrayListToCompare = comparedArrayList;

        for (StringCompared stringCompared : arrayListToCompare) {
            levenshtein = Utils.leven(this, stringCompared);
            if(levenshtein == originalText.length() || levenshtein == stringCompared.getOriginalText().length())
                levenshtein = 123456;

                if(levenshtein < bestLevenshtein){
                    bestLevenshtein = levenshtein;
                    bestResult = stringCompared;
                    leven = bestLevenshtein;
                    bestResults.clear();
                    bestResults.add(bestResult);
                }
                else if(levenshtein == bestLevenshtein)
                    bestResults.add(stringCompared);
        }

        if(bestResults.size() == 0)
            return null;

        return bestResults;
    }*/

    /*public ArrayList<StringCompared> jaroDistanceCW(ArrayList<StringCompared> comparedArrayList){
        ArrayList<StringCompared> bestResults = new ArrayList<>();
        StringCompared bestResult;
        double bestJaro = 0;
        double j;
        int bestCommonWords = 0;

        ArrayList<StringCompared> arrayListToCompare;
        if(!organization.isEmpty()){
            ArrayList<StringCompared> sameOrga = new ArrayList<>();
            for (StringCompared compared :
                    comparedArrayList) {
                if (organization.equals(compared.getOrganization())) {
                    sameOrga.add(compared);
                }
            }

            if(sameOrga.size() == 0){
                arrayListToCompare = comparedArrayList;
            }
            else {
                arrayListToCompare = sameOrga;
            }
        }
        else
            arrayListToCompare = comparedArrayList;

        for (StringCompared stringCompared : arrayListToCompare) {
            int common = this.removeCommonWords(stringCompared);

            j = Utils.jaro(textWithoutCommon, stringCompared.getTextWithoutCommon());

            if (common > bestCommonWords) {
                bestJaro = j;
                bestResult = stringCompared;
                bestCommonWords = common;
                jaro = bestJaro;
                commonwords = bestCommonWords;
                bestResults.clear();
                bestResults.add(bestResult);
            }
            else if (common == bestCommonWords) {
                if(j == bestJaro){
                    bestResults.add(stringCompared);
                }
                else if (j > bestJaro) {
                    bestJaro = j;
                    bestResult = stringCompared;
                    bestCommonWords = common;
                    jaro = bestJaro;
                    bestResults.clear();
                    bestResults.add(bestResult);
                }
            }
        }

        if(bestResults.size() == 0)
            return null;

        return bestResults;
    }*/

    /*public ArrayList<StringCompared> jaroDistance(ArrayList<StringCompared> comparedArrayList){
        ArrayList<StringCompared> bestResults = new ArrayList<>();
        StringCompared bestResult;
        double bestJaro = 0;
        double j;

        ArrayList<StringCompared> arrayListToCompare;
        if(!organization.isEmpty()){
            ArrayList<StringCompared> sameOrga = new ArrayList<>();
            for (StringCompared compared :
                    comparedArrayList) {
                if (organization.equals(compared.getOrganization())) {
                    sameOrga.add(compared);
                }
            }

            if(sameOrga.size() == 0){
                arrayListToCompare = comparedArrayList;
            }
            else {
                arrayListToCompare = sameOrga;
            }
        }
        else
            arrayListToCompare = comparedArrayList;

        for (StringCompared stringCompared : arrayListToCompare) {
            j = Utils.jaro(text, stringCompared.getText());

            if(j > bestJaro){
                bestJaro = j;
                bestResult = stringCompared;
                jaro = bestJaro;
                bestResults.clear();
                bestResults.add(bestResult);
            }
            else if( j == bestJaro)
                bestResults.add(stringCompared);
        }

        if(bestResults.size() == 0)
            return null;

        return bestResults;
    }*/


    @Override
    public String toString() {
        return originalText;
    }

    public ArrayList<String> getArrayList() { return arrayList;}

    public String getOriginalText() { return originalText; }

    String getText() { return text; }

    public String getTextWithoutCommon() { return textWithoutCommon; }

    public String getUuid() {
        if(uuid != null)
            return uuid;
        else
            return "null";
    }

    public String getOrganization() {return organization; }

    public float getLeven() { return leven; }

    public float getCommonwords() { return commonwords; }

    void setTextWithoutCommon(String t) { textWithoutCommon = t; }

    public void setLeven(float l) { leven = l; }

    public void setCommonwords(float c) { commonwords = c;}

    public static ArrayList<String> getUseless() { return useless; }

    public static Map<String, ArrayList<String>> getSame() { return same; }

    public int getSameOrgaScore() { return sameOrgaScore; }

    public int getNbChar() { return nbChar; }
}
