package Utils;

import Element.StringCompared;

import java.io.File;

public class Utils {

    /**
     * Détermine le minimum entre 3 nombres
     * @param a
     * @param b
     * @param c
     * @return
     */
    public static int minimum(int a, int b, int c){
        return Math.min(Math.min(a, b), c);
    }

    /**
     * Détermine si le mot est en majuscule, permet de savoir si le mot est un accronyme
     * Les nombres sont des majuscules.
     * @param word
     * @return
     */

    public static String withOutAccents(String s){
        s = s.replace("é", "e");
        s = s.replace("è", "e");
        s = s.replace("ê", "e");
        s = s.replace("à", "a");
        s = s.replace("ù", "u");
        s = s.replace("ç", "c");
        s = s.replace("ô", "o");
        s = s.replace("â", "a");
        s = s.replace("î", "i");
        s = s.replace("ï", "i");
        s = s.replace("ë", "e");
        s = s.replace("û", "u");
        s = s.replace("ö", "o");

        s = s.replace(",", "");
        s = s.replace(".", "");
        s = s.replace(";", "");

        return s;
    }

    /**
     * Algorithme de calcul de la distance de jaro (trouvé sur internet)
     * Calcul un ratio de 1.0 à 0.0, 1.0 correspond à une correspondance parfaite
     * @param s
     * @param t
     * @return
     */
    public static double jaro(String s, String t) {
        int s_len = s.length();
        int t_len = t.length();

        if (s_len == 0 && t_len == 0) return 1;

        int match_distance = Integer.max(s_len, t_len) / 2 - 1;

        boolean[] s_matches = new boolean[s_len];
        boolean[] t_matches = new boolean[t_len];

        int matches = 0;
        int transpositions = 0;

        for (int i = 0; i < s_len; i++) {
            int start = Integer.max(0, i-match_distance);
            int end = Integer.min(i+match_distance+1, t_len);

            for (int j = start; j < end; j++) {
                if (t_matches[j]) continue;
                if (s.charAt(i) != t.charAt(j)) continue;
                s_matches[i] = true;
                t_matches[j] = true;
                matches++;
                break;
            }
        }

        if (matches == 0) return 0;

        int k = 0;
        for (int i = 0; i < s_len; i++) {
            if (!s_matches[i]) continue;
            while (!t_matches[k]) k++;
            if (s.charAt(i) != t.charAt(k)) transpositions++;
            k++;
        }

        return (((double)matches / s_len) +
                ((double)matches / t_len) +
                (((double)matches - transpositions/2.0) / matches)) / 3.0;
    }


    /**
     * Algo trouvé sur internet
     * @param textCompared
     * @param stringCompared
     * @return
     */
    public static float leven(StringCompared textCompared, StringCompared stringCompared){
        String text = textCompared.getTextWithoutCommon();
        String compared = stringCompared.getTextWithoutCommon();
        int[][] distance = new int[text.length() + 1][compared.length() + 1];
        for (int i = 0; i < text.length(); i++) {
            distance[i][0] = i;
        }

        for (int j = 0; j < compared.length(); j++) {
            distance[0][j] = j;
        }

        for (int i = 1; i <= text.length(); i++) {
            for (int j = 1; j <= compared.length(); j++) {
                distance[i][j] = Utils.minimum(
                        distance[i - 1][j] + 1,
                        distance[i][j - 1] + 1,
                        distance[i - 1][j - 1] + ((text.charAt(i - 1) == compared.charAt(j - 1)) ? 0 : 1));
            }
        }

        float res = distance[text.length()][compared.length()];

        int maxLength;
        if(textCompared.getNbChar() > stringCompared.getNbChar())
            maxLength = textCompared.getNbChar();
        else
            maxLength = stringCompared.getNbChar();

        res = res / maxLength;

        return res;
    }

    /**
     * Remplace les caractère interdits de SQL
     * @param value
     * @param header
     * @return
     */
    public static String SQLFormat(String value, Boolean header){
        String res = value;

        res = res.replace("?", "");
        res = res.replace(":", "");
        res = res.replace("(", "_");
        res = res.replace(")", "");
        res = res.replace("#", "");

        if(header){
            res = res.replace("'", "_");
            res = res.replace(" ", "_");
        }
        else{
            res = res.replace("'", " ");
            res = res.replace("-", " ");
        }

        res = res.replace("__", "_");

        return res;
    }

    public static String getFileExtension(File file) {
        String name = file.getName();
        try {
            return name.substring(name.lastIndexOf(".") + 1);
        } catch (Exception e) {
            return "";
        }
    }


}
