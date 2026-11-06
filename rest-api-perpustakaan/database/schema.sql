CREATE DATABASE IF NOT EXISTS perpustakaan;
USE perpustakaan;

CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(255) NOT NULL,
    penulis VARCHAR(255) NOT NULL,
    tahun INT NOT NULL,
    stok INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO books (id, judul, penulis, tahun, stok) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', 2005, 5),
(2, 'Bumi Manusia', 'Pramoedya Ananta Toer', 1980, 3)
ON DUPLICATE KEY UPDATE judul=judul;

-- Tambahan Tabel untuk Kategori di database/schema.sql
CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL UNIQUE,
    deskripsi TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Data awal kategori
INSERT INTO categories (nama, deskripsi) VALUES
('Fiksi', 'Buku-buku fiksi dan novel'),
('Non-Fiksi', 'Buku non-fiksi, sains, sejarah'),
('Teknologi', 'Buku tentang teknologi dan pemrograman');
