# Database Project for Class G

## Description
This project is created to fulfill the Database Project assignment by Group 8. We implemented a database system for "LaborNCS" using MySQL.

## Group Members
- Sandrina Novita Sari (4523210101)
- M Akbar Ramadhan (4523210132)

### Supervisor
Adi Wahyu Pribadi, S.Si., M.Kom

### Study Program
Bachelor of Informatics Engineering, Universitas Pancasila, Academic Year 2024/2025

---

## Features
- * Student Management*: 
- * Lab Assistant Management*: 
- * Subject Management*: 
- * Laboratory Room Management*: 
- * Course Schedule Management*: 


## Database Setup

### STEP 1: Create the Database
```sql
CREATE DATABASE laborNCS CHARACTER SET utf8 COLLATE utf8_general_ci;
```


### STEP 2: Create Tables

#### Student Table (Mahasiswa)
```sql
CREATE TABLE Mahasiswa (
    id_mhs int NOT NULL PRIMARY KEY,
    nama_mhs varchar(100),
    npm_mhs bigint,
    semester int,
    angkatan_mhs int,
    kontak_mhs bigint
    );
```


#### Lab Assistant Table (AsistenPraktikum)
```sql
CREATE TABLE AsistenPraktikum (
    id_asprak int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama_asprak varchar(100),
    npm_asprak bigint,
    email_asprak varchar(100),
    kontak_asprak bigint
    );
```


#### Subject Table (Matakuliah)
```sql
CREATE TABLE Matakuliah (
    id_matkul int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama_matkul varchar(100),
    sks_matkul int,
    dosen_matkul varchar(100)
);
```


#### Laboratory Room Table (RuangLabor)
```sql
CREATE TABLE RuangLabor (
    id_labor int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomer_monitor int,
    status_monitor varchar(100) DEFAULT 'Tersedia',
    keterangan text
    );
```


#### Course Schedule Table (JadwalKuliah)
```sql
CREATE TABLE JadwalKuliah (
    id_jadwal int AUTO_INCREMENT PRIMARY KEY,
    id_mhs int NOT NULL,
    id_asprak int NOT NULL,
    id_matkul int NOT NULL,
    id_labor int NOT NULL,
    hari_pemakaian varchar(100) NOT NULL,
    tanggal_pemakaian date,
    jam_mulai time NOT NULL,
    jam_selesai time NOT NULL,
    FOREIGN KEY (id_mhs) REFERENCES mahasiswa(id_mhs) ON DELETE CASCADE,
    FOREIGN KEY (id_asprak) REFERENCES asistenpraktikum(id_asprak) ON DELETE CASCADE,
    FOREIGN KEY (id_matkul) REFERENCES matakuliah(id_matkul) ON DELETE CASCADE,
    FOREIGN KEY (id_labor) REFERENCES ruanglabor(id_labor) ON DELETE CASCADE
) ENGINE=INNODB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
 ```


