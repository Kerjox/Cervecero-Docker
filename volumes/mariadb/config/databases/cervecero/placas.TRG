TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `placas_AU` AFTER UPDATE ON `placas` FOR EACH ROW BEGIN\nINSERT INTO log_Placas_Firmwares (id_Placa, oldVersion, newVersion) VALUES (new.id_Placa, OLD.firmware, NEW.firmware);\nEND'
sql_modes=1342177280
definers='root@%'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8_unicode_ci'
