-- SELECT, FROM, WHERE
SELECT kolom1, kolom2
FROM tabel
WHERE kondisi;
-- Memilih kolom1 dan kolom2 dari tabel berdasarkan kondisi tertentu.

-- SELECT, FROM, JOIN
SELECT t1.kolom1, t2.kolom2
FROM tabel1 t1
JOIN tabel2 t2 ON t1.kolom = t2.kolom;
-- Memilih kolom1 dari tabel1 dan kolom2 dari tabel2 dengan melakukan join berdasarkan kolom yang sesuai antara kedua tabel tersebut.

-- SELECT, FROM, WHERE, IN
SELECT kolom1, kolom2
FROM tabel
WHERE kolom IN (nilai1, nilai2, nilai3);
-- Memilih kolom1 dan kolom2 dari tabel dengan memfilter data berdasarkan nilai-nilai tertentu dalam kolom.

-- SELECT, FROM, AS
SELECT kolom1 AS alias1, kolom2 AS alias2
FROM tabel;
-- Memilih kolom1 dan kolom2 dari tabel dengan memberikan alias pada masing-masing kolom.

-- SELECT, FROM, GROUP BY
SELECT kolom1, COUNT(kolom2)
FROM tabel
GROUP BY kolom1;
-- Memilih kolom1 dan menghitung jumlah kolom2 dari tabel, dikelompokkan berdasarkan kolom1.

-- SELECT, FROM, GROUP BY, HAVING
SELECT kolom1, COUNT(kolom2)
FROM tabel
GROUP BY kolom1
HAVING COUNT(kolom2) > 10;
-- Memilih kolom1 dan menghitung jumlah kolom2 dari tabel, dikelompokkan berdasarkan kolom1 dan hanya mempertahankan baris dengan jumlah kolom2 lebih besar dari 10.

-- SELECT, FROM, ORDER BY
SELECT kolom
FROM tabel
ORDER BY kolom ASC/DESC;
-- Memilih kolom dari tabel dan mengurutkannya secara menaik (ASC) atau menurun (DESC) berdasarkan nilai kolom.

-- SELECT, FROM, LIMIT
SELECT kolom
FROM tabel
LIMIT jumlah_baris;
-- Memilih kolom dari tabel dengan membatasi jumlah baris yang ditampilkan.

-- SELECT, FROM, JOIN, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT
SELECT t1.kolom1, t2.kolom2, COUNT(t3.kolom3) AS jumlah
FROM tabel1 t1
JOIN tabel2 t2 ON t1.kolom = t2.kolom
JOIN tabel3 t3 ON t1.kolom = t3.kolom
WHERE t1.kondisi = nilai
GROUP BY t1.kolom1, t2.kolom2
HAVING COUNT(t3.kolom3) > 5
ORDER BY t1.kolom1 ASC
LIMIT jumlah_baris;
-- Menggabungkan tiga tabel (tabel1, tabel2, tabel3) dengan melakukan JOIN, memfilter hasil berdasarkan kondisi tertentu, mengelompokkan hasil berdasarkan kolom1 dan kolom2, mempertahankan hanya baris dengan jumlah kolom3 lebih besar dari 5, mengurutkan berdasarkan kolom1 secara menaik (ASC), dan membatasi jumlah baris yang ditampilkan.

-- INSERT INTO
INSERT INTO tabel (kolom1, kolom2)
VALUES (nilai1, nilai2);
-- Memasukkan data baru ke dalam tabel dengan nilai-nilai tertentu untuk kolom1 dan kolom2.

-- UPDATE
UPDATE tabel
SET kolom = nilai
WHERE kondisi;
-- Memperbarui nilai dalam tabel berdasarkan kondisi tertentu.

-- DELETE
DELETE FROM tabel
WHERE kondisi;
-- Menghapus baris dari tabel berdasarkan kondisi tertentu.

-- COUNT
SELECT COUNT(*)
FROM tabel
WHERE kondisi;
-- Menghitung jumlah baris yang cocok dengan kondisi tertentu.

-- AVG
SELECT AVG(kolom)
FROM tabel
WHERE kondisi;
-- Menghitung rata-rata nilai dalam kolom berdasarkan kondisi tertentu.

-- SUM
SELECT SUM(kolom)
FROM tabel
WHERE kondisi;
-- Menjumlahkan nilai dalam kolom berdasarkan kondisi tertentu.

-- MAX
SELECT MAX(kolom)
FROM tabel
WHERE kondisi;
-- Mencari nilai maksimum dalam kolom berdasarkan kondisi tertentu.

-- MIN
SELECT MIN(kolom)
FROM tabel
WHERE kondisi;
-- Mencari nilai minimum dalam kolom berdasarkan kondisi tertentu.

