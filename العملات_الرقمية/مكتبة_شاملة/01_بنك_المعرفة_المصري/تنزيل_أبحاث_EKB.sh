#!/usr/bin/env bash
# ينزّل أبحاث بنك المعرفة المصري (EKB) غير المنزّلة إلى المجلد ./EKB_pdfs/
# الاستخدام: bash تنزيل_أبحاث_EKB.sh
set -u
mkdir -p EKB_pdfs && cd EKB_pdfs || exit 1
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
dl(){ [ -s "$1" ] && { echo "موجود: $1"; return; }; curl -fsL --retry 3 -m 180 -A "$UA" -o "$1" "$2" && head -c4 "$1" | grep -q %PDF && echo "تم: $1" || { echo "فشل: $2"; rm -f "$1"; echo "$2" >> ../EKB_failed.txt; }; }

dl "EKB_001.pdf" "https://aasj.journals.ekb.eg/article_155061_ee3648ea887b7cf2d87b2e1216f612d0.pdf"   # The role of cryptocurrencies in financial transactions considering modern global condition
dl "EKB_002.pdf" "https://ijci.journals.ekb.eg/article_319298_7841203a95849da2f1841c5cb5527e72.pdf"   # Double Spending Attacks in Decentralized Digital Currencies: Challenges and Countermeasure
dl "EKB_003.pdf" "https://ijlis.journals.ekb.eg/article_292542_011efd1e58827712a0f0ca54d824b043.pdf"   # ونشر الكتب الإلكترونية: دراسة وصفية استكشافية(NFT: Non-fungible token) الرموز غير القابلة 
dl "EKB_004.pdf" "https://jaauth.journals.ekb.eg/article_306342_73e7c31add47e2cd85b853fdffb07b17.pdf"   # العوامل المؤثرة نحو قبول الدفع بالعملات المشفرة من وجهة نظر السائحين والشركات السياحية [Ta
dl "EKB_005.pdf" "https://jocc.journals.ekb.eg/article_339923_ba6c7f5f228ff10ec8b062941c520913.pdf"   # Bitcoin_ML: An Efficient Framework for Bitcoin Price Prediction Using Machine Learning [Ma
dl "EKB_006.pdf" "https://jalexu.journals.ekb.eg/article_321707_aa5f94686ccd00a10073df24299eae7a.pdf"   # The Risks of Using Digital Currencies on Economic Growth in Some Asian Countries مخاطر است
dl "EKB_007.pdf" "https://espesl.journals.ekb.eg/article_214475_61ee85b34943c7c3df4e65f667841d68.pdf"   # مخاطر العملات الافتراضية في نظر السياسة الجنائية [اشرف توفيق شمس الدين]
dl "EKB_008.pdf" "https://espesl.journals.ekb.eg/article_229846_d80528118c6398c6e8d099f5be0a5590.pdf"   # النقود الرقمية فى الاقتصاد الوضعي والاقتصاد الاسلامى [عبد الرؤوف احمد الحنفى]
dl "EKB_009.pdf" "https://espesl.journals.ekb.eg/article_214677_9594da0c9e107c11f5c979b6cb9bda63.pdf"   # The Impact of Crypto Currencies on Economy: The Revolution of Bitcoin: Current Situation a
dl "EKB_010.pdf" "https://caf.journals.ekb.eg/article_246182_dbda7481c36ae89304999a1f288ed96c.pdf"   # إطار مقترح لعلاج مشکلات التحاسب الضريبي المحتملة لنشاط العملات الرقمية المشفرة في مصر(دراس
dl "EKB_011.pdf" "https://caf.journals.ekb.eg/article_263790_bb47e243ffda3aaf7810fd70bccfbc59.pdf"   # دراسة مقارنة للعلاقة بين تقلبات أسعار العملات الرقمية وقيم مؤشرات أسواق الأوراق الماليةبال
dl "EKB_012.pdf" "https://caf.journals.ekb.eg/article_317363_657372c61020ab6f1131d9f3f936a71c.pdf"   # أثر المحاسبة عن الأصول الرقمية على محاور التنمية المستدامة دراسة تطبيقية على البنوك التجار
dl "EKB_013.pdf" "https://drya.journals.ekb.eg/article_139210_f402153df7766758e5b5bdb30fb2ae31.pdf"   # العملات الافتراضية في الشريعة الإسلامية "البتکوين أنموذجاً" [الحسين محمد فاروق على محمود ع
dl "EKB_014.pdf" "https://atasu.journals.ekb.eg/article_60796_b56a99a9cb6f22a6b27b1f121dd24302.pdf"   # مشکلات المحاسبة عن العملات الرقمیة المشفرة فی ضوء متطلبات المعاییر الدولیة لإعداد التقاریر
dl "EKB_015.pdf" "https://icfgs.journals.ekb.eg/article_449792_8109b14207ad84f3750aab53751f2040.pdf"   # الإشكالات المنهجية للدراسات الفقهية المقارنة، دراسة تطبيقية على قضية العملات الرقمية (البي
dl "EKB_016.pdf" "https://ajahs.journals.ekb.eg/article_73633_5ce69301eaab006e5d2e8e95148cedc3.pdf"   # أثار استخدام العملات الالکترونية المشفرة في النظام النقدي الدولي - عملة البتکوين نموذجاً [
dl "EKB_017.pdf" "https://aja.journals.ekb.eg/article_445469_8aaad2c0af48148c8d002f0f5dcd3123.pdf"   # Navigating Digital Currency Regulation: Implications for International Collaboration Effec
dl "EKB_018.pdf" "https://aja.journals.ekb.eg/article_340246_06cbcc57a3b488f7e603b5ca141f0897.pdf"   # البيتكوين وأثره على البيئة خلال الفترة (01/2018 - 12/2022) [زينب القطيفي; أحلام المسعي]
dl "EKB_019.pdf" "https://jinfo.journals.ekb.eg/article_461941_d3a58e9e7b575f621989503343bdbe10.pdf"   # جرائم العملات الرقمية وعلاقتها بوسائل الإعلام [حافظ ‏ لصفر]
dl "EKB_020.pdf" "https://jartf.journals.ekb.eg/article_407600_53ed9a28ebe583b473a6457bb626c668.pdf"   # العملات الرقمية في ميزان الشرع: دراسة مقارنة [حنان عبدالكريم احمد محمد]
dl "EKB_021.pdf" "https://jces.journals.ekb.eg/article_372393_56d92086f7babbca0d94b341303a71e5.pdf"   #  تأثير الأصول الرقمية على تحقيق الاستقرار المالي للشركات بالأسواق المالية: دراسة ميدانية  
dl "EKB_022.pdf" "https://sjar.journals.ekb.eg/article_322796_5aa2cf36deef55e3e3c44eded00386a4.pdf"   # أثر محددات القياس والإفصاح المحاسبي عن الأصول الرقمية على تفعيل العلاقة بين عوائد وسيولة ا
dl "EKB_023.pdf" "https://masf.journals.ekb.eg/article_325470_0e28c960bc119f0dd7713a817980b435.pdf"   # دور تفعيل أنشطة المراجعة الرقمية بشأن العملات المشفرة في ترشيد قرارات المستثمرين بالبيئة ا
dl "EKB_024.pdf" "https://masf.journals.ekb.eg/article_325374_6aa650fb61b3b2b29376f13287d554fb.pdf"   # The Impact of Complex Accounting Estimates and Fair-Valued Cryptocurrencies on Audit Effor
dl "EKB_025.pdf" "https://cfdj.journals.ekb.eg/article_441054_ec40f3626268c853badb14d9cc7bd191.pdf"   # أثر المحاسبة عن الأصول المشفرة على القيمة السوقية للمنشأة [داليا عادل عباس ناصر; حنان حسن 
dl "EKB_026.pdf" "https://sjcf.journals.ekb.eg/article_246535_94c0dff74f18a7742053e84c2c607c3b.pdf"   # العملات الرقمية نشأتها وتطورها ومخاطر التعامل فيها [أحمد يحيى محمد علي]
dl "EKB_027.pdf" "https://jsec.journals.ekb.eg/article_94585_fa2142b5803dc03dcc6a7fba812b8cc7.pdf"   # خصائص العملات المشفرة بین المنافع والتهدیدات واتجاهات القواعد التنظیمیة [أسامة وجدی ودیع; 
dl "EKB_028.pdf" "https://jces.journals.ekb.eg/article_119639_73b7befb78794295c05fa2397ca1eba6.pdf"   # دراسة تحلیلیة لمشکلات المعاملة الضریبیة للعملات المشفرة [أحمد محمد إبراهیم; علاء فتحی زهری
dl "EKB_029.pdf" "https://sjar.journals.ekb.eg/article_119385_91a803433b1a1504b25e6f1373112695.pdf"   # منهج مقترح للمحاسبة والإفصاح عن العملات المشفرة وفق نموذج الأعمال فی إطار تکنولوجیا سلاسل 
dl "EKB_030.pdf" "https://cfdj.journals.ekb.eg/article_97927_0b42c54bc5cd2bafcda663ee3c24d712.pdf"   # العملات المشفرة وتقنیة البلوک تشین فی أفریقیا: تقییم الفرص والتحدیات [غادة أنیس أحمد البیا
dl "EKB_031.pdf" "https://jlaw.journals.ekb.eg/article_190634_d0a4e50d835c3035dfaa1271e4a899ef.pdf"   # العملات المشفرة (البلوک تشین) تحدیات ومخاطر دراسة المنازعات المصرفیة بالمملکة العربیة السع
dl "EKB_032.pdf" "https://jlaw.journals.ekb.eg/article_269825_e34678aaac1f208c3b8878c650e33be1.pdf"   # مخاطر العملات المشفرة وغسل الأموال "عملة البیتكوین نموذجًا" دراسة تأصیلیة تحلیلیة مقارنة ب
dl "EKB_033.pdf" "https://joa.journals.ekb.eg/article_330090_47cc5f410b282a6a666b0de38631217a.pdf"   # اتجاهات الشباب المصري نحو العملات الرقمية [إيمان عادل عبد المُنعم]
dl "EKB_034.pdf" "https://alat.journals.ekb.eg/article_206404_97ce2471d885bdad27ce411926aeb38b.pdf"   # اقتصاديات العملات الافتراضية المشفرة وماقد تفرضه من تحديات إقتصادية (دراسة حالة للبتکوين )
dl "EKB_035.pdf" "https://bfdc.journals.ekb.eg/article_186409_0c31e27f809420d5e90d15f726cd1df6.pdf"   # تداول العملات المشفرة وخطره على الأمن المجتمعی [خالد محمد حمدی صمیدة]
dl "EKB_036.pdf" "https://mbs.journals.ekb.eg/article_433856_2208723dc609b6b39be8227429b85267.pdf"   # أثر مراجعة الأصول الرقمية على تحسين جودة التقارير المالية " دراسه إختبارية بالبيئة المصرية
dl "EKB_037.pdf" "https://aljalexu.journals.ekb.eg/article_431947_6423487ce862d81bd24c90811f14b2b2.pdf"   # إطار محاسبي ديناميكي متكامل مقترح (DIDAR) للإعتراف والقياس والإفصاح عن الأصول الرقمية في ب
dl "EKB_038.pdf" "https://aljalexu.journals.ekb.eg/article_455003_c90a88de88dff709d8f73e6f7a85d25a.pdf"   # أثر الإعتراف بالعملات الرقمية كأصل غير ملموس علي إجراءات تجميع أدلة المراجعة – دراسة تجربي
dl "EKB_039.pdf" "https://jlr.journals.ekb.eg/article_308053_7ea27d1f6c91fe537ef79fa873cef981.pdf"   # العملات الرقمية المشفرة وتأثيرها على دور البنوك المركزية في إدارة السياسة النقدية: البيتكو
dl "EKB_040.pdf" "https://jlr.journals.ekb.eg/article_431868_c7f0fbf11dddada930ac90d898585c86.pdf"   # الحماية الجنائية لمستخدمي العُملات الرقمية الافتراضية (دراسة مقارنة) / Criminal Protection
dl "EKB_041.pdf" "https://jlr.journals.ekb.eg/article_280237_eb73f3eae7dd4ef08334790990363edc.pdf"   # زكاة العملات الافتراضیة | Zakat on Virtual Currencies [عبدالمجید بن جدید]
dl "EKB_042.pdf" "https://jlr.journals.ekb.eg/article_251615_d7014209b36eaf2e0624a9f8e88be5fb.pdf"   # محل التنفیذ الافتراضی (البیتکوین نموذجا) "دراسة وصفیة تحلیلیة مقارنة" Default Implementati
dl "EKB_043.pdf" "https://mjle.journals.ekb.eg/article_217175_5aeec6609fcad1ae9047b25ffb35768b.pdf"   # دراسة لبعض مشکلات عملة البيتکوين المشفرة [صلاح زين الدين]
dl "EKB_044.pdf" "https://mjle.journals.ekb.eg/article_440374_b41fd5ff7823fabea5b56eb740f481ab.pdf"   # تطور التشريعات في الاعتراف بالعملات المشفرة في الوطن العربي: دراسة حالة لدولة قطر . [د. ري
dl "EKB_045.pdf" "https://mjle.journals.ekb.eg/article_388677_a247376140f5bb2798b3c0db0d14fd09.pdf"   # دور العملات الافتراضية في تسهيل الجرائم الجنائية . [د يحيى إبراهيم دهشان]
dl "EKB_046.pdf" "https://mjle.journals.ekb.eg/article_217176_443bd4f558c8f78dc066710a19958677.pdf"   # النقود الرقمية (المشفرة) في ضوء الشريعة الإسلامية - دراسة فقهية مقارنة [فاطمة إسماعيل محمد
dl "EKB_047.pdf" "https://jsst.journals.ekb.eg/article_94387_369776ee85b7658855e954856ec4f6c4.pdf"   # أثر التنوع فى استخدام بعض العملات الافتراضیة للتغلب على معوقات التجارة الالکترونیة The eff
dl "EKB_048.pdf" "https://abj.journals.ekb.eg/article_468846_c78af077d6422992ab6b148e0929cf56.pdf"   # أثر الإبلاغ عن أمور المراجعة الحرجة المتعلقة بالعملات المشفرة في تقرير المراجعة على أتعاب 
dl "EKB_049.pdf" "https://abj.journals.ekb.eg/article_328976_b184828f5fa04547c03a8af845ec817b.pdf"   # أثر الإفصاح عن الأصول الرقمية بالقوائم المالية علي اجرءات جمع أدلة المراجعة : (دراسة تجريب
dl "EKB_050.pdf" "https://jstc.journals.ekb.eg/article_274486_d0faba49ec66d39849f164cb5b89f93b.pdf"   # Acceptance and Use of Cryptocurrency in Saudi Arabia: A Case Study of Bitcoins [Enas Elshi
dl "EKB_051.pdf" "https://dram.journals.ekb.eg/article_341204_a813384a112d1f7b21d375e262a85890.pdf"   # العملات الرقمية (البتكوين نموذجا) حقيقتها وحكم التعامل بها [موضي بنت صالح اللحيدان]
dl "EKB_052.pdf" "https://dram.journals.ekb.eg/article_162091_2a10f901ad7ebff51f4ef12811069d9f.pdf"   # الأحکام الفقهية المتعلقة بالعملات الرقمية (دراسة فقهية مقارنة) [نجلاء إبراهيم برکات عبد ال
dl "EKB_053.pdf" "https://jdl.journals.ekb.eg/article_316472_0e7cc40d373b25de762584aa6f456f4b.pdf"   # استخدام العملات الرقمية المشفرة ( المخاطر – الحلول) [حسام نبيل الشنراقي]
dl "EKB_054.pdf" "https://jdl.journals.ekb.eg/article_344980_524ed1d29c512fdb2846be1b94dfaef8.pdf"   # العملات الافتراضية ووظائف النقود [وفاء سالم على السيد]
dl "EKB_055.pdf" "https://mosj.journals.ekb.eg/article_292874_5170ee2a44e367d4453503aff4ff2043.pdf"   # أثر القیاس والإفصاح المحاسبی عن العملات الافتراضیة المشفرة على جودة التقاریر المالیة فی ضو
dl "EKB_056.pdf" "https://zjac.journals.ekb.eg/article_203992_c88743ba4d176b9b9c66e19b7a326dfb.pdf"   # الأحکام الفقهية المتعلقة بالعملات الرقمية "دراسة فقهية مقارنة" [نجلاء المتولي الشحات المرس
dl "EKB_057.pdf" "https://jocu.journals.ekb.eg/article_421206_65df4a1c7e562752d20e3a0be1c75970.pdf"   # أثر العملات المشفرة على النمو الاقتصادي [محمد ابراهيم راشد; احمد محمد وجيد قمرة]
dl "EKB_058.pdf" "https://mawq.journals.ekb.eg/article_270335_c1d68e96e817948caf4af56cec2f6538.pdf"   # العملات الرقمية المشفرة وأثرها على النظام الاقتصادي [حسن سيد حسن علي اليداك]
dl "EKB_059.pdf" "https://mawq.journals.ekb.eg/article_270347_bcc537a5c7d1a0a5320f015e1f0c7099.pdf"   # العملات الرقمية وأثرها على النظام الاقتصادي [محمد محمود إبراهيم محمود]
dl "EKB_060.pdf" "https://mawq.journals.ekb.eg/article_250338_c1c07750d9951f20624507d9079591a3.pdf"   # مهددات الأمن الاقتصادي "العملات الرقمية نموذجا" [عبير ربحي قدومي]
dl "EKB_061.pdf" "https://mawq.journals.ekb.eg/article_299438_6e37128b37027b91398cf168a7770151.pdf"   # العملات الرقمية وأثرها على النظام الاقتصادي دراسة فقهية [حنان عبد الكريم محمد حسن]
dl "EKB_062.pdf" "https://mawq.journals.ekb.eg/article_270319_6be178dab05d751054ca357fa8030fe3.pdf"   # أحكام النقود الرقمية في الشريعة الإسلامية "Bitcoin" البتكوين أنموذجاً [ياسر السيد عبد العظ
dl "EKB_063.pdf" "https://mawq.journals.ekb.eg/article_411099_f5711ed2d258585521c47bba6e7c3ee1.pdf"   # تيسير الشمول المالي الرقمي لذوي الهمم ودوره في التنمية المستدامة النقود الرقمية المركزية ن
dl "EKB_064.pdf" "https://jelc.journals.ekb.eg/article_174444_ac19a858799a41fe44a0fa7b532941d7.pdf"   # التنظيم القانوني للعملات المشفرة البتکوين دراسة تحليلية للنظام الألماني والأمريکي [فادي تو
dl "EKB_065.pdf" "https://jelc.journals.ekb.eg/article_285810_87266c0a3bdab173829ea2dd7f0dcbeb.pdf"   # (السياسة النقدية ومواكبة التحولات الرقمية النقود المشفرة نموذجاً) [الدكتور صلاح حامد محمد 
dl "EKB_066.pdf" "https://jelc.journals.ekb.eg/article_311530_5b2bb4c0175a7175722bfeb9caffed7b.pdf"   # الأصول الافتراضيّة القيمية بين حق الملكية وحق المؤلف "قراءة في التجربة الفرنسية"NFTs" [د م
dl "EKB_067.pdf" "https://mle.journals.ekb.eg/article_164948_8900cdfbade13ef06d9e533e8d768f68.pdf"   # العملات المشفرة ( البلوک تشين ) تحديات ومخاطر مرتقبة حال إنتشارها عالمياً (دراسة المنازعات
dl "EKB_068.pdf" "https://jlais.journals.ekb.eg/article_344673_8be1f047b6651bab73f45f22a4d50592.pdf"   # حكم التعامل العملات الرقمية المشفرة بين مقاصد الشرع وضرورة العصر [عبد السلام كمال عبد اللط
dl "EKB_069.pdf" "https://kias.journals.ekb.eg/article_251690_401061c536409ec61c16c3df93010c96.pdf"   # جريمة استعمال العملات المشفرة دراسة مقارنة [محمد جبريل ابراهيم حسن حسن]
dl "EKB_070.pdf" "https://dftaa.journals.ekb.eg/article_126271_a54b0c73a55bc20845f94cb785fd9545.pdf"   # العُملَات الافْتِرَاضِیَّة المُشَفَّــــرة ماهیتُها -خصائصُها - تکییفاتُها الفقهیة (بیتکوی
dl "EKB_071.pdf" "https://jssl.journals.ekb.eg/article_288475_bf922f1af2fe60128682eedb82389282.pdf"   # العملات الرقمية وقدرتها على القيام بوظائف النقود في الفقه الإسلامي [عمرو محمد غانم أبو الع
dl "EKB_072.pdf" "https://jssl.journals.ekb.eg/article_356781_f0b0e43175e6c2bf315953e85eded354.pdf"   # انتـقال ملـكية الأصول الرقـمية بالوفـاة بين الإشكـالات الشرعـية والتحديـات القـانونية Tran
dl "EKB_073.pdf" "https://skjaz.journals.ekb.eg/article_355831_24046dd30ef7adc4b38b6b421f99239d.pdf"   # حكم البتكوين والعملات الرقمية Ruling on Bitcoin and Digital Currencies [غسان محمد الشيخ]
dl "EKB_074.pdf" "https://mkasu.journals.ekb.eg/article_403529_78061110e6385dcc3f9f11c18d535391.pdf"   # التعاقد بالعملات الرقمية عبر خاصية البلوك تشين من منظور التشريع الإسلامي [خالد حسن احمد حا
dl "EKB_075.pdf" "https://bfda.journals.ekb.eg/article_335641_dedadceb4eed7d9ab1aeb27dad5d9955.pdf"   # العملات الإلكترونية "البيتْكُويْن" أنموذجاً - دراسة فقهية - [عبدالحكيم بن عبدالله القبيسي]
dl "EKB_076.pdf" "https://jcia.journals.ekb.eg/article_445597_1f649f0c37cffa692f46a2066b459f99.pdf"   # العملات المشفرة المستقرة: رؤية اقتصادية قانونية فقهية، عملة الإمارات الافتراضية AE coin أن
dl "EKB_077.pdf" "https://mfth.journals.ekb.eg/article_404235_9a25b6e60e7ee77ed469cb27fe425047.pdf"   # استكشاف استخدام العملات المشفرة في قطاع السياحة المصري: الفرص والتحديات [منة الله عادل ابر
dl "EKB_078.pdf" "https://mksq.journals.ekb.eg/article_254937_374183528ad787ab1d09773f3abb2f90.pdf"   # العملات الافتراضية المشفرة وأثرها على مستقبل المعاملات (الواقع وآفاق المستقبل) [منصور علي 
dl "EKB_079.pdf" "https://jfslt.journals.ekb.eg/article_369433_d21d398f1034ba275f5d8fe011a355e2.pdf"   # العملات الافتراضية في ميزان الفقه الإسلامي [عبدالحليم منصور]
dl "EKB_080.pdf" "https://fica.journals.ekb.eg/article_35632_5288a7b927d83d3c4a2beff5ba403311.pdf"   # العملة المشفرة (البتکوین) تکییفها الفقهی وحکمها الشرعی دراسة فقهیة مقارنة [حسن عبد الله عب
dl "EKB_081.pdf" "https://jfslt.journals.ekb.eg/article_217897_ec85b27f95c2763b1875c715450e4416.pdf"   # تحـدیــــــــات النظام النقدی العالمی حول التنظیم الرسمی للعملة المشفرة "بتکوین" [عمــــــ
dl "EKB_082.pdf" "https://hermes.journals.ekb.eg/article_207303_eafc65d24bedf3419aa55c09ec548eb6.pdf"   # The cryptocurrencies could change the nature of monetary policy [Gehad Sherif]
dl "EKB_083.pdf" "https://jcia.journals.ekb.eg/article_79533_d01e711c231eb3eb376e3174afd4f5b9.pdf"   # التعامل بالعملات الافتراضية وزكاتها
dl "EKB_084.pdf" "https://www.bjas.journals.ekb.eg/article_447508_70d6135e3d0dcee150d3a29472757cc5.pdf"   # The Bitcoin Wallets: how to be anonymous?
dl "EKB_085.pdf" "https://jlr.journals.ekb.eg/article_308053_7a8a9b4fe614de862dd4f7fde68628c8.pdf"   # (untitled in index; crypto/central banks, jlr) article 308053
dl "EKB_086.pdf" "https://jsec.journals.ekb.eg/article_120047_a93984d2ce1d82abcd892f7f3637d415.pdf"   # (crypto-related; title not resolved) article 120047

