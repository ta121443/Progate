-- -- 2. クエリとは
-- -- purchaseテーブルから、nameカラムのデータを取得する
-- select name
-- from purchases;
-- -- purchaseテーブルから、priceカラムのデータを取得する
-- select price 
-- from purchases;


-- -- 3. 複数のカラムを選択する

-- -- purchasesテーブルから、「nameカラム」と「priceカラム」のデータを取得してください
-- select name, price
-- from purchases;

-- -- purchasesテーブルから、全てのカラムのデータを取得してください
-- select *
-- from purchases;


-- -- 4. WHERE

-- -- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」であるデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE category = "食費";


-- -- 5. WHERE(2)

-- -- 「FROM purchases」のあとにコードを追加し、priceカラムが「1000」のデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE price = 1000;

-- -- 「FROM purchases」のあとにコードを追加し、purchased_atカラムが「2017-07-01」のデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE purchased_at = "2017-07-01";


-- -- 6. 比較演算子

-- -- 「FROM purchases」のあとにコードを追加し、priceカラムが「1000以上」のデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE price >= 1000;

-- -- 「FROM purchases」のあとにコードを追加し、purchased_atカラムが「2017-08-01以前」のデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE purchased_at <= "2017-08-01";


-- -- 7. LIKE演算子

-- -- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」を含むデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE name LIKE "%プリン%";      % : ワイルドカード、%文字列%で完全一致、文字列%で文字列から始まる、%文字列で文字列で終わる


-- -- 8. LIKE演算子（２）
-- -- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」で始まるデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE name LIKE "プリン%";

-- -- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」で終わるデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE name LIKE "%プリン";


-- -- 9. NOT演算子

-- -- 「FROM purchases」のあとにコードを追加し、character_nameカラムが「にんじゃわんこ」でないデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE NOT character_name = "にんじゃわんこ";

-- -- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」を含まないデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE NOT name LIKE "%プリン%";


-- -- 10. IS NULL, IS NOT NULL

-- -- 「FROM purchases」のあとにコードを追加し、priceカラムがNULLであるデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE price IS NULL;

-- -- 「FROM purchases」のあとにコードを追加し、priceカラムがNULLでないデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE price IS NOT NULL;


-- -- 11. AND・OR演算子

-- -- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」かつcharacter_nameカラムが「ひつじ仙人」であるデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE category = "食費"
-- AND character_name = "ひつじ仙人";

-- -- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」またはcharacter_nameカラムが「にんじゃわんこ」であるデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE category = "食費"
-- OR character_name = "にんじゃわんこ";


-- -- 12. ORDER BY

-- -- ASC: 昇順　DESC: 降順 

-- -- 「FROM purchases」のあとにコードを追加し、priceカラムを基準に降順に並び替えたデータを取得してください

-- SELECT *
-- FROM purchases
-- ORDER BY price DESC;

-- -- 「WHERE character_name = "にんじゃわんこ"」のあとにコードを追加し、priceカラムを基準に昇順に並び替えたデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE character_name = "にんじゃわんこ"
-- ORDER BY price ASC;


-- -- 13. LIMIT　取得するデータ数を制限

-- -- 「FROM purchases」のあとにコードを追加し、取得結果が「最大5件」となるようにデータを取得してください。

-- SELECT *
-- FROM purchases
-- LIMIT 5;

-- -- 「WHERE character_name = "にんじゃわんこ"」のあとにコードを追加し、取得結果が「最大10件」となるようにデータを取得してください。

-- SELECT *
-- FROM purchases
-- WHERE character_name = "にんじゃわんこ"
-- LIMIT 10;


-- -- 14. 総合演習

-- -- ORDER BY と LIMIT を組み合わせるときは、必ずLIMITを末尾にセット

-- -- 「FROM purchases」のあとにコードを追加し、purchased_atカラムが「2017-08-01以前」のデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE purchased_at <= "2017-08-01";

-- -- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」を含むデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE name LIKE "%プリン%";

-- /*
-- 「FROM purchases」のあとにコードを追加し、
-- NOT演算子を用いてcharacter_nameカラムが「にんじゃわんこ」でないデータを取得してください。
-- */

-- SELECT *
-- FROM purchases
-- WHERE NOT character_name = "にんじゃわんこ";

-- -- 「FROM purchases」のあとにコードを追加し、priceカラムがNULLであるデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE price IS NULL;

-- -- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」かつcharacter_nameカラムが「ひつじ仙人」であるデータを取得してください

-- SELECT *
-- FROM purchases
-- WHERE category = "食費"
-- AND character_name = "ひつじ仙人";

-- -- 「FROM purchases」のあとにコードを追加し、priceカラムを基準に「降順に並び替えた」データを、最大で「5件」取得してください

-- SELECT *
-- FROM purchases
-- ORDER BY price DESC
-- LIMIT 5;