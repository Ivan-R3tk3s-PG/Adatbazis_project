CREATE TABLE `termek`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nev` VARCHAR(255) NOT NULL,
    `tartalom_id` BIGINT UNSIGNED NOT NULL,
    `beszallito_id` BIGINT UNSIGNED NOT NULL,
    `keszlet_id` BIGINT UNSIGNED NOT NULL
);
CREATE TABLE `beszallito`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nev` VARCHAR(255) NOT NULL,
    `helyszin` VARCHAR(255) NOT NULL,
    `miota` DATETIME NOT NULL
);
CREATE TABLE `tartalom`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `gramm` BIGINT UNSIGNED NOT NULL,
    `gluten_free` BOOLEAN NOT NULL,
    `tojas_free` BOOLEAN NOT NULL,
    `allat_free` BOOLEAN NOT NULL,
    `noveny_free` BOOLEAN NOT NULL
);
CREATE TABLE `keszlet`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `db` BIGINT UNSIGNED NOT NULL
);
ALTER TABLE
    `termek` ADD CONSTRAINT `termek_keszlet_id_foreign` FOREIGN KEY(`keszlet_id`) REFERENCES `keszlet`(`id`);
ALTER TABLE
    `termek` ADD CONSTRAINT `termek_beszallito_id_foreign` FOREIGN KEY(`beszallito_id`) REFERENCES `beszallito`(`id`);
ALTER TABLE
    `termek` ADD CONSTRAINT `termek_tartalom_id_foreign` FOREIGN KEY(`tartalom_id`) REFERENCES `tartalom`(`id`);