echo
echo "انتهى. الملفات في: $(pwd)"
echo "الأبحاث التالية لها صفحة مقال فقط (افتحها من المتصفح ونزّل الـ PDF يدويًا):"
echo "  https://doi.org/10.21608/djis.2026.477670.1022"   # Predicting Cryptocurrency Startup Success: An Ensemble Learning Model for Initia
echo "  https://doi.org/10.21608/ijicis.2025.411793.1418"   # Bitcoin Sentiment Analysis with LIME-Driven Insights [sarah Osama anis; Mohammed
echo "  https://doi.org/10.21608/jaauth.2021.75942.1177"   # The impact of Bitcoin Electronic Trust Factors on Hotel Transactions as a Mechan
echo "  https://doi.org/10.21608/espesl.2023.194836.1051"   # قانونية العملات الرقمية المشفرة "بيتكوين" في ظل التشريعات العربية والدولية [احمد
echo "  https://doi.org/10.21608/afar.2025.530603"   # العملات الافتراضية وتأثيرها على الاقتصاد العربي [مدحت نافع]
echo "  https://doi.org/10.21608/atasu.2026.500303"   # إطار للمعالجة المحاسبية والضريبية لشركات تعدين العملات الرقمية ( دراسة تطبيقية )
echo "  https://doi.org/10.21608/icfgs.2025.450126"   # تحديات الفتوى في العصر الرقمي "إشكالات العملات الافتراضية نموذجا دراسة فقهية تأص
echo "  https://doi.org/10.21608/ijade.2024.313661.1023"   # المحاسبة عن الأصول الرقمية في بيئة الميتافيرس - دراسة ميدانية [زينب خلف]
echo "  https://doi.org/10.21608/ijslc.2025.361015.1014"   # نهج الحكومات تجاه العملات الرقمية [علی اکبر شمس; هدی مطوری]
echo "  https://doi.org/10.21608/jartf.2026.515069.2806"   # حكم تداول العملات الرقمية بين اعتبارها نقدا أو سلعة دراسة مقارنة بين المذاهب الف
echo "  https://doi.org/10.21608/jsfc.2025.432089"   # طار مقترح لمشكلات المحاسبة والمراجعة عن الأصول الرقمية فى ضوء المعايير الدولية ل
echo "  https://doi.org/10.21608/jsfc.2025.367773.1017"   # اطار مقترح لمشكلات المحاسبة والم ا رجعة عن الأصول الرقمية فى ضوء المعايير الدولي
echo "  https://doi.org/10.21608/jsec.2025.459076"   # دور إستخدام تقنيات الذكاء الإصطناعي التوليدي (Gen AI) والرموز غير القابلة للإستب
echo "  https://doi.org/10.21608/sjsc.2026.500007.1697"   # اثر المحاسبة عن الأصول الرقمية علي المراجعة (دراسة ميدانية) (A Field Study)The I
echo "  https://doi.org/10.21608/sjrbs.2026.476042.2604"   # A Proposed Model for Accounting of Digital Assets and Its Impact on The Characte
echo "  https://doi.org/10.21608/jces.2025.459176"   # القياس والإفصاح المحاسبي للعملات المشفرة في ظل المعيار المحاسبي IFRS [أمينة عبد 
echo "  https://doi.org/10.21608/jces.2026.505606"   # The Relationship Between Bitcoin Trading Volume and Stock Market Activity: A Pan
echo "  https://doi.org/10.21608/sjcf.2024.283839.1076"   # الأزمات المتكررة في أسواق العملات المشفرة وانعكاساتها على تطور معايير المراجعة. 
echo "  https://doi.org/10.21608/jafd.2025.479820"   # العملات الرقمية بين الجواز والمنع في الفقه الإسلامي (البتكوين أنموذجاً) [عبد الل
echo "  https://doi.org/10.21608/jces.2022.285181"   # The role of Bitcoin as hedge, safe haven or diversifier for USA stock markets: E
echo "  https://doi.org/10.21608/jlaw.2026.468755.1437"   # مخاطر تداول العملات الرقمية المشفرة في الإنترنت المظلم دراسة قانونية علمية تطبيق
echo "  https://doi.org/10.21608/jlaw.2026.509237.1510"   # المسؤولية الجنائية لمنصات العملات الافتراضية المشفرة عن جريمتي غسل الأموال وتموي
echo "  https://doi.org/10.21608/jlaw.2025.420857.1333"   # الطبيعة الشرعية والقانونية لتداول العملات الافتراضية [أيمن عبد العظيم سرحان]
echo "  https://doi.org/10.21608/jlaw.2026.463050.1419"   # جرائم العملات الرقمية: تمويل الإرهاب نموذجًا (وفقا للتشريع العماني) [حسين بن سعي
echo "  https://doi.org/10.21608/jle.2025.404623.1071"   # أثر استخدام العملات المشفرة على جريمة الاحتيال الإلكتروني [تامر السيد أحمد السيد
echo "  https://doi.org/10.21608/jle.2024.402516"   # العملات الافتراضية وآثارها على الاقتصاد العالمي [أحمد إبراهيم دهشان]
echo "  https://doi.org/10.21608/joa.2024.367290"   # العوامل المؤثرة على زيادة قبول الجمهور البحريني لاستخدام العملات الرقمية. [حسين 
echo "  https://doi.org/10.21608/bfsgm.2025.442287"   # العملات الافتراضية وأثرها في مستقبل السياسات الاقتصادية(دراسة فقهية مقارنة) [هبة
echo "  https://doi.org/10.21608/las.2024.325213.1255"   # جريمة غسل الأموال واستخدام العملات المشفرة فى ارتكابها Money laundering crime an
echo "  https://doi.org/10.21608/las.2026.473271.1379"   # التحديات المالية والاقتصادية للعملات المشفرة (دراسة تحليلية) Financial and Econo
echo "  https://doi.org/10.21608/las.2024.261906.1184"   # المشتقات المالية المشفرة ودورها في إدارة مخاطر الاستثمار Encrypted financial der
echo "  https://doi.org/10.21608/las.2024.292991.1220"   # العملات الافتراضية والجرائم المتعلقة بها البيتكوين نموذجًا Virtual Currencies an
echo "  https://doi.org/10.21608/las.2026.458703.1359"   # تحولات السياسة الجنائية في مواجهة الجرائم المالية المرتبطة بالعملات المشفرة دراس
echo "  https://doi.org/10.21608/mbs.2025.437264"   # تأثير التكنولوجيا المالية على المعايير المحاسبية الدولية: دراسة تحليلية للتجارب 
echo "  https://doi.org/10.21608/mbs.2026.523386"   # أثر استخدام العقود الذكية على القياس والمحاسبة عن الأصول الرقمية في ظل المعايير 
echo "  https://doi.org/10.21608/mbs.2026.523387"   # العلاقة بين قياس الأصول الرقمية ودقة تنبؤات التدفقات النقدية المستقبلية فى ظل ال
echo "  https://doi.org/10.21608/zcom.2023.181460.1197"   # انعكاسات التعامل المالی بالعملات المشفرة عالمیا على الأفراد والمجتمعات [سهیلة ال
echo "  https://doi.org/10.21608/jlr.2024.287819.1436"   # دور العملات الافتراضية المشفرة في جريمتي غسل الأموال وتمويل الإرهاب [وفاء صقر; و
echo "  https://doi.org/10.21608/jlr.2024.288827.1440"   # أحكام العملات المشفرة في الفقه الإسلامي - بين المالية والنقدية [محمد أحمد شحاتة 
echo "  https://doi.org/10.21608/jlr.2026.482537.2034"   # زكاة العملات الرقمية المشفرة وأحكامها الفقهية "دراسة فقهية مقارنة" [أحمد عرفة أح
echo "  https://doi.org/10.21608/jlr.2026.487449.2067"   # العملات المشفرة وجريمة غسل الأموال في البيئة الرقمية / Cryptocurrencies and the 
echo "  https://doi.org/10.21608/jlr.2026.445886.1931"   # العملات الافتراضية بين الواقع والمأمول [علي محمود أحمد]
echo "  https://doi.org/10.21608/jlr.2025.351009.1620"   # زكاة العملات الافتراضية-دراسة فقهية / Zakat on Virtual Currencies A Jurisprudent
echo "  https://doi.org/10.21608/jlr.2025.378277.1727"   # دور الفتاوى الإلكترونية الاقتصادية في تعزيز التنمية المستدامة العملة الرقمية الب
echo "  https://doi.org/10.21608/mjle.2026.521098"   # العملات المشفرة وأثرها على الإيرادات العامة للدولة . [احمد جاسم محمد الدليمي]
echo "  https://doi.org/10.21608/mjle.2022.235668"   # جريمة التعامل في العملات المشفرة أو النقود الرقمية "دراسة مقارنة" [محمد جبريل اب
echo "  https://doi.org/10.21608/mjle.2026.492910"   # أركان جريمة التعامل في العملات المشفرة والعقوبات المقررة لها. [خليل نزيه أبو يوس
echo "  https://doi.org/10.21608/mjle.2025.461351"   # أركان جريمة إساءة استخدام العملات المشفرة في التشريع العراقي (دراسة مقارنة). [بل
echo "  https://doi.org/10.21608/mjle.2026.529337"   # دور النظام القانوني للعملات الرقمية للبنوك المركزية (CBDCs) في تعزيز السياسة الن
echo "  https://doi.org/10.21608/lsej.2026.469501.1442"   # القانون الواجب التطبيق على استخدام العملات المشفرة والمسؤولية الناشئة عن ذلك [مح
echo "  https://doi.org/10.21608/jslem.2025.388871.1392"   # الأبعاد القانونية والإقتصادية للعملات الإلكترونية (البتكوين) (دراسة تحليلية) [ام
echo "  https://doi.org/10.21608/jsst.2025.413933.2096"   # الأصول الرقمية وانعكاساتها على المعالجات المحاسبية في التقارير المالية [سليمان س
echo "  https://doi.org/10.21608/jsst.2026.518280.2332"   # تأثير ضغط المستثمرين كمتغير معدل في العلاقة بين الافصاح عن الأصول الرقمية و ممار
echo "  https://doi.org/10.21608/abj.2025.471408"   # أثر اختلاف بدائل الاعتراف المحاسبى بالعملات الرقمية المشفرة فى القوائم المالية ع
echo "  https://doi.org/10.21608/abj.2026.501436"   # أثر ممارسات المحاسبة الإبداعية على جودة المعلومات المحاسبية وتبنى وإستخدام محاسب
echo "  https://doi.org/10.21608/abj.2025.464905"   # أثر اختلاف بدائل القياس و الإفصاح المحاسبي عن الأصول الرقمية على جودة المحتوى ال
echo "  https://doi.org/10.21608/jdl.2026.528399.1821"   # العملات الافتراضية ومفهوم النقود في القانون الجنائي إقراض البيتكوين بفائدة نموذج
echo "  https://doi.org/10.21608/jcsr.2022.347165"   # اثر العملات المشفرة على المعالجة المحاسبية فى ضوء معيار IFRS دراسة استطلاعية للس
echo "  https://doi.org/10.21608/jcsr.2026.498500.1090"   # The Impact of Central Bank Digital Currency Adoption on Monetary Policy Effectiv
echo "  https://doi.org/10.21608/mawq.2026.478925.1278"   # جرائم العملات المشفرة بين القانون الكويتي والفقه الإسلامي: غسيل الأموال أنموذجاً
echo "  https://doi.org/10.21608/jelc.2020.174458"   # العملات المشفرة البتکوين والأدوات المالية المستحدثة [فادي توکل]
echo "  https://doi.org/10.21608/jelc.2023.198807.1088"   # الأصول الافتراضيّة القيمية "NFTs" بين حق الملكية وحق المؤلف "قراءة في التجربة ال
echo "  https://doi.org/10.21608/mjaf.2026.491856.4032"   # دور الرموز غير القابلة للاستبدال (NFT) كأصول رقمية قابلة للتخصيص في تعزيز الإبدا
echo "  https://doi.org/10.21608/mle.2024.201282.1070"   # التوجه نحو التنظيم القانونى للعملات الافتراضية (دراسة تحليلية معمقة ) [هبة الله 
echo "  https://doi.org/10.21608/mnsli.2026.469924.1144"   # أثر الإفصاح عن الأصول الرقمية على إدارة الأرباح: دراسة تطبيقية [أحمد مظهر إبراهي
echo "  https://doi.org/10.21608/abs.2025.449760.1099"   # أثر العملات المشفرة على البيئة عالمياً خلال الفترة (2010–2023) حالة (البيتكوين) 
echo "  https://doi.org/10.21608/abs.2026.478419.1119"   # Herding Behavior and Price Dispersion in Cryptocurrency Markets: Evidence from N
echo "  https://doi.org/10.21608/jsmd.2026.452441.1071"   # من الإعلانات الإلكترونية المجانية إلى العملات الرقمية [رباب العجماوي]
echo "  https://doi.org/10.21608/acj.2025.467590"   # تأثير المتغيرات الاقتصادية على سعر البيتكوين: دلائل من الولايات المتحدة الامريكي
echo "  https://doi.org/10.21608/kias.2026.447769.1053"   # العملات الافتراضية المشفرة (ماهيتها، وخصائصها، ووضعها القانوي) [سمر محمد أحمد عل
echo "  https://doi.org/10.21608/mhdl.2024.310316.1117"   # العملات المشفرة اداة لتمويل الارهاب وغسيل الاموال [هانى البيلى]
echo "  https://doi.org/10.21608/mhdl.2026.406586.1188"   # إقتصاديات الاصول والعملات الرقمية المشفرة [عبدالرحمن إبراهيم بجاتو]
echo "  https://doi.org/10.21608/mhdl.2026.395436.1179"   # العملات الرقمية والمشفرة والتحولات الاقتصادية العالمية [السيد علي إبراهيم مجاهد]
echo "  https://doi.org/10.21608/jssl.2026.468129.1204"   # دراسة الرموز غير القابلة للاستبدال من منظور الفقه الإسلامي [د. سعدية الجزار]
echo "  https://doi.org/10.21608/skjaz.2023.480294"   # بروتوكول إصدار العملات المشفرة (البلوك تشين) “دراسة مقارنة مع الاقتصاد الإسلامي”
echo "  https://doi.org/10.21608/artman.2023.241484.2343"   # عملة البتكوين والتجارة الالكترونية [سلمى حمود]
echo "  https://doi.org/10.21608/jpsa.2025.423544"   # تحليل دور العملات الرقمية في تعزيز الشمول المالي: الفرص والتحديات [عبد الحليم مح
echo "  https://doi.org/10.21608/jfga.2026.487132.1111"   # العملات الرقمية المستقرة المدعومة بالذهب، دراسة فقهية [د سهير محمد يوسف القضاه]
echo "  https://doi.org/10.21608/jfga.2025.437631.1088"   # التنظيم القانوني للعملات الرقمية الافتراضية في المملكة العربية السعودية (البتكوي
echo "  https://doi.org/10.21608/bfda.2025.380508.1706"   # العملات الرقمية إنشاؤها وتداولها من منظور فقهي "دراسة مقارنة" [تغربد خفاجي]
echo "  https://doi.org/10.21608/bfda.2025.416911.1747"   # العملات الرقمية وأثرها على النظام الاقتصادي المعاصر: دراسة فقهية واقتصادية وقانو
echo "  https://doi.org/10.21608/jfsu.2026.474356.1351"   # التكييف الفقهي للرموز الرقمية غير القابلة للاستبدال وأثره دراسة فقهية مقارنة The
echo "  https://doi.org/10.21608/mkdaf.2024.293387.1164"   # أَثَرُ الضَّوَابِطِ وَالْمَقَاصِدِ الشَّرْعِيَّةِ لِلْنُقُوْدِ فِيْ الْحُكْمِ عَ
echo "  https://jlr.journals.ekb.eg/article_251826.html"   # النقود الرقمية وأثر التعامل بها على الحياة الاقتصادية - دراسة فقهية اقتصادية مقا
echo "  https://jsec.journals.ekb.eg/article_39778.html"   # النقود الافتراضية مفهومها وأنواعها وآثارها الاقتصادية
echo "  https://mawq.journals.ekb.eg/article_270323.html"   # الأحكام الفقهية للعملات الرقمية دراسة مقارنة (جاسم كاظم عبدالله)
echo "  https://jpsa.journals.ekb.eg/article_189944.html"   # تقييم اقتصادي أولي لمخاطر البيتكوين
echo "  https://jlaw.journals.ekb.eg/article_207124.html"   # الاستثمار في العملات الافتراضية (سالي سمير فهمي عبد المسيح)
echo "  https://jdl.journals.ekb.eg/article_288635.html"   # سلسلة الكتل "البلوك شين" ودورها في الحد من جريمة غسل الأموال
