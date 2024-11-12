/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : e_office

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 12/11/2024 18:54:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_logs
-- ----------------------------
DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE `activity_logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 632 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_logs
-- ----------------------------
INSERT INTO `activity_logs` VALUES (200, 'create', '1', 'User  Masuk ke LogActivity.', '2024-11-10 15:00:55', '2024-11-10 15:00:55');
INSERT INTO `activity_logs` VALUES (201, 'create', '1', 'User  Masuk ke LogActivity.', '2024-11-10 15:06:15', '2024-11-10 15:06:15');
INSERT INTO `activity_logs` VALUES (202, 'create', '1', 'User  Masuk ke LogActivity.', '2024-11-10 15:07:15', '2024-11-10 15:07:15');
INSERT INTO `activity_logs` VALUES (203, 'create', '1', 'User  Masuk ke LogActivity.', '2024-11-10 15:08:06', '2024-11-10 15:08:06');
INSERT INTO `activity_logs` VALUES (204, 'create', '1', 'User  Masuk ke LogActivity.', '2024-11-10 15:08:24', '2024-11-10 15:08:24');
INSERT INTO `activity_logs` VALUES (205, 'create', '2', 'User  Masuk Ke Dashboard.', '2024-11-10 15:09:49', '2024-11-10 15:09:49');
INSERT INTO `activity_logs` VALUES (206, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-10 15:10:23', '2024-11-10 15:10:23');
INSERT INTO `activity_logs` VALUES (207, 'create', '2', 'User  Masuk Ke Dashboard.', '2024-11-10 15:14:37', '2024-11-10 15:14:37');
INSERT INTO `activity_logs` VALUES (208, 'create', NULL, 'User  Masuk Ke Dashboard.', '2024-11-11 01:14:35', '2024-11-11 01:14:35');
INSERT INTO `activity_logs` VALUES (209, 'create', NULL, 'User  Masuk Ke Dashboard.', '2024-11-11 05:36:05', '2024-11-11 05:36:05');
INSERT INTO `activity_logs` VALUES (210, 'create', NULL, 'User  Masuk Ke Dashboard.', '2024-11-11 05:47:30', '2024-11-11 05:47:30');
INSERT INTO `activity_logs` VALUES (211, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 05:47:35', '2024-11-11 05:47:35');
INSERT INTO `activity_logs` VALUES (212, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 05:48:50', '2024-11-11 05:48:50');
INSERT INTO `activity_logs` VALUES (213, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 05:49:01', '2024-11-11 05:49:01');
INSERT INTO `activity_logs` VALUES (214, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 05:49:17', '2024-11-11 05:49:17');
INSERT INTO `activity_logs` VALUES (215, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 05:49:24', '2024-11-11 05:49:24');
INSERT INTO `activity_logs` VALUES (216, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 05:49:29', '2024-11-11 05:49:29');
INSERT INTO `activity_logs` VALUES (217, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 06:07:21', '2024-11-11 06:07:21');
INSERT INTO `activity_logs` VALUES (218, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 06:07:39', '2024-11-11 06:07:39');
INSERT INTO `activity_logs` VALUES (219, 'create', NULL, 'User Membuat Folder.', '2024-11-11 06:07:48', '2024-11-11 06:07:48');
INSERT INTO `activity_logs` VALUES (220, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 06:08:15', '2024-11-11 06:08:15');
INSERT INTO `activity_logs` VALUES (221, 'create', NULL, 'User Membuat Folder.', '2024-11-11 06:08:21', '2024-11-11 06:08:21');
INSERT INTO `activity_logs` VALUES (222, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 06:09:05', '2024-11-11 06:09:05');
INSERT INTO `activity_logs` VALUES (223, 'create', NULL, 'User Membuat Folder.', '2024-11-11 06:09:14', '2024-11-11 06:09:14');
INSERT INTO `activity_logs` VALUES (224, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 06:09:14', '2024-11-11 06:09:14');
INSERT INTO `activity_logs` VALUES (225, 'create', NULL, 'User Membuat Folder.', '2024-11-11 06:09:21', '2024-11-11 06:09:21');
INSERT INTO `activity_logs` VALUES (226, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 06:09:21', '2024-11-11 06:09:21');
INSERT INTO `activity_logs` VALUES (227, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 06:16:33', '2024-11-11 06:16:33');
INSERT INTO `activity_logs` VALUES (228, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:23:32', '2024-11-11 06:23:32');
INSERT INTO `activity_logs` VALUES (229, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:24:02', '2024-11-11 06:24:02');
INSERT INTO `activity_logs` VALUES (230, 'create', NULL, 'User Menghapus Folder.', '2024-11-11 06:24:07', '2024-11-11 06:24:07');
INSERT INTO `activity_logs` VALUES (231, 'create', NULL, 'User Menghapus Folder.', '2024-11-11 06:24:35', '2024-11-11 06:24:35');
INSERT INTO `activity_logs` VALUES (232, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:24:42', '2024-11-11 06:24:42');
INSERT INTO `activity_logs` VALUES (233, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:24:52', '2024-11-11 06:24:52');
INSERT INTO `activity_logs` VALUES (234, 'create', NULL, 'User Menghapus Folder.', '2024-11-11 06:24:56', '2024-11-11 06:24:56');
INSERT INTO `activity_logs` VALUES (235, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:24:56', '2024-11-11 06:24:56');
INSERT INTO `activity_logs` VALUES (236, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:29:00', '2024-11-11 06:29:00');
INSERT INTO `activity_logs` VALUES (237, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:29:24', '2024-11-11 06:29:24');
INSERT INTO `activity_logs` VALUES (238, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:30:43', '2024-11-11 06:30:43');
INSERT INTO `activity_logs` VALUES (239, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:32:57', '2024-11-11 06:32:57');
INSERT INTO `activity_logs` VALUES (240, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:33:48', '2024-11-11 06:33:48');
INSERT INTO `activity_logs` VALUES (241, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:34:53', '2024-11-11 06:34:53');
INSERT INTO `activity_logs` VALUES (242, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:35:13', '2024-11-11 06:35:13');
INSERT INTO `activity_logs` VALUES (243, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:38:46', '2024-11-11 06:38:46');
INSERT INTO `activity_logs` VALUES (244, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:39:24', '2024-11-11 06:39:24');
INSERT INTO `activity_logs` VALUES (245, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:39:38', '2024-11-11 06:39:38');
INSERT INTO `activity_logs` VALUES (246, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:39:42', '2024-11-11 06:39:42');
INSERT INTO `activity_logs` VALUES (247, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:40:27', '2024-11-11 06:40:27');
INSERT INTO `activity_logs` VALUES (248, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:40:55', '2024-11-11 06:40:55');
INSERT INTO `activity_logs` VALUES (249, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:42:20', '2024-11-11 06:42:20');
INSERT INTO `activity_logs` VALUES (250, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:42:23', '2024-11-11 06:42:23');
INSERT INTO `activity_logs` VALUES (251, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:44:03', '2024-11-11 06:44:03');
INSERT INTO `activity_logs` VALUES (252, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:44:06', '2024-11-11 06:44:06');
INSERT INTO `activity_logs` VALUES (253, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:46:00', '2024-11-11 06:46:00');
INSERT INTO `activity_logs` VALUES (254, 'create', NULL, 'User Menghapus Folder.', '2024-11-11 06:46:04', '2024-11-11 06:46:04');
INSERT INTO `activity_logs` VALUES (255, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:46:04', '2024-11-11 06:46:04');
INSERT INTO `activity_logs` VALUES (256, 'create', NULL, 'User Menghapus Folder.', '2024-11-11 06:46:08', '2024-11-11 06:46:08');
INSERT INTO `activity_logs` VALUES (257, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:46:08', '2024-11-11 06:46:08');
INSERT INTO `activity_logs` VALUES (258, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:46:18', '2024-11-11 06:46:18');
INSERT INTO `activity_logs` VALUES (259, 'create', NULL, 'User Melihat Folder.', '2024-11-11 06:46:37', '2024-11-11 06:46:37');
INSERT INTO `activity_logs` VALUES (260, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 11:54:38', '2024-11-11 11:54:38');
INSERT INTO `activity_logs` VALUES (261, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 12:06:20', '2024-11-11 12:06:20');
INSERT INTO `activity_logs` VALUES (262, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 12:07:04', '2024-11-11 12:07:04');
INSERT INTO `activity_logs` VALUES (263, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 12:10:51', '2024-11-11 12:10:51');
INSERT INTO `activity_logs` VALUES (264, 'create', NULL, 'User Masuk ke Folder.', '2024-11-11 12:11:28', '2024-11-11 12:11:28');
INSERT INTO `activity_logs` VALUES (265, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-11 12:13:42', '2024-11-11 12:13:42');
INSERT INTO `activity_logs` VALUES (266, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:34:43', '2024-11-11 12:34:43');
INSERT INTO `activity_logs` VALUES (267, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:35:19', '2024-11-11 12:35:19');
INSERT INTO `activity_logs` VALUES (268, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:35:47', '2024-11-11 12:35:47');
INSERT INTO `activity_logs` VALUES (269, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:36:10', '2024-11-11 12:36:10');
INSERT INTO `activity_logs` VALUES (270, 'create', '1', 'User Membuat Pengajuan Cuti.', '2024-11-11 12:36:27', '2024-11-11 12:36:27');
INSERT INTO `activity_logs` VALUES (271, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:36:27', '2024-11-11 12:36:27');
INSERT INTO `activity_logs` VALUES (272, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:37:24', '2024-11-11 12:37:24');
INSERT INTO `activity_logs` VALUES (273, 'create', '1', 'User Membuat Pengajuan Cuti.', '2024-11-11 12:37:33', '2024-11-11 12:37:33');
INSERT INTO `activity_logs` VALUES (274, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:37:33', '2024-11-11 12:37:33');
INSERT INTO `activity_logs` VALUES (275, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:37:55', '2024-11-11 12:37:55');
INSERT INTO `activity_logs` VALUES (276, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:38:03', '2024-11-11 12:38:03');
INSERT INTO `activity_logs` VALUES (277, 'create', '1', 'User Membuat Pengajuan Cuti.', '2024-11-11 12:38:12', '2024-11-11 12:38:12');
INSERT INTO `activity_logs` VALUES (278, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:38:12', '2024-11-11 12:38:12');
INSERT INTO `activity_logs` VALUES (279, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:39:37', '2024-11-11 12:39:37');
INSERT INTO `activity_logs` VALUES (280, 'create', '1', 'User Membuat Pengajuan Cuti.', '2024-11-11 12:39:55', '2024-11-11 12:39:55');
INSERT INTO `activity_logs` VALUES (281, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:39:55', '2024-11-11 12:39:55');
INSERT INTO `activity_logs` VALUES (282, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:40:19', '2024-11-11 12:40:19');
INSERT INTO `activity_logs` VALUES (283, 'create', '1', 'User  Masuk ke Surat.', '2024-11-11 12:42:38', '2024-11-11 12:42:38');
INSERT INTO `activity_logs` VALUES (284, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-11 12:42:43', '2024-11-11 12:42:43');
INSERT INTO `activity_logs` VALUES (285, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-11 12:42:47', '2024-11-11 12:42:47');
INSERT INTO `activity_logs` VALUES (286, 'create', '1', 'User Masuk ke Folder.', '2024-11-11 12:44:21', '2024-11-11 12:44:21');
INSERT INTO `activity_logs` VALUES (287, 'create', '1', 'User Masuk ke Folder.', '2024-11-11 12:44:40', '2024-11-11 12:44:40');
INSERT INTO `activity_logs` VALUES (288, 'create', '1', 'User Melihat Folder.', '2024-11-11 12:44:45', '2024-11-11 12:44:45');
INSERT INTO `activity_logs` VALUES (289, 'create', '1', 'User Melihat Folder.', '2024-11-11 12:45:37', '2024-11-11 12:45:37');
INSERT INTO `activity_logs` VALUES (290, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:45:42', '2024-11-11 12:45:42');
INSERT INTO `activity_logs` VALUES (291, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:46:06', '2024-11-11 12:46:06');
INSERT INTO `activity_logs` VALUES (292, 'create', '1', 'User Menghapus Pengajuan Cuti.', '2024-11-11 12:46:16', '2024-11-11 12:46:16');
INSERT INTO `activity_logs` VALUES (293, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:46:16', '2024-11-11 12:46:16');
INSERT INTO `activity_logs` VALUES (294, 'create', '1', 'User Membuat Pengajuan Cuti.', '2024-11-11 12:46:28', '2024-11-11 12:46:28');
INSERT INTO `activity_logs` VALUES (295, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:46:28', '2024-11-11 12:46:28');
INSERT INTO `activity_logs` VALUES (296, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:51:25', '2024-11-11 12:51:25');
INSERT INTO `activity_logs` VALUES (297, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:51:44', '2024-11-11 12:51:44');
INSERT INTO `activity_logs` VALUES (298, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:52:54', '2024-11-11 12:52:54');
INSERT INTO `activity_logs` VALUES (299, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:54:16', '2024-11-11 12:54:16');
INSERT INTO `activity_logs` VALUES (300, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:55:38', '2024-11-11 12:55:38');
INSERT INTO `activity_logs` VALUES (301, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:56:03', '2024-11-11 12:56:03');
INSERT INTO `activity_logs` VALUES (302, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:56:26', '2024-11-11 12:56:26');
INSERT INTO `activity_logs` VALUES (303, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:56:48', '2024-11-11 12:56:48');
INSERT INTO `activity_logs` VALUES (304, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:56:58', '2024-11-11 12:56:58');
INSERT INTO `activity_logs` VALUES (305, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:57:25', '2024-11-11 12:57:25');
INSERT INTO `activity_logs` VALUES (306, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:57:33', '2024-11-11 12:57:33');
INSERT INTO `activity_logs` VALUES (307, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:57:51', '2024-11-11 12:57:51');
INSERT INTO `activity_logs` VALUES (308, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 12:57:59', '2024-11-11 12:57:59');
INSERT INTO `activity_logs` VALUES (309, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:00:44', '2024-11-11 13:00:44');
INSERT INTO `activity_logs` VALUES (310, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:01:13', '2024-11-11 13:01:13');
INSERT INTO `activity_logs` VALUES (311, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:01:18', '2024-11-11 13:01:18');
INSERT INTO `activity_logs` VALUES (312, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:01:22', '2024-11-11 13:01:22');
INSERT INTO `activity_logs` VALUES (313, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:22:21', '2024-11-11 13:22:21');
INSERT INTO `activity_logs` VALUES (314, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:22:39', '2024-11-11 13:22:39');
INSERT INTO `activity_logs` VALUES (315, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:23:00', '2024-11-11 13:23:00');
INSERT INTO `activity_logs` VALUES (316, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:23:08', '2024-11-11 13:23:08');
INSERT INTO `activity_logs` VALUES (317, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:23:12', '2024-11-11 13:23:12');
INSERT INTO `activity_logs` VALUES (318, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:25:17', '2024-11-11 13:25:17');
INSERT INTO `activity_logs` VALUES (319, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:25:26', '2024-11-11 13:25:26');
INSERT INTO `activity_logs` VALUES (320, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:25:56', '2024-11-11 13:25:56');
INSERT INTO `activity_logs` VALUES (321, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:26:19', '2024-11-11 13:26:19');
INSERT INTO `activity_logs` VALUES (322, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:27:12', '2024-11-11 13:27:12');
INSERT INTO `activity_logs` VALUES (323, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:27:23', '2024-11-11 13:27:23');
INSERT INTO `activity_logs` VALUES (324, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:27:46', '2024-11-11 13:27:46');
INSERT INTO `activity_logs` VALUES (325, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:27:49', '2024-11-11 13:27:49');
INSERT INTO `activity_logs` VALUES (326, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:27:55', '2024-11-11 13:27:55');
INSERT INTO `activity_logs` VALUES (327, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:28:03', '2024-11-11 13:28:03');
INSERT INTO `activity_logs` VALUES (328, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:46:55', '2024-11-11 13:46:55');
INSERT INTO `activity_logs` VALUES (329, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:47:17', '2024-11-11 13:47:17');
INSERT INTO `activity_logs` VALUES (330, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:47:53', '2024-11-11 13:47:53');
INSERT INTO `activity_logs` VALUES (331, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 13:48:17', '2024-11-11 13:48:17');
INSERT INTO `activity_logs` VALUES (332, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 14:12:29', '2024-11-11 14:12:29');
INSERT INTO `activity_logs` VALUES (333, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:12:35', '2024-11-11 14:12:35');
INSERT INTO `activity_logs` VALUES (334, 'create', '1', 'User Membuat Pengajuan Keterlambatan.', '2024-11-11 14:12:58', '2024-11-11 14:12:58');
INSERT INTO `activity_logs` VALUES (335, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:12:59', '2024-11-11 14:12:59');
INSERT INTO `activity_logs` VALUES (336, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:14:19', '2024-11-11 14:14:19');
INSERT INTO `activity_logs` VALUES (337, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:14:33', '2024-11-11 14:14:33');
INSERT INTO `activity_logs` VALUES (338, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:14:49', '2024-11-11 14:14:49');
INSERT INTO `activity_logs` VALUES (339, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:18:22', '2024-11-11 14:18:22');
INSERT INTO `activity_logs` VALUES (340, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:18:58', '2024-11-11 14:18:58');
INSERT INTO `activity_logs` VALUES (341, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:19:09', '2024-11-11 14:19:09');
INSERT INTO `activity_logs` VALUES (342, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:19:54', '2024-11-11 14:19:54');
INSERT INTO `activity_logs` VALUES (343, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:20:02', '2024-11-11 14:20:02');
INSERT INTO `activity_logs` VALUES (344, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:20:02', '2024-11-11 14:20:02');
INSERT INTO `activity_logs` VALUES (345, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:20:29', '2024-11-11 14:20:29');
INSERT INTO `activity_logs` VALUES (346, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:23:23', '2024-11-11 14:23:23');
INSERT INTO `activity_logs` VALUES (347, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:23:52', '2024-11-11 14:23:52');
INSERT INTO `activity_logs` VALUES (348, 'create', '1', 'User Menghapus Pengajuan Keterlambatan.', '2024-11-11 14:24:09', '2024-11-11 14:24:09');
INSERT INTO `activity_logs` VALUES (349, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:24:10', '2024-11-11 14:24:10');
INSERT INTO `activity_logs` VALUES (350, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:25:32', '2024-11-11 14:25:32');
INSERT INTO `activity_logs` VALUES (351, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:26:22', '2024-11-11 14:26:22');
INSERT INTO `activity_logs` VALUES (352, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:26:32', '2024-11-11 14:26:32');
INSERT INTO `activity_logs` VALUES (353, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:27:02', '2024-11-11 14:27:02');
INSERT INTO `activity_logs` VALUES (354, 'create', '1', 'User Membuat Pengajuan Keterlambatan.', '2024-11-11 14:27:17', '2024-11-11 14:27:17');
INSERT INTO `activity_logs` VALUES (355, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:27:17', '2024-11-11 14:27:17');
INSERT INTO `activity_logs` VALUES (356, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:27:28', '2024-11-11 14:27:28');
INSERT INTO `activity_logs` VALUES (357, 'create', '1', 'User Menyetujui Pengajuan Keterlambatan.', '2024-11-11 14:27:32', '2024-11-11 14:27:32');
INSERT INTO `activity_logs` VALUES (358, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:27:33', '2024-11-11 14:27:33');
INSERT INTO `activity_logs` VALUES (359, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:27:44', '2024-11-11 14:27:44');
INSERT INTO `activity_logs` VALUES (360, 'create', '1', 'User Mengkonfirmasi Pengajuan Keterlambatan.', '2024-11-11 14:27:48', '2024-11-11 14:27:48');
INSERT INTO `activity_logs` VALUES (361, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:27:48', '2024-11-11 14:27:48');
INSERT INTO `activity_logs` VALUES (362, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:36:01', '2024-11-11 14:36:01');
INSERT INTO `activity_logs` VALUES (363, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-11 14:36:18', '2024-11-11 14:36:18');
INSERT INTO `activity_logs` VALUES (364, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 14:39:30', '2024-11-11 14:39:30');
INSERT INTO `activity_logs` VALUES (365, 'create', '2', 'User  Masuk Ke Dashboard.', '2024-11-11 14:39:48', '2024-11-11 14:39:48');
INSERT INTO `activity_logs` VALUES (366, 'create', '2', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 14:39:52', '2024-11-11 14:39:52');
INSERT INTO `activity_logs` VALUES (367, 'create', '2', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 14:42:47', '2024-11-11 14:42:47');
INSERT INTO `activity_logs` VALUES (368, 'create', '2', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 14:43:25', '2024-11-11 14:43:25');
INSERT INTO `activity_logs` VALUES (369, 'create', '2', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 14:43:44', '2024-11-11 14:43:44');
INSERT INTO `activity_logs` VALUES (370, 'create', '2', 'User Membuat Pengajuan Cuti.', '2024-11-11 14:43:56', '2024-11-11 14:43:56');
INSERT INTO `activity_logs` VALUES (371, 'create', '2', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 14:43:57', '2024-11-11 14:43:57');
INSERT INTO `activity_logs` VALUES (372, 'create', '2', 'User Masuk ke Pengajuan Cuti.', '2024-11-11 14:44:48', '2024-11-11 14:44:48');
INSERT INTO `activity_logs` VALUES (373, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-11 14:45:10', '2024-11-11 14:45:10');
INSERT INTO `activity_logs` VALUES (374, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-11 14:57:15', '2024-11-11 14:57:15');
INSERT INTO `activity_logs` VALUES (375, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-11 14:57:31', '2024-11-11 14:57:31');
INSERT INTO `activity_logs` VALUES (376, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-11 14:57:45', '2024-11-11 14:57:45');
INSERT INTO `activity_logs` VALUES (377, 'create', '1', 'User Masuk Ke Detail.', '2024-11-11 15:26:59', '2024-11-11 15:26:59');
INSERT INTO `activity_logs` VALUES (378, 'create', '1', 'User Mengupdate User.', '2024-11-11 15:27:04', '2024-11-11 15:27:04');
INSERT INTO `activity_logs` VALUES (379, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:27:05', '2024-11-11 15:27:05');
INSERT INTO `activity_logs` VALUES (380, 'create', '1', 'User Masuk Ke Detail.', '2024-11-11 15:27:07', '2024-11-11 15:27:07');
INSERT INTO `activity_logs` VALUES (381, 'create', '1', 'User Mengupdate User.', '2024-11-11 15:27:10', '2024-11-11 15:27:10');
INSERT INTO `activity_logs` VALUES (382, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:27:10', '2024-11-11 15:27:10');
INSERT INTO `activity_logs` VALUES (383, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:27:50', '2024-11-11 15:27:50');
INSERT INTO `activity_logs` VALUES (384, 'create', '1', 'User Masuk Ke Detail.', '2024-11-11 15:27:52', '2024-11-11 15:27:52');
INSERT INTO `activity_logs` VALUES (385, 'create', '1', 'User Mengupdate User.', '2024-11-11 15:27:55', '2024-11-11 15:27:55');
INSERT INTO `activity_logs` VALUES (386, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:27:55', '2024-11-11 15:27:55');
INSERT INTO `activity_logs` VALUES (387, 'create', '1', 'User Masuk Ke Detail.', '2024-11-11 15:27:58', '2024-11-11 15:27:58');
INSERT INTO `activity_logs` VALUES (388, 'create', '1', 'User Mengupdate User.', '2024-11-11 15:28:02', '2024-11-11 15:28:02');
INSERT INTO `activity_logs` VALUES (389, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:28:02', '2024-11-11 15:28:02');
INSERT INTO `activity_logs` VALUES (390, 'create', '1', 'User Masuk Ke Detail.', '2024-11-11 15:28:05', '2024-11-11 15:28:05');
INSERT INTO `activity_logs` VALUES (391, 'create', '1', 'User Mengupdate User.', '2024-11-11 15:28:07', '2024-11-11 15:28:07');
INSERT INTO `activity_logs` VALUES (392, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:28:07', '2024-11-11 15:28:07');
INSERT INTO `activity_logs` VALUES (393, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-11 15:28:12', '2024-11-11 15:28:12');
INSERT INTO `activity_logs` VALUES (394, 'create', '1', 'User Menghapus User.', '2024-11-11 15:28:21', '2024-11-11 15:28:21');
INSERT INTO `activity_logs` VALUES (395, 'create', '1', 'User Menghapus User.', '2024-11-11 15:28:26', '2024-11-11 15:28:26');
INSERT INTO `activity_logs` VALUES (396, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:29:48', '2024-11-11 15:29:48');
INSERT INTO `activity_logs` VALUES (397, 'create', '1', 'User Masuk Ke Detail.', '2024-11-11 15:29:50', '2024-11-11 15:29:50');
INSERT INTO `activity_logs` VALUES (398, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:30:02', '2024-11-11 15:30:02');
INSERT INTO `activity_logs` VALUES (399, 'create', '1', 'User Masuk Ke Detail.', '2024-11-11 15:30:05', '2024-11-11 15:30:05');
INSERT INTO `activity_logs` VALUES (400, 'create', '1', 'User Masuk Ke Restore Edit.', '2024-11-11 15:37:45', '2024-11-11 15:37:45');
INSERT INTO `activity_logs` VALUES (401, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:37:49', '2024-11-11 15:37:49');
INSERT INTO `activity_logs` VALUES (402, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:39:27', '2024-11-11 15:39:27');
INSERT INTO `activity_logs` VALUES (403, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:39:49', '2024-11-11 15:39:49');
INSERT INTO `activity_logs` VALUES (404, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:40:30', '2024-11-11 15:40:30');
INSERT INTO `activity_logs` VALUES (405, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:41:00', '2024-11-11 15:41:00');
INSERT INTO `activity_logs` VALUES (406, 'create', '1', 'User Menghapus User.', '2024-11-11 15:41:03', '2024-11-11 15:41:03');
INSERT INTO `activity_logs` VALUES (407, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:41:04', '2024-11-11 15:41:04');
INSERT INTO `activity_logs` VALUES (408, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:41:06', '2024-11-11 15:41:06');
INSERT INTO `activity_logs` VALUES (409, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:42:12', '2024-11-11 15:42:12');
INSERT INTO `activity_logs` VALUES (410, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:42:18', '2024-11-11 15:42:18');
INSERT INTO `activity_logs` VALUES (411, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:42:18', '2024-11-11 15:42:18');
INSERT INTO `activity_logs` VALUES (412, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:42:22', '2024-11-11 15:42:22');
INSERT INTO `activity_logs` VALUES (413, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:43:14', '2024-11-11 15:43:14');
INSERT INTO `activity_logs` VALUES (414, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:43:18', '2024-11-11 15:43:18');
INSERT INTO `activity_logs` VALUES (415, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:43:18', '2024-11-11 15:43:18');
INSERT INTO `activity_logs` VALUES (416, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:44:48', '2024-11-11 15:44:48');
INSERT INTO `activity_logs` VALUES (417, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:44:51', '2024-11-11 15:44:51');
INSERT INTO `activity_logs` VALUES (418, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:44:52', '2024-11-11 15:44:52');
INSERT INTO `activity_logs` VALUES (419, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:45:42', '2024-11-11 15:45:42');
INSERT INTO `activity_logs` VALUES (420, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:45:45', '2024-11-11 15:45:45');
INSERT INTO `activity_logs` VALUES (421, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:45:45', '2024-11-11 15:45:45');
INSERT INTO `activity_logs` VALUES (422, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:46:14', '2024-11-11 15:46:14');
INSERT INTO `activity_logs` VALUES (423, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:46:18', '2024-11-11 15:46:18');
INSERT INTO `activity_logs` VALUES (424, 'create', '1', 'User Menghapus User.', '2024-11-11 15:46:22', '2024-11-11 15:46:22');
INSERT INTO `activity_logs` VALUES (425, 'create', '1', 'User Masuk Ke User.', '2024-11-11 15:46:22', '2024-11-11 15:46:22');
INSERT INTO `activity_logs` VALUES (426, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:46:28', '2024-11-11 15:46:28');
INSERT INTO `activity_logs` VALUES (427, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:46:31', '2024-11-11 15:46:31');
INSERT INTO `activity_logs` VALUES (428, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:46:32', '2024-11-11 15:46:32');
INSERT INTO `activity_logs` VALUES (429, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:47:01', '2024-11-11 15:47:01');
INSERT INTO `activity_logs` VALUES (430, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:47:17', '2024-11-11 15:47:17');
INSERT INTO `activity_logs` VALUES (431, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:47:21', '2024-11-11 15:47:21');
INSERT INTO `activity_logs` VALUES (432, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:47:21', '2024-11-11 15:47:21');
INSERT INTO `activity_logs` VALUES (433, 'create', '1', 'User Menghapus User.', '2024-11-11 15:47:45', '2024-11-11 15:47:45');
INSERT INTO `activity_logs` VALUES (434, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:48:10', '2024-11-11 15:48:10');
INSERT INTO `activity_logs` VALUES (435, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:48:13', '2024-11-11 15:48:13');
INSERT INTO `activity_logs` VALUES (436, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:48:13', '2024-11-11 15:48:13');
INSERT INTO `activity_logs` VALUES (437, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:49:37', '2024-11-11 15:49:37');
INSERT INTO `activity_logs` VALUES (438, 'create', '1', 'User Menghapus User.', '2024-11-11 15:49:40', '2024-11-11 15:49:40');
INSERT INTO `activity_logs` VALUES (439, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:50:01', '2024-11-11 15:50:01');
INSERT INTO `activity_logs` VALUES (440, 'create', '1', 'User Menghapus User.', '2024-11-11 15:50:04', '2024-11-11 15:50:04');
INSERT INTO `activity_logs` VALUES (441, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:50:42', '2024-11-11 15:50:42');
INSERT INTO `activity_logs` VALUES (442, 'create', '1', 'User Menghapus User.', '2024-11-11 15:50:47', '2024-11-11 15:50:47');
INSERT INTO `activity_logs` VALUES (443, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:50:55', '2024-11-11 15:50:55');
INSERT INTO `activity_logs` VALUES (444, 'create', '1', 'User Menghapus User.', '2024-11-11 15:50:59', '2024-11-11 15:50:59');
INSERT INTO `activity_logs` VALUES (445, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:51:07', '2024-11-11 15:51:07');
INSERT INTO `activity_logs` VALUES (446, 'create', '1', 'User Menghapus User.', '2024-11-11 15:51:10', '2024-11-11 15:51:10');
INSERT INTO `activity_logs` VALUES (447, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:51:25', '2024-11-11 15:51:25');
INSERT INTO `activity_logs` VALUES (448, 'create', '1', 'User Menghapus User.', '2024-11-11 15:51:28', '2024-11-11 15:51:28');
INSERT INTO `activity_logs` VALUES (449, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:52:31', '2024-11-11 15:52:31');
INSERT INTO `activity_logs` VALUES (450, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:52:36', '2024-11-11 15:52:36');
INSERT INTO `activity_logs` VALUES (451, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:52:36', '2024-11-11 15:52:36');
INSERT INTO `activity_logs` VALUES (452, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:52:40', '2024-11-11 15:52:40');
INSERT INTO `activity_logs` VALUES (453, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:52:40', '2024-11-11 15:52:40');
INSERT INTO `activity_logs` VALUES (454, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:53:05', '2024-11-11 15:53:05');
INSERT INTO `activity_logs` VALUES (455, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:53:08', '2024-11-11 15:53:08');
INSERT INTO `activity_logs` VALUES (456, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:53:08', '2024-11-11 15:53:08');
INSERT INTO `activity_logs` VALUES (457, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:55:05', '2024-11-11 15:55:05');
INSERT INTO `activity_logs` VALUES (458, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:55:08', '2024-11-11 15:55:08');
INSERT INTO `activity_logs` VALUES (459, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:55:09', '2024-11-11 15:55:09');
INSERT INTO `activity_logs` VALUES (460, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:55:47', '2024-11-11 15:55:47');
INSERT INTO `activity_logs` VALUES (461, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:55:50', '2024-11-11 15:55:50');
INSERT INTO `activity_logs` VALUES (462, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:55:50', '2024-11-11 15:55:50');
INSERT INTO `activity_logs` VALUES (463, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:56:46', '2024-11-11 15:56:46');
INSERT INTO `activity_logs` VALUES (464, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:56:50', '2024-11-11 15:56:50');
INSERT INTO `activity_logs` VALUES (465, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:56:50', '2024-11-11 15:56:50');
INSERT INTO `activity_logs` VALUES (466, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:58:02', '2024-11-11 15:58:02');
INSERT INTO `activity_logs` VALUES (467, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:58:05', '2024-11-11 15:58:05');
INSERT INTO `activity_logs` VALUES (468, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:58:05', '2024-11-11 15:58:05');
INSERT INTO `activity_logs` VALUES (469, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:59:35', '2024-11-11 15:59:35');
INSERT INTO `activity_logs` VALUES (470, 'create', '1', 'User Merestore Data User.', '2024-11-11 15:59:39', '2024-11-11 15:59:39');
INSERT INTO `activity_logs` VALUES (471, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 15:59:39', '2024-11-11 15:59:39');
INSERT INTO `activity_logs` VALUES (472, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 16:00:34', '2024-11-11 16:00:34');
INSERT INTO `activity_logs` VALUES (473, 'create', '1', 'User Merestore Data User.', '2024-11-11 16:00:37', '2024-11-11 16:00:37');
INSERT INTO `activity_logs` VALUES (474, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 16:00:37', '2024-11-11 16:00:37');
INSERT INTO `activity_logs` VALUES (475, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 16:00:41', '2024-11-11 16:00:41');
INSERT INTO `activity_logs` VALUES (476, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 16:00:53', '2024-11-11 16:00:53');
INSERT INTO `activity_logs` VALUES (477, 'create', '1', 'User Merestore Data User.', '2024-11-11 16:00:56', '2024-11-11 16:00:56');
INSERT INTO `activity_logs` VALUES (478, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 16:00:56', '2024-11-11 16:00:56');
INSERT INTO `activity_logs` VALUES (479, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 16:01:17', '2024-11-11 16:01:17');
INSERT INTO `activity_logs` VALUES (480, 'create', '1', 'User Merestore Data User.', '2024-11-11 16:01:19', '2024-11-11 16:01:19');
INSERT INTO `activity_logs` VALUES (481, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 16:01:20', '2024-11-11 16:01:20');
INSERT INTO `activity_logs` VALUES (482, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-11 16:01:36', '2024-11-11 16:01:36');
INSERT INTO `activity_logs` VALUES (483, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-12 00:18:31', '2024-11-12 00:18:31');
INSERT INTO `activity_logs` VALUES (484, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:18:40', '2024-11-12 00:18:40');
INSERT INTO `activity_logs` VALUES (485, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:21:19', '2024-11-12 00:21:19');
INSERT INTO `activity_logs` VALUES (486, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:21:29', '2024-11-12 00:21:29');
INSERT INTO `activity_logs` VALUES (487, 'create', '1', 'User Melihat Folder.', '2024-11-12 00:24:33', '2024-11-12 00:24:33');
INSERT INTO `activity_logs` VALUES (488, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:26:25', '2024-11-12 00:26:25');
INSERT INTO `activity_logs` VALUES (489, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:27:30', '2024-11-12 00:27:30');
INSERT INTO `activity_logs` VALUES (490, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:27:37', '2024-11-12 00:27:37');
INSERT INTO `activity_logs` VALUES (491, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:27:48', '2024-11-12 00:27:48');
INSERT INTO `activity_logs` VALUES (492, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:27:55', '2024-11-12 00:27:55');
INSERT INTO `activity_logs` VALUES (493, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:28:04', '2024-11-12 00:28:04');
INSERT INTO `activity_logs` VALUES (494, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:28:30', '2024-11-12 00:28:30');
INSERT INTO `activity_logs` VALUES (495, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:30:55', '2024-11-12 00:30:55');
INSERT INTO `activity_logs` VALUES (496, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 00:31:03', '2024-11-12 00:31:03');
INSERT INTO `activity_logs` VALUES (497, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 01:55:16', '2024-11-12 01:55:16');
INSERT INTO `activity_logs` VALUES (498, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 01:59:40', '2024-11-12 01:59:40');
INSERT INTO `activity_logs` VALUES (499, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 01:59:50', '2024-11-12 01:59:50');
INSERT INTO `activity_logs` VALUES (500, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:00:26', '2024-11-12 02:00:26');
INSERT INTO `activity_logs` VALUES (501, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:02:52', '2024-11-12 02:02:52');
INSERT INTO `activity_logs` VALUES (502, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:03:03', '2024-11-12 02:03:03');
INSERT INTO `activity_logs` VALUES (503, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:05:42', '2024-11-12 02:05:42');
INSERT INTO `activity_logs` VALUES (504, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:05:50', '2024-11-12 02:05:50');
INSERT INTO `activity_logs` VALUES (505, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 02:06:15', '2024-11-12 02:06:15');
INSERT INTO `activity_logs` VALUES (506, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:06:28', '2024-11-12 02:06:28');
INSERT INTO `activity_logs` VALUES (507, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 02:06:34', '2024-11-12 02:06:34');
INSERT INTO `activity_logs` VALUES (508, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:06:51', '2024-11-12 02:06:51');
INSERT INTO `activity_logs` VALUES (509, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:06:54', '2024-11-12 02:06:54');
INSERT INTO `activity_logs` VALUES (510, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:07:39', '2024-11-12 02:07:39');
INSERT INTO `activity_logs` VALUES (511, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:07:45', '2024-11-12 02:07:45');
INSERT INTO `activity_logs` VALUES (512, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:13:41', '2024-11-12 02:13:41');
INSERT INTO `activity_logs` VALUES (513, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:14:41', '2024-11-12 02:14:41');
INSERT INTO `activity_logs` VALUES (514, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:14:49', '2024-11-12 02:14:49');
INSERT INTO `activity_logs` VALUES (515, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:16:25', '2024-11-12 02:16:25');
INSERT INTO `activity_logs` VALUES (516, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:16:40', '2024-11-12 02:16:40');
INSERT INTO `activity_logs` VALUES (517, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:20:01', '2024-11-12 02:20:01');
INSERT INTO `activity_logs` VALUES (518, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:20:14', '2024-11-12 02:20:14');
INSERT INTO `activity_logs` VALUES (519, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-12 02:20:27', '2024-11-12 02:20:27');
INSERT INTO `activity_logs` VALUES (520, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:20:32', '2024-11-12 02:20:32');
INSERT INTO `activity_logs` VALUES (521, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:21:51', '2024-11-12 02:21:51');
INSERT INTO `activity_logs` VALUES (522, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:23:21', '2024-11-12 02:23:21');
INSERT INTO `activity_logs` VALUES (523, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:24:29', '2024-11-12 02:24:29');
INSERT INTO `activity_logs` VALUES (524, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:24:41', '2024-11-12 02:24:41');
INSERT INTO `activity_logs` VALUES (525, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:25:02', '2024-11-12 02:25:02');
INSERT INTO `activity_logs` VALUES (526, 'create', '1', 'User Membuat Folder.', '2024-11-12 02:25:20', '2024-11-12 02:25:20');
INSERT INTO `activity_logs` VALUES (527, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:25:20', '2024-11-12 02:25:20');
INSERT INTO `activity_logs` VALUES (528, 'create', '1', 'User Membuat Folder.', '2024-11-12 02:25:28', '2024-11-12 02:25:28');
INSERT INTO `activity_logs` VALUES (529, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:25:28', '2024-11-12 02:25:28');
INSERT INTO `activity_logs` VALUES (530, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:25:42', '2024-11-12 02:25:42');
INSERT INTO `activity_logs` VALUES (531, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:28:01', '2024-11-12 02:28:01');
INSERT INTO `activity_logs` VALUES (532, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:28:09', '2024-11-12 02:28:09');
INSERT INTO `activity_logs` VALUES (533, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:28:14', '2024-11-12 02:28:14');
INSERT INTO `activity_logs` VALUES (534, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:28:20', '2024-11-12 02:28:20');
INSERT INTO `activity_logs` VALUES (535, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:29:39', '2024-11-12 02:29:39');
INSERT INTO `activity_logs` VALUES (536, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:29:49', '2024-11-12 02:29:49');
INSERT INTO `activity_logs` VALUES (537, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:29:56', '2024-11-12 02:29:56');
INSERT INTO `activity_logs` VALUES (538, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:30:13', '2024-11-12 02:30:13');
INSERT INTO `activity_logs` VALUES (539, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:30:36', '2024-11-12 02:30:36');
INSERT INTO `activity_logs` VALUES (540, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:35:29', '2024-11-12 02:35:29');
INSERT INTO `activity_logs` VALUES (541, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:38:47', '2024-11-12 02:38:47');
INSERT INTO `activity_logs` VALUES (542, 'create', '1', 'User Membuat Surat.', '2024-11-12 02:39:02', '2024-11-12 02:39:02');
INSERT INTO `activity_logs` VALUES (543, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:39:04', '2024-11-12 02:39:04');
INSERT INTO `activity_logs` VALUES (544, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:39:10', '2024-11-12 02:39:10');
INSERT INTO `activity_logs` VALUES (545, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:40:21', '2024-11-12 02:40:21');
INSERT INTO `activity_logs` VALUES (546, 'create', '1', 'User Membuat Surat.', '2024-11-12 02:40:35', '2024-11-12 02:40:35');
INSERT INTO `activity_logs` VALUES (547, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:40:35', '2024-11-12 02:40:35');
INSERT INTO `activity_logs` VALUES (548, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:41:12', '2024-11-12 02:41:12');
INSERT INTO `activity_logs` VALUES (549, 'create', '1', 'User Membuat Surat.', '2024-11-12 02:41:25', '2024-11-12 02:41:25');
INSERT INTO `activity_logs` VALUES (550, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:41:26', '2024-11-12 02:41:26');
INSERT INTO `activity_logs` VALUES (551, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:42:19', '2024-11-12 02:42:19');
INSERT INTO `activity_logs` VALUES (552, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:43:00', '2024-11-12 02:43:00');
INSERT INTO `activity_logs` VALUES (553, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 02:43:30', '2024-11-12 02:43:30');
INSERT INTO `activity_logs` VALUES (554, 'create', '1', 'User Melihat Folder.', '2024-11-12 02:43:38', '2024-11-12 02:43:38');
INSERT INTO `activity_logs` VALUES (555, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:47:48', '2024-11-12 02:47:48');
INSERT INTO `activity_logs` VALUES (556, 'create', '1', 'User Membuat Surat.', '2024-11-12 02:48:02', '2024-11-12 02:48:02');
INSERT INTO `activity_logs` VALUES (557, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:48:03', '2024-11-12 02:48:03');
INSERT INTO `activity_logs` VALUES (558, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:48:31', '2024-11-12 02:48:31');
INSERT INTO `activity_logs` VALUES (559, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:48:42', '2024-11-12 02:48:42');
INSERT INTO `activity_logs` VALUES (560, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:48:48', '2024-11-12 02:48:48');
INSERT INTO `activity_logs` VALUES (561, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:49:19', '2024-11-12 02:49:19');
INSERT INTO `activity_logs` VALUES (562, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:49:44', '2024-11-12 02:49:44');
INSERT INTO `activity_logs` VALUES (563, 'create', '1', 'User Membuat Surat.', '2024-11-12 02:49:55', '2024-11-12 02:49:55');
INSERT INTO `activity_logs` VALUES (564, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 02:49:56', '2024-11-12 02:49:56');
INSERT INTO `activity_logs` VALUES (565, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 02:50:03', '2024-11-12 02:50:03');
INSERT INTO `activity_logs` VALUES (566, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:50:14', '2024-11-12 02:50:14');
INSERT INTO `activity_logs` VALUES (567, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:57:23', '2024-11-12 02:57:23');
INSERT INTO `activity_logs` VALUES (568, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:57:54', '2024-11-12 02:57:54');
INSERT INTO `activity_logs` VALUES (569, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:58:04', '2024-11-12 02:58:04');
INSERT INTO `activity_logs` VALUES (570, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:58:22', '2024-11-12 02:58:22');
INSERT INTO `activity_logs` VALUES (571, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-12 02:58:37', '2024-11-12 02:58:37');
INSERT INTO `activity_logs` VALUES (572, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:58:53', '2024-11-12 02:58:53');
INSERT INTO `activity_logs` VALUES (573, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 02:58:57', '2024-11-12 02:58:57');
INSERT INTO `activity_logs` VALUES (574, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 03:01:27', '2024-11-12 03:01:27');
INSERT INTO `activity_logs` VALUES (575, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 03:01:50', '2024-11-12 03:01:50');
INSERT INTO `activity_logs` VALUES (576, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 03:02:04', '2024-11-12 03:02:04');
INSERT INTO `activity_logs` VALUES (577, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 03:02:15', '2024-11-12 03:02:15');
INSERT INTO `activity_logs` VALUES (578, 'download', '1', 'Download surat dengan nomor: qsss', '2024-11-12 03:02:19', '2024-11-12 03:02:19');
INSERT INTO `activity_logs` VALUES (579, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 03:03:11', '2024-11-12 03:03:11');
INSERT INTO `activity_logs` VALUES (580, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 03:03:32', '2024-11-12 03:03:32');
INSERT INTO `activity_logs` VALUES (581, 'download', '1', 'Download surat dengan nomor: qsss', '2024-11-12 03:03:35', '2024-11-12 03:03:35');
INSERT INTO `activity_logs` VALUES (582, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-12 05:53:28', '2024-11-12 05:53:28');
INSERT INTO `activity_logs` VALUES (583, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 05:53:36', '2024-11-12 05:53:36');
INSERT INTO `activity_logs` VALUES (584, 'create', '1', 'User  Mengirim Surat dengan id_surat.: 18', '2024-11-12 05:53:41', '2024-11-12 05:53:41');
INSERT INTO `activity_logs` VALUES (585, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 05:57:15', '2024-11-12 05:57:15');
INSERT INTO `activity_logs` VALUES (586, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 05:57:19', '2024-11-12 05:57:19');
INSERT INTO `activity_logs` VALUES (587, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 05:57:30', '2024-11-12 05:57:30');
INSERT INTO `activity_logs` VALUES (588, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 05:57:33', '2024-11-12 05:57:33');
INSERT INTO `activity_logs` VALUES (589, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 05:57:34', '2024-11-12 05:57:34');
INSERT INTO `activity_logs` VALUES (590, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 05:57:36', '2024-11-12 05:57:36');
INSERT INTO `activity_logs` VALUES (591, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 06:00:18', '2024-11-12 06:00:18');
INSERT INTO `activity_logs` VALUES (592, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 06:00:34', '2024-11-12 06:00:34');
INSERT INTO `activity_logs` VALUES (593, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:00:46', '2024-11-12 06:00:46');
INSERT INTO `activity_logs` VALUES (594, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 06:00:56', '2024-11-12 06:00:56');
INSERT INTO `activity_logs` VALUES (595, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 06:02:27', '2024-11-12 06:02:27');
INSERT INTO `activity_logs` VALUES (596, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:02:33', '2024-11-12 06:02:33');
INSERT INTO `activity_logs` VALUES (597, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:03:54', '2024-11-12 06:03:54');
INSERT INTO `activity_logs` VALUES (598, 'create', '1', 'User  Mengirim Surat dengan id_surat.: 18', '2024-11-12 06:03:57', '2024-11-12 06:03:57');
INSERT INTO `activity_logs` VALUES (599, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:09:51', '2024-11-12 06:09:51');
INSERT INTO `activity_logs` VALUES (600, 'create', '1', 'User  Mengirim Surat dengan id_surat: 18', '2024-11-12 06:09:55', '2024-11-12 06:09:55');
INSERT INTO `activity_logs` VALUES (601, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:13:14', '2024-11-12 06:13:14');
INSERT INTO `activity_logs` VALUES (602, 'create', '1', 'User  Mengirim Surat dengan id_surat: 18', '2024-11-12 06:13:18', '2024-11-12 06:13:18');
INSERT INTO `activity_logs` VALUES (603, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:28:29', '2024-11-12 06:28:29');
INSERT INTO `activity_logs` VALUES (604, 'create', '1', 'User Mengirim Surat dengan id_surat.: 18', '2024-11-12 06:28:33', '2024-11-12 06:28:33');
INSERT INTO `activity_logs` VALUES (605, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:32:46', '2024-11-12 06:32:46');
INSERT INTO `activity_logs` VALUES (606, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 06:32:49', '2024-11-12 06:32:49');
INSERT INTO `activity_logs` VALUES (607, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:41:01', '2024-11-12 06:41:01');
INSERT INTO `activity_logs` VALUES (608, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 06:41:05', '2024-11-12 06:41:05');
INSERT INTO `activity_logs` VALUES (609, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 06:41:33', '2024-11-12 06:41:33');
INSERT INTO `activity_logs` VALUES (610, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:41:38', '2024-11-12 06:41:38');
INSERT INTO `activity_logs` VALUES (611, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 06:41:45', '2024-11-12 06:41:45');
INSERT INTO `activity_logs` VALUES (612, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 06:43:57', '2024-11-12 06:43:57');
INSERT INTO `activity_logs` VALUES (613, 'create', '1', 'User Mengirim Surat dengan id_surat: 18', '2024-11-12 06:44:00', '2024-11-12 06:44:00');
INSERT INTO `activity_logs` VALUES (614, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-12 07:12:29', '2024-11-12 07:12:29');
INSERT INTO `activity_logs` VALUES (615, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-12 07:13:26', '2024-11-12 07:13:26');
INSERT INTO `activity_logs` VALUES (616, 'create', '1', 'User  Masuk Ke Dashboard.', '2024-11-12 07:15:31', '2024-11-12 07:15:31');
INSERT INTO `activity_logs` VALUES (617, 'create', '1', 'User  Masuk ke Surat.', '2024-11-12 07:15:39', '2024-11-12 07:15:39');
INSERT INTO `activity_logs` VALUES (618, 'create', '1', 'User  Masuk ke Surat Masuk.', '2024-11-12 07:16:18', '2024-11-12 07:16:18');
INSERT INTO `activity_logs` VALUES (619, 'create', '1', 'User  Masuk ke Surat Keluar.', '2024-11-12 07:17:25', '2024-11-12 07:17:25');
INSERT INTO `activity_logs` VALUES (620, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 07:17:43', '2024-11-12 07:17:43');
INSERT INTO `activity_logs` VALUES (621, 'create', '1', 'User Melihat Folder.', '2024-11-12 07:18:10', '2024-11-12 07:18:10');
INSERT INTO `activity_logs` VALUES (622, 'create', '1', 'User Melihat Folder.', '2024-11-12 07:18:34', '2024-11-12 07:18:34');
INSERT INTO `activity_logs` VALUES (623, 'create', '1', 'User Masuk ke Pengajuan Cuti.', '2024-11-12 07:19:16', '2024-11-12 07:19:16');
INSERT INTO `activity_logs` VALUES (624, 'create', '1', 'User Masuk ke Pengajuan Keterlambatan.', '2024-11-12 07:20:02', '2024-11-12 07:20:02');
INSERT INTO `activity_logs` VALUES (625, 'create', '1', 'User  Masuk ke LogActivity.', '2024-11-12 07:20:35', '2024-11-12 07:20:35');
INSERT INTO `activity_logs` VALUES (626, 'create', '1', 'User Masuk Ke User.', '2024-11-12 07:21:39', '2024-11-12 07:21:39');
INSERT INTO `activity_logs` VALUES (627, 'create', '1', 'User Masuk Ke Detail.', '2024-11-12 07:22:02', '2024-11-12 07:22:02');
INSERT INTO `activity_logs` VALUES (628, 'create', '1', 'User Masuk Ke Restore Edit.', '2024-11-12 07:22:21', '2024-11-12 07:22:21');
INSERT INTO `activity_logs` VALUES (629, 'create', '1', 'User Masuk Ke Restore Delete.', '2024-11-12 07:22:37', '2024-11-12 07:22:37');
INSERT INTO `activity_logs` VALUES (630, 'create', '1', 'User Masuk ke Folder.', '2024-11-12 07:39:35', '2024-11-12 07:39:35');
INSERT INTO `activity_logs` VALUES (631, 'create', '1', 'User Melihat Folder.', '2024-11-12 07:39:39', '2024-11-12 07:39:39');

-- ----------------------------
-- Table structure for cuti
-- ----------------------------
DROP TABLE IF EXISTS `cuti`;
CREATE TABLE `cuti`  (
  `id_cuti` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `tanggal_cuti` date NULL DEFAULT NULL,
  `jumlah_hari` int NULL DEFAULT NULL,
  `alasan_cuti` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_cuti`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuti
