-- -- 1. データを追加しよう
-- -- INSERT INTO students(id, name, course)
-- -- VALUES (4, "Kate", "Java");

-- -- idカラムにはAUTO INCREMENTという機能がある(自動増加)
-- -- INSERT INTO students( name, course)
-- -- VALUES ( "Kate", "Java");         

-- -- studentsテーブルにデータを追加してください。
-- INSERT INTO students( name, course)
-- VALUES ( "Kate", "Java");

-- -- 下記のクエリは消さないでください。
-- select * from students;


-- -- 2. データを更新しよう

-- -- UPDATE テーブル
-- -- SET カラム="", カラム=""
-- -- WHERE id=;

-- -- studentsテーブルのidカラムの値が6のレコードをnameをJordanに、courseをHTMLに変更してください。
-- UPDATE students
-- SET name="Jordan", course="HTML"
-- WHERE id=6;

-- -- 下記のクエリは消さないでください。
-- SELECT * FROM students WHERE id=6;


-- -- 3. データを削除しよう

-- -- DELETE FROM テーブル
-- -- WHERE id=?;

-- -- studentsテーブルからidカラムの値が7のレコードを削除してください。
-- DELETE FROM students
-- WHERE id=7;

-- -- 下記のクエリは消さないでください。
-- SELECT * FROM students;


-- -- 4. もっと構文を使おう

-- -- studentsテーブルにnameをKaty、courseをHTMLとしたレコードを追加してください。
-- INSERT INTO students ( name, course)
-- VALUES( "Katy", "HTML");

-- -- studentsテーブルのidカラムの値が6のレコードのnameをJuliet、courseをRubyに更新してください。
-- UPDATE students
-- SET name="Juliet", course="Ruby"
-- WHERE id=6;

-- -- studentsテーブルのidカラムの値が2のレコードを削除してください。
-- DELETE FROM students
-- WHERE id=2;

-- -- 下記のクエリは消さないでください。
-- SELECT * FROM students;


