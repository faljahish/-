#!/usr/bin/env bash
# Downloads every direct-PDF source listed in مصادر_البحث_روابط.md into ./pdfs/
# Usage: bash download_all.sh
set -u
mkdir -p pdfs
cd pdfs || exit 1

UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64)"

dl() {
  local name="$1" url="$2"
  if [ -s "$name" ]; then echo "exists: $name"; return; fi
  echo "downloading: $name"
  curl -fL --retry 3 -A "$UA" -o "$name" "$url" || { echo "FAILED: $name  <-  $url"; rm -f "$name"; }
}

# 1 — النصوص
dl "01_MiCA_Regulation_EU_2023-1114_EN.pdf"  "https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32023R1114"
dl "01_MiCA_Regulation_EU_2023-1114_FR.pdf"  "https://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32023R1114"

# 3 — الأعمال التحضيرية (QFC Digital Assets Framework)
dl "03_QFC_CP2023-03_Digital_Assets_Consultation.pdf" "https://qfcra-en.thomsonreuters.com/sites/default/files/net_file_store/QFCRA-CP-DAF_QFC_03102023_Condolidated_FINAL-.pdf"
dl "03_QFC_Digital_Asset_Regulations_2024.pdf"        "https://qfcra-en.thomsonreuters.com/sites/default/files/net_file_store/QFCRA_15128_VER1.pdf"
dl "03_QFC_TSP_Guidelines_2024.pdf"                   "https://qfcra-en.thomsonreuters.com/sites/default/files/net_file_store/QFC_Digital_Assets_TSP_Guidelines_25-Aug-2024.pdf"
dl "03_QFC_Digital_Assets_User_Guide_2024.pdf"        "https://qfcra-en.thomsonreuters.com/sites/default/files/net_file_store/QFC_Digital_Assets_User_Guide_25-Aug-2024.pdf"

# 4 — الوثائق والإحصاءات
dl "04_IMF_Qatar_2024_Article_IV_Staff_Report.pdf" "https://www.imf.org/-/media/Files/Publications/CR/2025/English/1qatea2025001-print-pdf.ashx"
dl "04_QIA_Santiago_Self-Assessment_2025.pdf"      "https://ifswf.org/print/pdf/node/5103"
dl "04_QIA_Santiago_Self-Assessment_2022.pdf"      "https://ifswf.org/print/pdf/node/4316"
dl "04_IFSWF_Qatar_QIA_Profile.pdf"                "https://www.ifswf.org/sites/default/files/Qatar%20QIA_0.pdf"

# 7 — الأبحاث


# Added: official gazette PDFs (SJC encyclopedia) and archive.org books
dl "01_Amiri_Decision_22_2005_QIA.pdf" "https://encyclop.sjc.gov.qa/lawlib/Files/ViewPDF.aspx?id=12846"
dl "01_Amiri_Decision_34_2023_QIA.pdf" "https://encyclop.sjc.gov.qa/lawlib/Files/ViewPDF.aspx?id=14161"
dl "06_Mawardi_Ahkam_Sultaniyya_1909.pdf" "https://archive.org/download/1327-1909/%D8%A7%20%D8%A7%D9%84%D8%A3%D8%AD%D9%83%D8%A7%D9%85%20%D8%A7%D9%84%D8%B3%D9%84%D8%B7%D8%A7%D9%86%D9%8A%D8%A9%20-%20%E2%80%8F%D9%85%D8%A7%D9%88%D8%B1%D8%AF%D9%8A%20-%20%E2%80%8F%D9%85%D8%B7%D8%A8%D8%B9%D8%A9%20%D8%A7%D9%84%D8%B3%D8%B9%D8%A7%D8%AF%D8%A9%201327-1909_text.pdf"
dl "06_Ibn_Taymiyya_Siyasa_Shariyya.pdf" "https://archive.org/download/amatullah0911_gmail_20161011/%D8%A7%D9%84%D8%B3%D9%8A%D8%A7%D8%B3%D8%A9%20%D8%A7%D9%84%D8%B4%D8%B1%D8%B9%D9%8A%D8%A9%20%D9%81%D9%8A%20%D8%A5%D8%B5%D9%84%D8%A7%D8%AD%20%D8%A7%D9%84%D8%B1%D8%A7%D8%B9%D9%8A%20%D9%88%D8%A7%D9%84%D8%B1%D8%B9%D9%8A%D8%A9%20-%20%D8%A7%D8%A8%D9%86%20%D8%AA%D9%8A%D9%85%D9%8A%D8%A9.pdf"
dl "06_Sanhuri_Masadir_al-Haqq_1-3.pdf" "https://archive.org/download/masadir-hak-fi-fikh-islami-senhuri/Masadir%20hak%20fi%20fikh%20islami%20-%20senhuri%201-2-3.pdf"
dl "06_Sanhuri_Masadir_al-Haqq_4-6.pdf" "https://archive.org/download/masadir-hak-fi-fikh-islami-senhuri/Masadir%20hak%20fi%20fikh%20islami%20-%20senhuri%204-5-6.pdf"


# 7 — Research (Qatar University QSpace + Police College journal site)
dl "07_QU_IRL_Constitutional_Laws_Qatar.pdf" "https://qspace.qu.edu.qa/server/api/core/bitstreams/bef02f28-86d8-4e88-8496-400a62639158/content"
dl "07_QU_IRL_Negative_Legislative_Deviation.pdf" "https://qspace.qu.edu.qa/server/api/core/bitstreams/7e52ce8e-aed5-49b8-ac18-d08a47a31f3e/content"
dl "07_QScience_Executive_Legislative_Role_Qatar.pdf" "https://qspace.qu.edu.qa/server/api/core/bitstreams/21bce9b5-2181-48dc-b956-0ef7793ca0bd/content"
dl "07_JLSS_Legislative_Drafting_Qatar.pdf" "https://jlss.moi.gov.qa/index.php/PAJ/article/download/80/61"
dl "07_JLSS_Securities_Market_Disputes_Qatar.pdf" "https://jlss.moi.gov.qa/index.php/PAJ/article/download/101/50"
dl "07_JLSS_Direct_Enforcement_Admin_Decisions.pdf" "https://jlss.moi.gov.qa/index.php/PAJ/article/download/105/46"
dl "07_JLSS_Constitutional_Interpretation_Qatar.pdf" "https://jlss.moi.gov.qa/index.php/PAJ/article/download/116/36"
dl "07_JLSS_Unelected_Members_Gulf_Legislatures.pdf" "https://jlss.moi.gov.qa/index.php/PAJ/article/download/123/31"
dl "04_IMF_Qatar_2023_Article_IV_Staff_Report.pdf" "https://www.imf.org/-/media/files/publications/cr/2024/english/1qatea2024001.pdf"

echo
echo "Done. Files are in: $(pwd)"