-- BETWEEN
SELECT kolom
FROM tabel
WHERE kolom BETWEEN nilai1 AND nilai2;
-- Memilih kolom dari tabel dengan memfilter data berdasarkan rentang nilai tertentu.

-- LIKE
SELECT kolom
FROM tabel
WHERE kolom LIKE 'pola';
-- Memilih kolom dari tabel dengan memfilter data berdasarkan pola teks tertentu.

-- IS NULL
SELECT kolom
FROM tabel
WHERE kolom IS NULL;
-- Memilih kolom dari tabel dengan memfilter data yang memiliki nilai NULL dalam kolom.

-- IS NOT NULL
SELECT kolom
FROM tabel
WHERE kolom IS NOT NULL;
-- Memilih kolom dari tabel dengan memfilter data yang memiliki nilai non-NULL dalam kolom.

-- DISTINCT
SELECT DISTINCT kolom
FROM tabel;
-- Memilih kolom unik dari tabel, menghapus duplikat hasil.

-- UNION
SELECT kolom
FROM tabel1
UNION
SELECT kolom
FROM tabel2;
-- Menggabungkan hasil dari dua query SELECT menjadi satu, menghapus duplikat hasil.

-- EXISTS
SELECT kolom
FROM tabel1
WHERE EXISTS (SELECT kolom FROM tabel2 WHERE kondisi);
-- Memilih kolom dari tabel1 dengan memeriksa keberadaan baris yang memenuhi kondisi tertentu dalam tabel2.

-- AS
SELECT kolom AS alias
FROM tabel;
-- Memilih kolom dari tabel dengan memberikan alias pada kolom tersebut.

-- CONCAT
SELECT CONCAT(kolom1, ' ', kolom2) AS gabungan
FROM tabel;
-- Menggabungkan nilai dari kolom1 dan kolom2, dan memberikan alias pada kolom gabungan.

-- DATE
SELECT DATE(kolom) AS tanggal
FROM tabel;
-- Mengambil tanggal dari kolom yang memiliki tipe data tanggal/waktu.

-- DATE_FORMAT
SELECT DATE_FORMAT(kolom, 'format') AS tanggal_format
FROM tabel;
-- Memformat tampilan tanggal/waktu dalam kolom sesuai dengan format yang ditentukan.

-- CASE
SELECT kolom,
  CASE
    WHEN kondisi1 THEN nilai1
    WHEN kondisi2 THEN nilai2
    ELSE nilai_default
  END AS kolom_baru
FROM tabel;
-- Membuat ekspresi bersyarat dalam query dengan menggunakan CASE, menghasilkan nilai baru pada kolom_baru.

-- UPPER/LOWER
SELECT UPPER(teks) AS teks_upper
FROM tabel;
-- Mengubah teks menjadi huruf kapital (UPPER) dan memberikan alias pada kolom teks_upper.

-- ROUND
SELECT ROUND(kolom, jumlah_desimal) AS bulatkan
FROM tabel;
-- Membulatkan nilai numerik dalam kolom menjadi jumlah_desimal tertentu dan memberikan alias pada kolom bulatkan.

-- LIMIT dengan OFFSET
SELECT kolom
FROM tabel
LIMIT jumlah_baris OFFSET posisi;
-- Memilih kolom dari tabel dengan membatasi jumlah baris yang ditampilkan, dimulai dari posisi tertentu.

-- TRUNCATE
SELECT TRUNCATE(angka, jumlah_desimal) AS hasil
FROM tabel;
-- Memangkas (menghapus) nilai desimal dari angka dan memberikan alias pada kolom hasil.

-- ALL/ANY
SELECT kolom
FROM tabel
WHERE kolom > ALL (SELECT kolom FROM tabel2);
-- Memilih kolom dari tabel dengan membandingkan nilai dengan semua (ALL) nilai dalam subquery dan menghasilkan nilai yang memenuhi kondisi.

-- EXISTS/NOT EXISTS
SELECT kolom
FROM tabel
WHERE EXISTS (SELECT kolom FROM tabel2 WHERE kondisi);
-- Memilih kolom dari tabel dengan memeriksa keberadaan baris yang memenuhi kondisi tertentu dalam subquery.

-- JOIN dengan kondisi tambahan
SELECT t1.kolom1, t2.kolom2
FROM tabel1 t1
JOIN tabel2 t2 ON t1.kolom1 = t2.kolom2 AND t1.kolom3 = nilai;
-- Menggabungkan tabel1 dan tabel2 dengan menggunakan JOIN dan menambahkan kondisi tambahan dengan operator AND.

-- TRIGGER
CREATE TRIGGER nama_trigger
BEFORE INSERT ON nama_tabel
FOR EACH ROW
BEGIN
  -- Logika trigger
END;
-- Membuat trigger yang akan dipicu sebelum melakukan operasi INSERT pada tabel tertentu.

