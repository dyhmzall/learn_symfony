#### хешировать пароль

> symfony console security:hash-password

#### добавить админа

> symfony run psql -c "INSERT INTO admin (id, username, roles, password) VALUES (nextval('admin_id_seq'), 'admin', '[\"ROLE_ADMIN\"]', '\$2y\$13\$Zt8Ab3BsT97mzRbHaijkK.6ygGwWRACtOa4Kysz.wVQ8ISnOzVfdy')"