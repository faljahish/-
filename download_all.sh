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
dl "07_QU_IRL_Constitutional_Laws_Qatar.pdf"       "https://journals.qu.edu.qa/index.php/IRL/article/download/2135/1538/2585"
dl "07_QU_IRL_Negative_Legislative_Deviation.pdf"  "https://journals.qu.edu.qa/index.php/IRL/article/download/4953/3112"
dl "07_Police_Legal_Security_Studies_Jan2026.pdf"  "https://portal.moi.gov.qa/policecollege/publications/studies_jan2026.pdf"
dl "07_Police_Legal_Security_Studies_Jul2025.pdf"  "https://portal.moi.gov.qa/policecollege/publications/studies_july2025.pdf"
dl "07_Police_Legal_Security_Studies_Jan2025.pdf"  "https://portal.moi.gov.qa/policecollege/publications/studies_jan2025.pdf"

echo
echo "Done. Files are in: $(pwd)"
echo "Archive.org books (الماوردي، ابن تيمية، السنهوري) are large — download them from the links in the .md file (DOWNLOAD OPTIONS → PDF)."