-- TRIM
SELECT TRIM(teks) AS teks_trimmed
FROM tabel;
-- Menghapus spasi tambahan dari awal dan akhir teks dan memberikan alias pada kolom teks_trimmed.

-- SUBSTRING
SELECT SUBSTRING(teks, start, length) AS potongan_teks
FROM tabel;
-- Mengambil potongan teks dari kolom, dimulai dari posisi start dan sepanjang length karakter, dan memberikan alias pada kolom potongan_teks.

-- COALESCE
SELECT COALESCE(kolom1, kolom2, nilai_default) AS hasil
FROM tabel;
-- Memilih nilai non-NULL dari kolom1 dan kolom2, dan jika keduanya NULL, memberikan nilai default pada kolom hasil.

-- CONCAT_WS
SELECT CONCAT_WS(' ', kolom1, kolom2) AS gabungan
FROM tabel;
-- Menggabungkan nilai dari kolom1 dan kolom2 dengan pemisah spasi, dan memberikan alias pada kolom gabungan.

-- DATE_ADD
SELECT DATE_ADD(tanggal, INTERVAL jumlah_unit unit) AS tanggal_baru
FROM tabel;
-- Menambahkan jumlah_unit unit (misalnya, DAY, MONTH, YEAR) ke tanggal dalam kolom dan memberikan alias pada kolom tanggal_baru.

-- DATE_SUB
SELECT DATE_SUB(tanggal, INTERVAL jumlah_unit unit) AS tanggal_baru
FROM tabel;
-- Mengurangi jumlah_unit unit (misalnya, DAY, MONTH, YEAR) dari tanggal dalam kolom dan memberikan alias pada kolom tanggal_baru.

-- LEFT JOIN
SELECT t1.kolom1, t2.kolom2
FROM tabel1 t1
LEFT JOIN tabel2 t2 ON t1.kolom = t2.kolom;
-- Melakukan LEFT JOIN antara tabel1 dan tabel2 berdasarkan kolom yang sesuai, dan memilih kolom1 dari tabel1 dan kolom2 dari tabel2.

-- RIGHT JOIN
SELECT t1.kolom1, t2.kolom2
FROM tabel1 t1
RIGHT JOIN tabel2 t2 ON t1.kolom = t2.kolom;
-- Melakukan RIGHT JOIN antara tabel1 dan tabel2 berdasarkan kolom yang sesuai, dan memilih kolom1 dari tabel1 dan kolom2 dari tabel2.

-- FULL JOIN
SELECT t1.kolom1, t2.kolom2
FROM tabel1 t1
FULL JOIN tabel2 t2 ON t1.kolom = t2.kolom;
-- Melakukan FULL JOIN antara tabel1 dan tabel2 berdasarkan kolom yang sesuai, dan memilih kolom1 dari tabel1 dan kolom2 dari tabel2.

-- CROSS JOIN
SELECT t1.kolom1, t2.kolom2
FROM tabel1 t1
CROSS JOIN tabel2 t2;
-- Melakukan CROSS JOIN antara tabel1 dan tabel2, menghasilkan gabungan setiap baris dari tabel1 dengan setiap baris dari tabel2, dan memilih kolom1 dari tabel1 dan kolom2 dari tabel2.

-- UNION ALL
SELECT kolom
FROM tabel1
UNION ALL
SELECT kolom
FROM tabel2;
-- Menggabungkan hasil dari dua query SELECT menjadi satu, termasuk duplikat hasil.

-- INSERT INTO SELECT
INSERT INTO tabel1 (kolom1, kolom2)
SELECT kolom1, kolom2
FROM tabel2;
-- Memasukkan data dari hasil query SELECT ke dalam tabel1 dengan memilih kolom1 dan kolom2 dari tabel2.

-- UPDATE dengan JOIN
UPDATE tabel1
JOIN tabel2 ON tabel1.kolom = tabel2.kolom
SET tabel1.kolom = nilai;
-- Memperbarui nilai dalam tabel1 berdasarkan JOIN dengan tabel2 berdasarkan kolom yang sesuai.

-- DELETE dengan JOIN
DELETE tabel1
FROM tabel1
JOIN tabel2 ON tabel1.kolom = tabel2.kolom;
-- Menghapus baris dari tabel1 berdasarkan JOIN dengan tabel2 berdasarkan kolom yang sesuai.

-- CREATE TABLE
CREATE TABLE nama_tabel (
  kolom1 tipe_data1,
  kolom2 tipe_data2,
  ...
);
-- Membuat tabel baru dengan nama_tabel dan mendefinisikan kolom-kolom dalam tabel beserta tipe data masing-masing kolom.

-- ALTER TABLE
ALTER TABLE nama_tabel
ADD kolom tipe_data;
-- Menambahkan kolom baru ke dalam tabel yang sudah ada.