-- ----------------------------
INSERT INTO `cuti` VALUES (2, 1, '2024-11-12', 2, 'Liburan', '2024-11-11 12:46:28', '2024-11-11 13:27:49', 'Setuju');
INSERT INTO `cuti` VALUES (3, 2, '2024-11-13', 3, 'Capek', '2024-11-11 14:43:56', '2024-11-11 14:43:56', 'Pending');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id_file` int NOT NULL AUTO_INCREMENT,
  `nama_file` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `id_folder` int NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_file`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (6, 'Nama File.pdf', '2024-11-12 07:18:34', '2024-11-12 07:18:34', 6, NULL);

-- ----------------------------
-- Table structure for folder
-- ----------------------------
DROP TABLE IF EXISTS `folder`;
CREATE TABLE `folder`  (
  `id_folder` int NOT NULL AUTO_INCREMENT,
  `nama_folder` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `level_access` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_folder`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of folder
-- ----------------------------
INSERT INTO `folder` VALUES (5, 'Folder 1', '2024-11-12 02:25:20', '2024-11-12 02:25:20', NULL);
INSERT INTO `folder` VALUES (6, 'Folder 2', '2024-11-12 02:25:28', '2024-11-12 02:30:36', 'Admin,Kesiswaan,Kepsek,Guru,HRD');

-- ----------------------------
-- Table structure for keterlambatan
-- ----------------------------
DROP TABLE IF EXISTS `keterlambatan`;
CREATE TABLE `keterlambatan`  (
  `id_telat` int NOT NULL AUTO_INCREMENT,
  `tanggal_telat` date NULL DEFAULT NULL,
  `jam_masuk` time NULL DEFAULT NULL,
  `total_telat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alasan_telat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_user` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_telat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keterlambatan
-- ----------------------------
INSERT INTO `keterlambatan` VALUES (2, '2024-11-11', '07:27:00', '27 menit', 'Macet', 1, '2024-11-11 14:27:17', '2024-11-11 14:27:48', 'Konfirmasi');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_11_10_045933_create_activity_logs_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_access` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_user_level_menu_unique`(`user_level` ASC, `menu` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (76, 'Admin', 'setting', 1, '2024-11-10 14:58:14', '2024-11-11 14:38:50');
INSERT INTO `permissions` VALUES (77, 'Admin', 'surat', 1, '2024-11-10 14:58:14', '2024-11-11 14:38:50');
INSERT INTO `permissions` VALUES (80, 'Kepsek', 'setting', 0, '2024-11-10 15:09:39', '2024-11-11 14:39:00');
INSERT INTO `permissions` VALUES (81, 'Kepsek', 'surat', 1, '2024-11-10 15:09:39', '2024-11-11 14:39:00');
INSERT INTO `permissions` VALUES (82, 'Kesiswaan', 'Setting', 0, '2024-11-11 12:14:40', '2024-11-11 14:39:08');
INSERT INTO `permissions` VALUES (83, 'Kesiswaan', 'Surat', 1, '2024-11-11 12:14:40', '2024-11-11 14:39:08');
INSERT INTO `permissions` VALUES (84, 'HRD', 'Setting', 0, '2024-11-11 12:15:27', '2024-11-11 14:39:24');
INSERT INTO `permissions` VALUES (85, 'HRD', 'Surat', 1, '2024-11-11 12:15:27', '2024-11-11 14:39:24');
INSERT INTO `permissions` VALUES (86, 'HRD', 'Dokumen', 1, '2024-11-11 12:15:27', '2024-11-11 14:39:24');
INSERT INTO `permissions` VALUES (87, 'Admin', 'Dokumen', 1, '2024-11-11 12:43:38', '2024-11-11 14:38:50');
INSERT INTO `permissions` VALUES (88, 'Kepsek', 'Dokumen', 1, '2024-11-11 12:43:46', '2024-11-11 14:39:00');
INSERT INTO `permissions` VALUES (89, 'Kesiswaan', 'Dokumen', 1, '2024-11-11 12:44:09', '2024-11-11 14:39:08');
INSERT INTO `permissions` VALUES (90, 'Guru', 'Setting', 0, '2024-11-11 12:44:16', '2024-11-11 14:39:17');
INSERT INTO `permissions` VALUES (91, 'Guru', 'Surat', 1, '2024-11-11 12:44:16', '2024-11-11 14:39:17');
INSERT INTO `permissions` VALUES (92, 'Guru', 'Dokumen', 1, '2024-11-11 12:44:16', '2024-11-11 14:39:17');
INSERT INTO `permissions` VALUES (93, 'Admin', 'Pengajuan', 1, '2024-11-11 14:38:50', '2024-11-11 14:38:50');
INSERT INTO `permissions` VALUES (94, 'Kepsek', 'Pengajuan', 1, '2024-11-11 14:39:00', '2024-11-11 14:39:00');
INSERT INTO `permissions` VALUES (95, 'Kesiswaan', 'Pengajuan', 1, '2024-11-11 14:39:08', '2024-11-11 14:39:08');
INSERT INTO `permissions` VALUES (96, 'Guru', 'Pengajuan', 1, '2024-11-11 14:39:17', '2024-11-11 14:39:17');
INSERT INTO `permissions` VALUES (97, 'HRD', 'Pengajuan', 1, '2024-11-11 14:39:24', '2024-11-11 14:39:24');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'E_Office', '1731328510.jpg', '2024-10-24 20:53:50', '2024-11-11 12:35:10');

-- ----------------------------
-- Table structure for surat
-- ----------------------------
DROP TABLE IF EXISTS `surat`;
CREATE TABLE `surat`  (
  `id_surat` int NOT NULL AUTO_INCREMENT,
  `nomor_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `topik_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_user` int NULL DEFAULT NULL,
  `penerima` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `path_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_surat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of surat
-- ----------------------------
INSERT INTO `surat` VALUES (18, 'qsss', '1', '1731379795_Doc2.docx', 1, 'Admin', '2024-11-12 02:49:56', '2024-11-12 02:49:56', 'uploads/surat/1731379795_Doc2.docx');

-- ----------------------------
-- Table structure for surat_keluar
-- ----------------------------
DROP TABLE IF EXISTS `surat_keluar`;
CREATE TABLE `surat_keluar`  (
  `id_surat_keluar` int NOT NULL AUTO_INCREMENT,
  `id_surat` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_surat_keluar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of surat_keluar
-- ----------------------------
INSERT INTO `surat_keluar` VALUES (1, 9, '2024-11-10 15:16:52', '2024-11-10 15:16:52');
INSERT INTO `surat_keluar` VALUES (2, 10, '2024-11-10 15:17:02', '2024-11-10 15:17:02');
INSERT INTO `surat_keluar` VALUES (3, 11, '2024-11-10 15:24:05', '2024-11-10 15:24:05');
INSERT INTO `surat_keluar` VALUES (4, 12, '2024-11-10 15:24:19', '2024-11-10 15:24:19');
INSERT INTO `surat_keluar` VALUES (5, 13, '2024-11-10 15:34:06', '2024-11-10 15:34:06');
INSERT INTO `surat_keluar` VALUES (6, 14, '2024-11-10 15:34:15', '2024-11-10 15:34:15');
INSERT INTO `surat_keluar` VALUES (7, 15, '2024-11-10 21:30:34', '2024-11-10 21:30:34');
INSERT INTO `surat_keluar` VALUES (8, 16, '2024-11-10 21:34:25', '2024-11-10 21:34:25');
INSERT INTO `surat_keluar` VALUES (9, 17, '2024-11-12 09:41:25', '2024-11-12 09:41:25');
INSERT INTO `surat_keluar` VALUES (10, 18, '2024-11-12 09:49:56', '2024-11-12 09:49:56');

-- ----------------------------
-- Table structure for surat_masuk
-- ----------------------------
DROP TABLE IF EXISTS `surat_masuk`;
CREATE TABLE `surat_masuk`  (
  `id_surat_masuk` int NOT NULL AUTO_INCREMENT,
  `id_surat` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_surat_masuk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of surat_masuk
-- ----------------------------
INSERT INTO `surat_masuk` VALUES (1, 11, '2024-11-10 15:24:05', '2024-11-10 15:24:05');
INSERT INTO `surat_masuk` VALUES (2, 12, '2024-11-10 15:24:19', '2024-11-10 15:24:19');
INSERT INTO `surat_masuk` VALUES (3, 13, '2024-11-10 15:34:06', '2024-11-10 15:34:06');
INSERT INTO `surat_masuk` VALUES (4, 14, '2024-11-10 15:34:15', '2024-11-10 15:34:15');
INSERT INTO `surat_masuk` VALUES (5, 15, '2024-11-10 21:30:34', '2024-11-10 21:30:34');
INSERT INTO `surat_masuk` VALUES (6, 16, '2024-11-10 21:34:25', '2024-11-10 21:34:25');
INSERT INTO `surat_masuk` VALUES (7, 17, '2024-11-12 09:41:25', '2024-11-12 09:41:25');
INSERT INTO `surat_masuk` VALUES (8, 18, '2024-11-12 09:49:56', '2024-11-12 09:49:56');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Admin', 'c4ca4238a0b923820dcc509a6f75849b', 'Admin', '2024-11-10 04:56:38', '2024-11-10 04:56:38', 'elvanchua1@gmail.com', NULL);
INSERT INTO `user` VALUES (2, 'Elvan', 'c4ca4238a0b923820dcc509a6f75849b', 'Kepsek', '2024-11-10 04:56:38', '2024-11-10 04:56:38', 'tugasprogram5@gmail.com', NULL);
INSERT INTO `user` VALUES (3, 'tes', 'c4ca4238a0b923820dcc509a6f75849b', 'Guru', '2024-11-11 15:02:51', '2024-11-11 15:46:22', 'elvanchua22@gmail.com', '2024-11-11 15:46:22');

-- ----------------------------
-- Table structure for user_history
-- ----------------------------
DROP TABLE IF EXISTS `user_history`;
CREATE TABLE `user_history`  (
  `id_user_history` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_history`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_history
-- ----------------------------
INSERT INTO `user_history` VALUES (9, 3, 'tes', NULL, 'Kesiswaan', '2024-11-11 15:02:51', '2024-11-11 15:27:05', 'elvanchuaqwe@gmail.com');
INSERT INTO `user_history` VALUES (10, 3, 'tes', NULL, 'Admin', '2024-11-11 15:02:51', '2024-11-11 15:27:10', 'elvanchuaqwe@gmail.com');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Triggers structure for table surat
-- ----------------------------
DROP TRIGGER IF EXISTS `sk`;
delimiter ;;
CREATE TRIGGER `sk` AFTER INSERT ON `surat` FOR EACH ROW INSERT INTO surat_keluar (id_surat, created_at, updated_at)
    VALUES (NEW.id_surat, NOW(), NOW())
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table surat
-- ----------------------------
DROP TRIGGER IF EXISTS `sm`;
delimiter ;;
CREATE TRIGGER `sm` AFTER INSERT ON `surat` FOR EACH ROW INSERT INTO surat_masuk (id_surat, created_at, updated_at)
    VALUES (NEW.id_surat, NOW(), NOW())
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
