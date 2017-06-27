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

    private double leven, jaro;
    private float commonwords;

    private static Map<String, ArrayList<String>> same = new HashMap<>();
    private static ArrayList<String> useless = new ArrayList<>();

    static { // Gère les mots se ressemblant, ayant la meme signification et les mots "inutiles"
        ArrayList<String> arrayListAURBA = new ArrayList<>();
        arrayListAURBA.add("AURBA3");
        arrayListAURBA.add("Bordeaux Métropole");
        arrayListAURBA.add("Bordeaux Metropole");
        same.put("AURBA", arrayListAURBA);

        ArrayList<String> arrayListCACBA = new ArrayList<>();
        arrayListCACBA.add("CA_COTE_BASQUE_ADOUR");
        arrayListCACBA.add("CA Cote Basque Adour");
        same.put("CACBA", arrayListCACBA);

        ArrayList<String> arrayListCAP = new ArrayList<>();
        arrayListCAP.add("CA_PERIGOURDINE");
        arrayListCAP.add("CA Perigueux");
        same.put("CAP", arrayListCAP);

        ArrayList<String> arrayListCA33 = new ArrayList<>();
        arrayListCA33.add("Chambre agriculture 33");
        same.put("CA33", arrayListCA33);

        ArrayList<String> arrayListCA64 = new ArrayList<>();
        arrayListCA64.add("Chambre agriculture 64");
        same.put("CA64", arrayListCA64);

        ArrayList<String> arrayListCAGD = new ArrayList<>();
        arrayListCAGD.add("CA Grand Dax");
        same.put("CAGRANDDAX", arrayListCAGD);

        ArrayList<String> arrayListCAGV = new ArrayList<>();
        arrayListCAGV.add("CA Grand Villeneuvois");
        same.put("CAGV", arrayListCAGV);

        ArrayList<String> arrayListCCBG = new ArrayList<>();
        arrayListCCBG.add("CDC Bourg en Gironde");
        arrayListCCBG.add("CC_BOURG_GIRONDE");
        same.put("CCBG", arrayListCCBG);

        ArrayList<String> arrayListCCE = new ArrayList<>();
        arrayListCCE.add("CC_ESTUAIRE");
        arrayListCCE.add("CDC Estuaire");
        same.put("CCE", arrayListCCE);

        ArrayList<String> arrayListCCMEZ = new ArrayList<>();
        arrayListCCMEZ.add("CC_MEZINAIS");
        arrayListCCMEZ.add("CDC du Mézinais");
        same.put("CCMEZ", arrayListCCMEZ);

        ArrayList<String> arrayListCCPRAY = new ArrayList<>();
        arrayListCCPRAY.add("CC_PRAYSSAS");
        arrayListCCPRAY.add("CDC Prayssas");
        same.put("CCPRAY", arrayListCCPRAY);

        ArrayList<String> arrayListCCVA = new ArrayList<>();
        arrayListCCVA.add("CC_VAL_ALBRET");
        arrayListCCVA.add("CDC Val d Albret");
        same.put("CCVA", arrayListCCVA);

        ArrayList<String> arrayListCCM = new ArrayList<>();
        arrayListCCM.add("CC Montesquieu");
        same.put("CCM", arrayListCCM);

        ArrayList<String> arrayListCCPA = new ArrayList<>();
        arrayListCCPA.add("CDC Penne d Agenais");
        same.put("CCPENNEDAGENAIS", arrayListCCPA);

        ArrayList<String> arrayListCCPIE = new ArrayList<>();
        arrayListCCPIE.add("CDC Piémont Oloronais");
        same.put("CCPIEMONT", arrayListCCPIE);

        ArrayList<String> arrayListCD24 = new ArrayList<>();
        arrayListCD24.add("CG 24");
        same.put("CD24", arrayListCD24);

        ArrayList<String> arrayListCD33 = new ArrayList<>();
        arrayListCD33.add("CG 33");
        same.put("CD33", arrayListCD33);

        ArrayList<String> arrayListCD40 = new ArrayList<>();
        arrayListCD40.add("CG 40");
        same.put("CD40", arrayListCD40);

        ArrayList<String> arrayListCD47 = new ArrayList<>();
        arrayListCD47.add("CG 47");
        same.put("CD47", arrayListCD47);

        ArrayList<String> arrayListCD64 = new ArrayList<>();
        arrayListCD64.add("CG 64");
        same.put("CD64", arrayListCD64);

        ArrayList<String> arrayListCEN = new ArrayList<>();
        arrayListCEN.add("CEN Aquitaine");
        same.put("CEN", arrayListCEN);

        ArrayList<String> arrayListCRA = new ArrayList<>();
        arrayListCRA.add("CR Aquitaine");
        same.put("CRA", arrayListCRA);

        ArrayList<String> arrayListDDT47 = new ArrayList<>();
        arrayListDDT47.add("DDT_47");
        arrayListDDT47.add("DDT 47");
        same.put("DDT47", arrayListDDT47);

        ArrayList<String> arrayListDDT24 = new ArrayList<>();
        arrayListDDT24.add("DDT 24");
        same.put("DDT24", arrayListDDT24);

        ArrayList<String> arrayListDDTM33 = new ArrayList<>();
        arrayListDDTM33.add("DDTM 33");
        same.put("DDTM33", arrayListDDTM33);

        ArrayList<String> arrayListDFCIAQ = new ArrayList<>();
        arrayListDFCIAQ.add("ARDFCI");
        same.put("DFCIAQ", arrayListDFCIAQ);

        ArrayList<String> arrayListDFCI47 = new ArrayList<>();
        arrayListDFCI47.add("DFCIL47");
        same.put("DFCI47", arrayListDFCI47);

        ArrayList<String> arrayListDRAAF = new ArrayList<>();
        arrayListDRAAF.add("DRAAF2");
        same.put("DRAAF", arrayListDRAAF);

        ArrayList<String> arrayListDREAL = new ArrayList<>();
        arrayListDREAL.add("DREAL2");
        same.put("DREAL", arrayListDREAL);

        ArrayList<String> arrayListENSAP = new ArrayList<>();
        arrayListENSAP.add("ENSAP Bordeaux");
        same.put("ENSAP", arrayListENSAP);

        ArrayList<String> arrayListEPI = new ArrayList<>();
        arrayListEPI.add("EPIDROPT1");
        same.put("EPIDROPT", arrayListEPI);

        ArrayList<String> arrayListFDP64 = new ArrayList<>();
        arrayListFDP64.add("FDP_64");
        same.put("FDP64", arrayListFDP64);

        ArrayList<String> arrayListFDP33 = new ArrayList<>();
        arrayListFDP33.add("FD pêche 33");
        same.put("FDP33", arrayListFDP33);

        ArrayList<String> arrayListFNPHP = new ArrayList<>();
        arrayListFNPHP.add("FNPHP1");
        same.put("FNPHP", arrayListFNPHP);

        ArrayList<String> arrayListGIP = new ArrayList<>();
        arrayListGIP.add("GIP ATGeRi");
        same.put("GIP", arrayListGIP);

        ArrayList<String> arrayListGIPPQA = new ArrayList<>();
        arrayListGIPPQA.add("GIP_PQA");
        arrayListGIPPQA.add("GIP PQA");
        same.put("GIPPQA", arrayListGIPPQA);

        ArrayList<String> arrayListGIPLIT = new ArrayList<>();
        arrayListGIPLIT.add("GIPLITTORAL1");
        arrayListGIPLIT.add("GIP LITTORAL");
        same.put("GIPLIT", arrayListGIPLIT);

        ArrayList<String> arrayListGPMB = new ArrayList<>();
        arrayListGPMB.add("GPMB");
        same.put("GPMB", arrayListGPMB);

        ArrayList<String> arrayListGRDF = new ArrayList<>();
        arrayListGRDF.add("GRDF1");
        same.put("GRDF", arrayListGRDF);

        ArrayList<String> arrayListIMP = new ArrayList<>();
        arrayListIMP.add("IMPOTS_LAST1");
        arrayListIMP.add("IMPOTS_LAST");
        same.put("IMP", arrayListIMP);

        ArrayList<String> arrayListINSEE = new ArrayList<>();
        arrayListINSEE.add("INSEE2");
        same.put("INSEE", arrayListINSEE);

        ArrayList<String> arrayListSDIS24 = new ArrayList<>();
        arrayListSDIS24.add("SDIS 24");
        arrayListSDIS24.add("LOGOSDIS241");
        same.put("SDIS24", arrayListSDIS24);

        ArrayList<String> arrayListSDIS33 = new ArrayList<>();
        arrayListSDIS33.add("SDIS 33");
        arrayListSDIS33.add("LOGOSDIS331");
        same.put("SDIS33", arrayListSDIS33);

        ArrayList<String> arrayListSDIS40 = new ArrayList<>();
        arrayListSDIS40.add("SDIS 40");
        arrayListSDIS40.add("LOGOSDIS401");
        same.put("SDIS40", arrayListSDIS40);

        ArrayList<String> arrayListSDIS47 = new ArrayList<>();
        arrayListSDIS47.add("SDIS 47");
        arrayListSDIS47.add("LOGOSDIS471");
        same.put("SDIS47", arrayListSDIS47);

        ArrayList<String> arrayListSDIS64 = new ArrayList<>();
        arrayListSDIS64.add("SDID 64");
        arrayListSDIS64.add("LOGOSDIS64");
        same.put("SDIS64", arrayListSDIS64);

        ArrayList<String> arrayListMEZ = new ArrayList<>();
        arrayListMEZ.add("Commmune de Mézin");
        same.put("MEZIN", arrayListMEZ);

        ArrayList<String> arrayListMED = new ArrayList<>();
        arrayListMED.add("MIN_ECOLOGIE");
        same.put("MEDDE", arrayListMED);

        ArrayList<String> arrayListPARC =  new ArrayList<>();
        arrayListPARC.add("PARC4");
        same.put("PARC", arrayListPARC);

        ArrayList<String> arrayListRAUD = new ArrayList<>();
        arrayListRAUD.add("RAUDIN2");
        same.put("RAUDIN", arrayListRAUD);

        ArrayList<String> arrayListSTMOR = new ArrayList<>();
        arrayListSTMOR.add("SAINT_MORILLON2");
        arrayListSTMOR.add("SAINT_MORILLON");
        same.put("STMOR", arrayListSTMOR);

        ArrayList<String> arrayListSIRT = new ArrayList<>();
        arrayListSIRT.add("SIRTAQUI2");
        same.put("SIRTAQUI", arrayListSIRT);

        ArrayList<String> arrayListSNIA = new ArrayList<>();
        arrayListSNIA.add("SNIA5");
        same.put("SNIA", arrayListSNIA);

        ArrayList<String> arrayListSYSD = new ArrayList<>();
        arrayListSYSD.add("SYSDAU1");
        same.put("SYSDAU", arrayListSYSD);

        ArrayList<String> arrayListPGB = new ArrayList<>();
        arrayListPGB.add("Pays du Grand Bergeracois");
        same.put("PGB", arrayListPGB);

        useless.add("mais");
        useless.add("ou");
        useless.add("et");
        useless.add("donc");
        useless.add("or");
        useless.add("ni");
        useless.add("car");
        useless.add("si");
        useless.add("qu");
        useless.add("que");
        useless.add("un");
        useless.add("de");
        useless.add("du");
        useless.add("des");
        useless.add("les");
        useless.add("la");
        useless.add("le");
        useless.add("mes");
        useless.add("tes");
        useless.add("ses");
        useless.add("ces");
        useless.add("nos");
        useless.add("vos");
        useless.add("leur");
        useless.add("leurs");
        useless.add("je");
        useless.add("tu");
        useless.add("il");
        useless.add("elle");
        useless.add("on");
        useless.add("nous");
        useless.add("vous");
        useless.add("ils");
        useless.add("elles");
        useless.add("par");
        useless.add("dans");
        useless.add("en");
        useless.add("au");
    }

    /**
     * Initialisation
     * @param t
     */
    public StringCompared(String t, String u){
        originalText = t; // on stock le texte orignale
        uuid = u; // on stock l'id
        organization = "";
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
                if(!useless.contains(s.toLowerCase())){ // si ca taille est supérieur a trois
                    arrayList.add(Utils.withOutAccents(s.toLowerCase())); // on ajoute le mot en minuscule
                }
            }
        }


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

        // On enleve les caractères inutiles
        arrayList.remove("-");
        arrayList.remove(":");
        arrayList.remove(";");
        arrayList.remove(",");
        arrayList.remove("_");
        arrayList.remove(".");
        arrayList.remove("/");
    }

    /**
     * Effectue une comparaison en comptant le nombre de mots communs
     * @param comparedArrayList
     * @return
     */
    public ArrayList<StringCompared> commonWords(ArrayList<StringCompared> comparedArrayList){
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
    }

    /**
     * Retire les mots communs des deux phrases
     * Cette fonction renvoie le nombre de mots communs enlevés
     * @param compared
     * @return
     */
    public int removeCommonWords(StringCompared compared){
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

        return commons.size();
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
        int bestLevenshtein = 10000000;
        int levenshtein;
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
            int common = removeCommonWords(stringCompared);

            if(textWithoutCommon.isEmpty() || stringCompared.getTextWithoutCommon().isEmpty())
                levenshtein = 0;
            else{
                levenshtein = Utils.leven(textWithoutCommon, stringCompared.getTextWithoutCommon());
                if(levenshtein == originalText.length() || levenshtein == stringCompared.getOriginalText().length())
                    levenshtein = 123456;
            }

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

                else if (levenshtein < bestLevenshtein) {
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

        if(bestCommonWords == 0)
            return null;

        return bestResults;
    }

    /**
     * Meme chose sans les mots communs
     * @param comparedArrayList
     * @return
     */
    public ArrayList<StringCompared> levenshteinDistance(ArrayList<StringCompared> comparedArrayList){
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
            levenshtein = Utils.leven(text, stringCompared.getText());
            System.out.println(levenshtein);
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
    }

    /**
     * Meme boulot que la fonction de Levenshtein mais avec des calculs légèrement différent.
     * La distance de Jaro mesure la similarité entre deux chaînes de caractères grâce à la longue de la chaine,
     * le nombre de caractères correspondants, le nombre de transpositions.
     * @param comparedArrayList
     * @return
     */
    public ArrayList<StringCompared> jaroDistanceCW(ArrayList<StringCompared> comparedArrayList){
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
    }

    /**
     * Meme chose sans les mots communs
     * @param comparedArrayList
     * @return
     */
    public ArrayList<StringCompared> jaroDistance(ArrayList<StringCompared> comparedArrayList){
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
    }

    @Override
    public String toString() {
        return originalText;
    }

    ArrayList<String> getArrayList() { return arrayList;}

    String getOriginalText() { return originalText; }

    String getText() { return text; }

    String getTextWithoutCommon() { return textWithoutCommon; }

    String getUuid() {
        if(uuid != null)
            return uuid;
        else
            return "null";
    }

    String getOrganization() {return organization; }

    double getLeven() { return leven; }

    double getJaro() { return jaro; }

    float getCommonwords() { return commonwords; }

    void setTextWithoutCommon(String t) { textWithoutCommon = t; }
}