-- DROP TABLE
DROP TABLE nama_tabel;
-- Menghapus tabel beserta semua data dan strukturnya dari database.

-- CREATE INDEX
CREATE INDEX nama_indeks
ON nama_tabel (kolom);
-- Membuat indeks pada kolom tertentu dalam tabel.

-- DROP INDEX
DROP INDEX nama_indeks
ON nama_tabel;
-- Menghapus indeks dari kolom tertentu dalam tabel.

-- CREATE FOREIGN KEY
ALTER TABLE tabel1
ADD CONSTRAINT fk_kolom
FOREIGN KEY (kolom)
REFERENCES tabel2 (kolom);
-- Membuatkunci asing (foreign key) antara tabel1 dan tabel2 dengan mengaitkan kolom tertentu dari tabel1 ke kolom tertentu dari tabel2.

-- DROP FOREIGN KEY
ALTER TABLE tabel1
DROP FOREIGN KEY fk_kolom;
-- Menghapus kunci asing (foreign key) dari tabel1 yang terkait dengan nama fk_kolom.

-- CREATE VIEW
CREATE VIEW nama_view AS
SELECT kolom1, kolom2
FROM tabel
WHERE kondisi;
-- Membuat view baru dengan nama_view yang akan menampilkan hasil query SELECT tertentu dari tabel berdasarkan kondisi.

-- DROP VIEW
DROP VIEW nama_view;
-- Menghapus view dengan nama_view dari database.

-- CREATE PROCEDURE:
CREATE PROCEDURE nama_prosedur
AS
BEGIN
  -- Logika prosedur
END;
--Query ini membuat prosedur tersimpan dengan nama_prosedur yang berisi logika prosedur tertentu.

-- EXECUTE
EXECUTE nama_prosedur;
--Query ini menjalankan prosedur tersimpan dengan nama_prosedur.  

-- GRANT
GRANT izin
ON tabel
TO pengguna;
-- Memberikan izin tertentu kepada pengguna untuk akses ke tabel.

-- REVOKE
REVOKE izin
ON tabel
FROM pengguna;
-- Mencabut izin tertentu dari pengguna untuk akses ke tabel.

-- COMMIT
COMMIT;
-- Melakukan komit transaksi yang sedang berlangsung, mengkonfirmasi perubahan yang dilakukan pada database.

-- ROLLBACK
ROLLBACK;
-- Membatalkan transaksi yang sedang berlangsung, mengembalikan database ke keadaan sebelum transaksi dimulai.

-- SAVEPOINT
SAVEPOINT nama_savepoint;
-- Membuat titik penyimpanan (savepoint) dengan nama_savepoint dalam transaksi yang sedang berlangsung.

-- RELEASE SAVEPOINT
RELEASE SAVEPOINT nama_savepoint;
-- Menghapus titik penyimpanan (savepoint) dengan nama_savepoint dalam transaksi yang sedang berlangsung.

-- SET TRANSACTION
SET TRANSACTION ISOLATION LEVEL level_isolasi;
-- Mengatur tingkat isolasi transaksi dalam database.

-- SHOW
SHOW TABLES;
-- Menampilkan daftar tabel yang ada dalam database.

-- DESCRIBE
DESCRIBE nama_tabel;
-- Menampilkan informasi mengenai struktur kolom dalam tabel.

-- EXPLAIN
EXPLAIN SELECT kolom1, kolom2
FROM tabel;
-- Menampilkan rencana eksekusi query SELECT, termasuk informasi mengenai penggunaan indeks dan metode akses data.

-- TRUNCATE TABLE
TRUNCATE TABLE nama_tabel;
-- Menghapus semua data dalam tabel dan mengembalikan tabel ke keadaan awal tanpa struktur yang berubah.

-- BACKUP
BACKUP DATABASE nama_database TO lokasi_backup;
-- Melakukan backup data dalam database dengan nama_database dan menyimpannya ke lokasi backup tertentu.

-- RESTORE
RESTORE DATABASE nama_database FROM lokasi_backup;
-- Mengembalikan database dengan nama_database dari backup yang ada di lokasi backup tertentu.

-- TUNING
-- Dalam pengembangan aplikasi, Anda dapat menggunakan teknik tuning database seperti melakukan indeksing yang tepat, mengoptimalkan query, dan mengatur konfigurasi database untuk meningkatkan performa dan efisiensi.

-- COMMENTS
-- Komentar digunakan untuk memberikan penjelasan pada kode SQL. Komentar dapat ditulis dengan menggunakan tanda "--" diikuti dengan teks komentar atau dengan menempatkannya antara "/*" dan "*/".

-- Contoh komentar:
-- Ini adalah komentar satu baris.

/*
Ini adalah
komentar
beberapa baris.
*/
