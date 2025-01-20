-- USE `board`;

-- SET FOREIGN_KEY_CHECKS = 0; -- 외래 키 체크 비활성화
-- TRUNCATE TABLE board.article; -- 테이블 데이터 삭제
-- SET FOREIGN_KEY_CHECKS = 1; -- 외래 키 체크 재활성화
-- TRUNCATE TABLE board.article_comment;
-- TRUNCATE TABLE board.article;
-- DELETE FROM board.article_comment;
-- DELETE FROM board.article;
-- DROP TABLE IF EXISTS article;
-- DROP TABLE IF EXISTS article_comment;

-- CREATE TABLE `article` (
--   `created_at` datetime(6) NOT NULL,
--   `id` bigint NOT NULL AUTO_INCREMENT,
--   `modified_at` datetime(6) NOT NULL,
--   `created_by` varchar(100) NOT NULL,
--   `content` varchar(10000) NOT NULL,
--   `hashtag` varchar(255) DEFAULT NULL,
--   `modified_by` varchar(255) NOT NULL,
--   `title` varchar(255) NOT NULL,
--   PRIMARY KEY (`id`),
--   KEY `IDX571gx7oqo5xpmgocegaidlcu9` (`title`),
--   KEY `IDXai44fu6vaa28ebpydglnv7t3e` (`hashtag`),
--   KEY `IDXrmt77yibijtk4sarremr67saa` (`created_at`),
--   KEY `IDXjl4utii2etiocimt799wvtuvv` (`created_by`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- CREATE TABLE `article_comment` (
--   `article_id` bigint NOT NULL,
--   `created_at` datetime(6) NOT NULL,
--   `id` bigint NOT NULL AUTO_INCREMENT,
--   `modified_at` datetime(6) NOT NULL,
--   `created_by` varchar(100) NOT NULL,
--   `content` varchar(500) NOT NULL,
--   `modified_by` varchar(255) NOT NULL,
--   PRIMARY KEY (`id`),
--   KEY `IDXpieqqnljv147sefofs56h25qx` (`content`),
--   KEY `IDXh1jx107qecntcbcpc2vfb07ij` (`created_at`),
--   KEY `IDXc6pa61djuf2o8xnceyyvtdbaq` (`created_by`),
--   KEY `FKghmocqkgqs5tkmucf5putw64t` (`article_id`),
--   CONSTRAINT `FKghmocqkgqs5tkmucf5putw64t` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-03 14:00:00', '2025-01-03 14:30:00', 'user3', 'Content for article 3', '#tag3', 'editor3', 'Article Title 3');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-04 15:00:00', '2025-01-04 15:30:00', 'user4', 'Content for article 4', '#tag4', 'editor4', 'Article Title 4');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-05 16:00:00', '2025-01-05 16:30:00', 'user5', 'Content for article 5', '#tag5', 'editor5', 'Article Title 5');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-06 17:00:00', '2025-01-06 17:30:00', 'user6', 'Content for article 6', '#tag6', 'editor6', 'Article Title 6');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-07 18:00:00', '2025-01-07 18:30:00', 'user7', 'Content for article 7', '#tag7', 'editor7', 'Article Title 7');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-08 19:00:00', '2025-01-08 19:30:00', 'user8', 'Content for article 8', '#tag8', 'editor8', 'Article Title 8');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-09 20:00:00', '2025-01-09 20:30:00', 'user9', 'Content for article 9', '#tag9', 'editor9', 'Article Title 9');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-10 21:00:00', '2025-01-10 21:30:00', 'user10', 'Content for article 10', '#tag10', 'editor10', 'Article Title 10');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-11 22:00:00', '2025-01-11 22:30:00', 'user11', 'Content for article 11', '#tag11', 'editor11', 'Article Title 11');

INSERT INTO `article` (`created_at`, `modified_at`, `created_by`, `content`, `hashtag`, `modified_by`, `title`) 
VALUES ('2025-01-12 23:00:00', '2025-01-12 23:30:00', 'user12', 'Content for article 12', '#tag12', 'editor12', 'Article Title 12');

INSERT INTO `article_comment` (`article_id`, `created_at`, `modified_at`, `created_by`, `content`, `modified_by`) 
VALUES (1, '2025-01-01 12:15:00', '2025-01-01 12:45:00', 'commenter1', 'Great article!', 'editor1');

INSERT INTO `article_comment` (`article_id`, `created_at`, `modified_at`, `created_by`, `content`, `modified_by`) 
VALUES (1, '2025-01-01 12:20:00', '2025-01-01 12:50:00', 'commenter2', 'I agree, very informative!', 'editor2');

INSERT INTO `article_comment` (`article_id`, `created_at`, `modified_at`, `created_by`, `content`, `modified_by`) 
VALUES (2, '2025-01-02 13:15:00', '2025-01-02 13:45:00', 'commenter3', 'Nice read!', 'editor3');

INSERT INTO `article_comment` (`article_id`, `created_at`, `modified_at`, `created_by`, `content`, `modified_by`) 
VALUES (2, '2025-01-02 13:20:00', '2025-01-02 13:50:00', 'commenter4', 'Good job, keep it up!', 'editor4');

INSERT INTO `article_comment` (`article_id`, `created_at`, `modified_at`, `created_by`, `content`, `modified_by`) 
VALUES (3, '2025-01-03 14:15:00', '2025-01-03 14:45:00', 'commenter5', 'Very helpful information.', 'editor5');

INSERT INTO `article_comment` (`article_id`, `created_at`, `modified_at`, `created_by`, `content`, `modified_by`) 
VALUES (3, '2025-01-03 14:20:00', '2025-01-03 14:50:00', 'commenter6', 'Nice perspective, thanks for sharing!', 'editor6');

INSERT INTO `article_comment` (`article_id`, `created_at`, `modified_at`, `created_by`, `content`, `modified_by`) 
VALUES (4, '2025-01-04 15:15:00', '2025-01-04 15:45:00', 'commenter7', 'Insightful post!', 'editor7');

INSERT INTO `article_comment` (`article_id`, `created_at`, `modified_at`, `created_by`, `content`, `modified_by`) 
VALUES (4, '2025-01-04 15:20:00', '2025-01-04 15:50:00', 'commenter8', 'Great content, really enjoyed it.', 'editor8');