---
```
## STEP 3: Input 20 Rows Data Master

### Student Table (Mahasiswa)
```sql
INSERT INTO mahasiswa(id_mhs, nama_mhs, npm_mhs, Semester, angkatan_mhs, kontak_mhs) VALUES 
(01,'M Akbar Ramadhan',4523210132,3,2023,083196390884),
(02,'Sandrina Novitasari',4523210101,3,2023,085174271126),
(03,'Fahran Maulana',4523210044,3,2023,081282047377),
(04,'Firdaus Fatan',4523210049,3,2023,081380040356),
(05,'Handra Putra Alma',4523210053,3,2023,085155032911),
(06,'Ramzy Syah Khalifah',4523210089,3,2023,081806694772),
(07,'Hilya Najwa',4523210112,3,2023,082283209672),
(08,'Muhammad Abiyu Muflih',4523210124,3,2023,085767241273),
(09,'Alifia Wenny',4523210126,3,2023,0881024144328),
(10,'Hany Nadya',4523210128,3,2023,081386382210),
(11,'Evelyn Ade Oktalia',4524210031,1,2024,085244910026),
(12,'Kornelius Timoty',4524210050,1,2024,083100196722),
(13,'Ririn Verdawati',4524210090,1,2024,081266610281),
(14,'Syalva Kirania',4524210101,1,2024,085200129910),
(15,'Reno Budiman',4524210124,1,2024,08821567721),
(16,'Moreno Renaldy',4519210115,11,2019,081164555801),
(17,'Hyza Proteus',4520210101,9,2020,08520661910),
(18,'Ken Farabi',4521210002,7,2021,082210899251),
(19,'Vina Aisyah',4522210066,5,2022,081106743821),
(20,'Aulia Zahra Sabila',4522210132,5,2022,081314585984);
```



### Lab Assistant (asistenpraktikum)
```sql
INSERT INTO asistenpraktikum(nama_asprak, npm_asprak, email_asprak, kontak_asprak) VALUES
('Apriani Simamora', '4522210150', 'kakapri121@gmail.com', '082272139443),
('Fairuz Salma Zahfirah', '4521210037', 'fairuzsalma34@gmail.com', '083427112578'),
('Adam Fabio Segara Kaze', '4522210094', 'kazeadam37@gmail.com', '081283627755'),
('Kevin Raihan Hidayat', '4521210025', 'kevinraihan77@gmail.com', '085889461610'),
('Muhammad Azhar Rabbani', '4522210098', 'azharrabbani356@gmail.com', '081293140270'),
('Muhammad Hakim', '4522210092', 'hakimceyda85@gmail.com', '082153024003'),
('Imam Zuhdi Muzakkiy', '4521210010', 'zuhdimuzakkiy28@gmail.com', '0881011517507'),
('Kelfin Antonius', '4521210018', 'antoniuskelfin94@gmail.com', '081381130682'),
('Dhandi Adam', '4522210147', 'dhandiadam64@gmail.com', '081319240256'),
('Siti Ghumaisa', '4522210131', 'ghumaisasiti93@gmail.com', '087882546724'),
('Sulthan Rafi', '4521210065', 'rafisulthan437@gmail.com', '085157986833'),
('Antonius Valentino Dharma Kusuma', '4522210109', 'valentinodharma73@gmail.com', '087887713678'),
('Panca Purnama Adhiputra', '4521210040', 'purnamapanca36@gmail.com', '089698338654'),
('Ardian Dwi Herlambang', '4521210029', 'ardianherlambang43@gmail.com', '085144852538'),
('Afrialdy Syaputra', '4521210041', 'afrialdysyaputra27@gmail.com', '085136784467'),
('Afiyah Nabila Putri', '4522120096', 'nabilaputri89@gmail.com', '081315340712'),
('Alyshia Cagivani Yasmin', '4523210011', 'alyshiayasmin45@gmail.com', '081212186462'),
('Rodiah Alaydrus', '4523210098', 'rodiahalaydrus34@gmail.com', '087887017444'),
('Zahra Tsabitah', '4523210145', 'zahratsabitah96@gmail.com', '089621239559'),
('Irmawati Pakpahan', '4523210054', 'irma98@gmail.com', '087897972517');
```


### Subject (matakuliah)
```sql
INSERT INTO matakuliah(id_matkul, nama_matkul, sks_matkul, dosen_matkul) VALUES 
(101,'Algoritma Pemrograman',3,'Dra. Sri Rezeki Candra M.Kom'),
(102,'Algoritma Struktur Data',3,'Dra. Sri Rezeki Candra M.Kom'),
(103,'Basis Data',3,'Dr.Ir.Iman Paryudi M.sc'),
(104,'Desain Web',2,'Adi Wahyu Pribadi M.Kom'),
(105,'Pemrograman Berbasis Objek',3,'Bambang Riono S.Kom, M.M.SI'),
(106,'Komunikasi Data',2,'Dr. Ainil Syafitri S.T M.T'),
(107,'Intelligent System',3,'Ninuk Williani S.Si,M.Kom'),
(108,'Pemrograman Paralel',2,'Amir Murtako S.Kom M.Kom'),
(109,'Jaringan Komputer',3,'Adi Wahyu Pribadi M.Kom'),
(110,'Pemrograman Berbasis Web',3,'Bambang Riono S.Kom M.M.SI'),
(111,'Keamanan Teknologi Informasi',2,'Sattar Irawan S.Kom, M.T.I'),
(112,'Computer Vision',3,'Amir Murtako S.Kom M.Kom'),
(113,'Metodologi Penelitian',3,'Dr.Ir.Iman Paryudi M.sc'),
(114,'Sistem Pendukung Keputusan',2,'Ninuk Williani S.Si,M.Kom'),
(115,'Multimedia',3,'Bambang Riono S.Kom M.M.SI'),
(116,'Sistem Kecerdasan Bisnis',3,'Dr.Ir.Iman Paryudi M.sc'),
(117,'Pemrograman Berbasis Mobile',3,'Adi Wahyu Pribadi M.Kom'),
(118,'Komputer Grafik',3,'Amir Murtako S.Kom M.Kom'),
(119,'Desain Analisis Algoritma',3,'Dr. Ionia Veritawati S.Si, M.T'),
(120,'Secure Programming',3,'Gregorius Hendita S.Si, M.Cs')
```

### Course Schedule (Ruanglabor)
```sql
(101, 1, 'Tidak Tersedia', 'Digunakan Asprak'),
(102, 2, 'Tidak Tersedia', 'Digunakan Asprak'),
(103, 3, 'Tersedia', 'Hanya Tersedia Visual Studio Code'),
(104, 4, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(105, 5, 'Tersedia', 'Belum Terinstal JDK Java'),
(106, 6, 'Tersedia', 'Tersedia Semua Aplikasi'),
(107, 7, 'Tersedia', 'Tersedia Semua Aplikasi'),
(108, 8, 'Tersedia', 'Tersedia Semua Aplikasi'),
(109, 9, 'Tersedia', 'Hanya Tersedia Visual Studio Code'),
(110, 10, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(111, 11, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(112, 12, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(113, 13, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(114, 14, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(115, 15, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(116, 16, 'Tersedia', 'Belum Terinstal JDK Java'),
(117, 17, 'Tersedia', 'Belum Terinstal JDK Java'),
(118, 18, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(119, 19, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(120, 20, 'Tidak Tersedia', 'Digunakan Mahasiswa');
```

### Course Schedule (Jadwalkuliah)
```sql
INSERT INTO jadwalkuliah(id_jadwal, id_mhs, id_asprak, id_matkul, id_labor, hari_pemakaian, tanggal_pemakaian, jam_mulai, jam_selesai) 
VALUES 
(1, 1, 1, 113, 106, 'Senin', '2024-02-12', '08:00', '10:00'),
(2, 2, 7, 105, 108, 'Selasa', '2024-02-13', '10:00', '12:00'),
(3, 3, 20, 120, 104, 'Rabu', '2024-02-14', '13:00', '15:00'),
(4, 4, 13, 107, 107, 'Kamis', '2024-02-15', '08:00', '11:00'),
(5, 5, 19, 103, 119, 'Jumat', '2024-02-16', '14:00', '16:00'),
(6, 6, 5, 111, 103, 'Sabtu', '2024-02-17', '08:00', '10:00'),
(7, 7, 9, 108, 116, 'Senin', '2024-02-19', '10:00', '12:00'),
(8, 8, 2, 102, 105, 'Selasa', '2024-02-20', '13:00', '15:00'),
(9, 9, 18, 114, 108, 'Rabu', '2024-02-21', '09:00', '11:00'),
(10, 10, 6, 109, 115, 'Kamis', '2024-02-22', '14:00', '16:00'),
(11, 11, 11, 101, 112, 'Jumat', '2024-02-23', '08:00', '10:00'),
(12, 12, 15, 115, 102, 'Sabtu', '2024-02-24', '10:00', '12:00'),
(13, 13, 10, 119, 110, 'Senin', '2024-02-26', '13:00', '15:00'),
(14, 14, 3, 116, 120, 'Selasa', '2024-02-27', '09:00', '11:00'),
(15, 15, 17, 106, 114, 'Rabu', '2024-02-28', '14:00', '16:00'),
(16, 16, 12, 104, 118, 'Kamis', '2024-03-01', '08:00', '10:00'),
(17, 17, 14, 110, 117, 'Jumat', '2024-03-02', '10:00', '12:00'),
(18, 18, 4, 118, 120, 'Sabtu', '2024-03-03', '13:00', '15:00'),
(19, 19, 16, 112, 102, 'Senin', '2024-03-04', '09:00', '11:00'),
(20, 20, 8, 117, 115, 'Selasa', '2024-03-05', '14:00', '16:00');
```



## STEP 4: Implementation Transaction
### Atomicity (Commit & Rollback
```sql
START TRANSACTION;
INSERT INTO JadwalKuliah (id_jadwal, id_mhs, id_asprak, id_matkul, id_labor, hari_pemakaian, tanggal_pemakaian, jam_mulai, jam_selesai) VALUES 
(21, 3, 1, 105, 109, 'Rabu', '2024-03-06', '08:00', '10:30');
INSERT INTO JadwalKuliah (id_jadwal, id_mhs, id_asprak, id_matkul, id_labor, hari_pemakaian, tanggal_pemakaian, jam_mulai, jam_selesai) VALUES 
(22, 19, 3, 102, 105, 'Kamis', '2024-03-07', '13:00', '15:00');
COMMIT;
```
```sql
START TRANSACTION;

DELETE FROM JadwalKuliah WHERE id_jadwal = 21;
DELETE FROM JadwalKuliah WHERE id_jadwal = 22;

ROLLBACK;

### Consistency Invalid User
sql
START TRANSACTION;
UPDATE jadwalkuliah SET id_matkul = NULL
WHERE id_mhs = 1;
COMMIT;

SELECT * FROM jadwalkuliah;
```

### Isolation
```sql
START TRANSACTION;
UPDATE jadwalkuliah 
SET jam_mulai = ADDTIME(jam_mulai, '01:00:00') WHERE id_jadwal = 21;

SELECT * FROM jadwalkuliah WHERE id_jadwal = 21 FOR UPDATE;
UPDATE jadwalkuliah 
SET jam_selesai = ADDTIME(jam_selesai, '01:30:00') WHERE id_jadwal = 21;
SELECT * FROM jadwalkuliah WHERE id_jadwal = 21 FOR UPDATE; 

COMMIT;
```

## Buatkan skenario apabila ada kesalahan maka seluruh transaksi batal
```sql
START TRANSACTION; 
DECLARE EXIT HANDLER FOR SQLEXCEPTION 
BEGIN
    ROLLBACK; 
    SELECT 'Tidak dapat diperbarui.' AS Error_Message;
END; 
UPDATE jadwalkuliah SET jam_selesai = (jam_selesai, '01:30:00') WHERE id_jadwal = 22; 
UPDATE jadwalkuliah SET jam_mulai = NULL WHERE id_jadwal = 22; 

COMMIT;
```
