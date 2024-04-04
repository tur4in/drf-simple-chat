PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2024-04-03 20:44:10.033097');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2024-04-03 20:44:10.038602');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2024-04-03 20:44:10.041435');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2024-04-03 20:44:10.045037');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2024-04-03 20:44:10.047624');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2024-04-03 20:44:10.053422');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2024-04-03 20:44:10.057552');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2024-04-03 20:44:10.061501');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2024-04-03 20:44:10.064031');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2024-04-03 20:44:10.067353');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2024-04-03 20:44:10.067819');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2024-04-03 20:44:10.071111');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2024-04-03 20:44:10.074502');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2024-04-03 20:44:10.077678');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2024-04-03 20:44:10.080646');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2024-04-03 20:44:10.083084');
INSERT INTO django_migrations VALUES(17,'auth','0012_alter_user_first_name_max_length','2024-04-03 20:44:10.087810');
INSERT INTO django_migrations VALUES(18,'sessions','0001_initial','2024-04-03 20:44:10.090944');
INSERT INTO django_migrations VALUES(19,'chat','0001_initial','2024-04-03 20:49:23.927992');
INSERT INTO django_migrations VALUES(20,'authtoken','0001_initial','2024-04-04 14:12:26.489093');
INSERT INTO django_migrations VALUES(21,'authtoken','0002_auto_20160226_1747','2024-04-04 14:12:26.499362');
INSERT INTO django_migrations VALUES(22,'authtoken','0003_tokenproxy','2024-04-04 14:12:26.500504');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log VALUES(1,'2','us1',1,'[{"added": {}}]',4,1,'2024-04-04 09:53:50.323434');
INSERT INTO django_admin_log VALUES(2,'3','us2',1,'[{"added": {}}]',4,1,'2024-04-04 09:54:21.201813');
INSERT INTO django_admin_log VALUES(3,'4','us3',1,'[{"added": {}}]',4,1,'2024-04-04 17:56:28.845634');
INSERT INTO django_admin_log VALUES(4,'9','Thread object (9)',2,'[{"changed": {"fields": ["Participants"]}}]',8,1,'2024-04-04 19:33:40.941096');
INSERT INTO django_admin_log VALUES(5,'1','admin',2,'[{"changed": {"fields": ["Username"]}}]',4,1,'2024-04-04 22:39:22.594057');
INSERT INTO django_admin_log VALUES(6,'1','admin',2,'[{"changed": {"fields": ["Email address"]}}]',4,1,'2024-04-04 22:39:32.169347');
INSERT INTO django_admin_log VALUES(7,'1','admin',2,'[{"changed": {"fields": ["password"]}}]',4,1,'2024-04-04 22:40:16.244313');
INSERT INTO django_admin_log VALUES(8,'1','Thread object (1)',2,'[{"changed": {"name": "message", "object": "Message object (1)", "fields": ["Text"]}}, {"changed": {"name": "message", "object": "Message object (2)", "fields": ["Text"]}}, {"changed": {"name": "message", "object": "Message object (3)", "fields": ["Text"]}}, {"changed": {"name": "message", "object": "Message object (4)", "fields": ["Text"]}}, {"changed": {"name": "message", "object": "Message object (5)", "fields": ["Text"]}}]',8,1,'2024-04-04 22:42:20.075487');
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'chat','message');
INSERT INTO django_content_type VALUES(8,'chat','thread');
INSERT INTO django_content_type VALUES(9,'authtoken','token');
INSERT INTO django_content_type VALUES(10,'authtoken','tokenproxy');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_message','Can add message');
INSERT INTO auth_permission VALUES(26,7,'change_message','Can change message');
INSERT INTO auth_permission VALUES(27,7,'delete_message','Can delete message');
INSERT INTO auth_permission VALUES(28,7,'view_message','Can view message');
INSERT INTO auth_permission VALUES(29,8,'add_thread','Can add thread');
INSERT INTO auth_permission VALUES(30,8,'change_thread','Can change thread');
INSERT INTO auth_permission VALUES(31,8,'delete_thread','Can delete thread');
INSERT INTO auth_permission VALUES(32,8,'view_thread','Can view thread');
INSERT INTO auth_permission VALUES(33,9,'add_token','Can add Token');
INSERT INTO auth_permission VALUES(34,9,'change_token','Can change Token');
INSERT INTO auth_permission VALUES(35,9,'delete_token','Can delete Token');
INSERT INTO auth_permission VALUES(36,9,'view_token','Can view Token');
INSERT INTO auth_permission VALUES(37,10,'add_tokenproxy','Can add token');
INSERT INTO auth_permission VALUES(38,10,'change_tokenproxy','Can change token');
INSERT INTO auth_permission VALUES(39,10,'delete_tokenproxy','Can delete token');
INSERT INTO auth_permission VALUES(40,10,'view_tokenproxy','Can view token');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$390000$roKyKwyPO4W3yBujD0GXyx$iMBkZS/QNeu+yYoA+KZXHO/qP75teIZxJIWSxAG9MJI=','2024-04-04 22:40:50.935727',1,'admin','','',1,1,'2024-04-03 20:46:52','');
INSERT INTO auth_user VALUES(2,'pbkdf2_sha256$390000$m4DsXjIeaIPPixYUayQGar$2jviW8rkBTEMqEmiVK7H6skorpW9rnXm5WJAIDwEVco=',NULL,0,'us1','','',0,1,'2024-04-04 09:53:50.205172','');
INSERT INTO auth_user VALUES(3,'pbkdf2_sha256$390000$t6KxUhtGvHt4joFFkXrhzK$ubH3MVgpkhpGwdZ7sbWG8+gJmaCjDdYlpkCKoIfOW28=',NULL,0,'us2','','',0,1,'2024-04-04 09:54:21.080441','');
INSERT INTO auth_user VALUES(4,'pbkdf2_sha256$390000$75n9JY4SDC96XeFZrGo6SC$Wrs8138wlr+1HsB4ICebbmroTPP8yWdxQgOOV/Q25vk=',NULL,0,'us3','','',0,1,'2024-04-04 17:56:28.723733','');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('ja04dfmb0qvxwmex32lxkw4nmxhlkaf9','.eJxVjEEOwiAQRe_C2pACGRhduvcMZBhAqgaS0q6Md5cmXej2v_f-W3ja1uK3nhY_R3ERSpx-t0D8THUH8UH13iS3ui5zkLsiD9rlrcX0uh7u30GhXkYd0JFWpDKMBjXjxISA2pBxoFxkNKgIrY0aMwADuxy1PQ_k2OlJfL7ffTd6:1rsSaN:8XdMm1-vS7mH0LCmiPv5d3Ra2zq28i3ELB1yqx_0ZQc','2024-04-18 19:17:19.745204');
INSERT INTO django_session VALUES('36m7nwpzhsvejwyl16oww3b2uyrqffeu','.eJxVjDsOwjAQRO_iGln-4Q8lPWew1rs2DiBbipMKcXcSKQVMOe_NvFmEdalxHXmOE7ELk-z02yXAZ247oAe0e-fY2zJPie8KP-jgt075dT3cv4MKo25rgRpQqC0ZzwKNMwEkYNYOAgB5Bca7IksSVpMpZCmgSlC8szIVZdjnC--wOHk:1rsVlK:q5n9c4mqIoCklYg8joP5U2Xif84KrehLmQ-rSMGpIjA','2024-04-18 22:40:50.936904');
CREATE TABLE IF NOT EXISTS "chat_thread" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created" datetime NOT NULL, "updated" datetime NOT NULL);
INSERT INTO chat_thread VALUES(1,'2024-04-04 14:16:28.196925','2024-04-04 22:42:20.073430');
INSERT INTO chat_thread VALUES(8,'2024-04-04 19:04:31.180704','2024-04-04 19:04:31.180775');
INSERT INTO chat_thread VALUES(9,'2024-04-04 19:33:07.570755','2024-04-04 19:33:40.936042');
INSERT INTO chat_thread VALUES(10,'2024-04-04 23:07:18.321619','2024-04-04 23:07:18.321722');
CREATE TABLE IF NOT EXISTS "chat_thread_participants" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "thread_id" bigint NOT NULL REFERENCES "chat_thread" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO chat_thread_participants VALUES(1,1,1);
INSERT INTO chat_thread_participants VALUES(2,1,3);
INSERT INTO chat_thread_participants VALUES(11,8,1);
INSERT INTO chat_thread_participants VALUES(12,8,2);
INSERT INTO chat_thread_participants VALUES(14,9,4);
INSERT INTO chat_thread_participants VALUES(15,9,1);
INSERT INTO chat_thread_participants VALUES(17,10,2);
INSERT INTO chat_thread_participants VALUES(18,10,3);
CREATE TABLE IF NOT EXISTS "chat_message" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "text" text NOT NULL, "created" datetime NOT NULL, "is_read" bool NOT NULL, "sender_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "thread_id" bigint NOT NULL REFERENCES "chat_thread" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO chat_message VALUES(1,'admin msg 1','2024-04-04 15:29:18.232682',1,1,1);
INSERT INTO chat_message VALUES(2,'admin msg 2','2024-04-04 15:45:30.503472',0,1,1);
INSERT INTO chat_message VALUES(3,'admin msg 3','2024-04-04 18:23:26.738448',1,1,1);
INSERT INTO chat_message VALUES(4,'admin msg 4','2024-04-04 18:23:33.276410',0,1,1);
INSERT INTO chat_message VALUES(5,'admin msg 5','2024-04-04 19:51:30.530755',0,1,1);
INSERT INTO chat_message VALUES(8,'user1 msg 1','2024-04-04 22:50:40.402469',1,2,8);
INSERT INTO chat_message VALUES(12,'user1 msg 2','2024-04-04 23:06:06.161012',0,2,8);
CREATE TABLE IF NOT EXISTS "authtoken_token" ("key" varchar(40) NOT NULL PRIMARY KEY, "created" datetime NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO authtoken_token VALUES('da7627f2618de366c6919bc8530e07ea187da5a0','2024-04-04 14:12:29.027642',1);
INSERT INTO authtoken_token VALUES('0247ba69bdec19c17eec8c9fbf8a11c25eed371e','2024-04-04 21:53:06.166828',2);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',22);
INSERT INTO sqlite_sequence VALUES('django_admin_log',8);
INSERT INTO sqlite_sequence VALUES('django_content_type',10);
INSERT INTO sqlite_sequence VALUES('auth_permission',40);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',4);
INSERT INTO sqlite_sequence VALUES('chat_thread',10);
INSERT INTO sqlite_sequence VALUES('chat_thread_participants',18);
INSERT INTO sqlite_sequence VALUES('chat_message',12);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE UNIQUE INDEX "chat_thread_participants_thread_id_user_id_5b426d72_uniq" ON "chat_thread_participants" ("thread_id", "user_id");
CREATE INDEX "chat_thread_participants_thread_id_5167d8b7" ON "chat_thread_participants" ("thread_id");
CREATE INDEX "chat_thread_participants_user_id_83d3d42d" ON "chat_thread_participants" ("user_id");
CREATE INDEX "chat_message_sender_id_991c686c" ON "chat_message" ("sender_id");
CREATE INDEX "chat_message_thread_id_6a43dfba" ON "chat_message" ("thread_id");
COMMIT;