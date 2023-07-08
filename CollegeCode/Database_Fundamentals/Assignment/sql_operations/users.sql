--usuário que só pode ler os dados do banco
CREATE USER readonly_user WITH PASSWORD '123';

GRANT CONNECT ON DATABASE titos_hotel TO readonly_user;
GRANT USAGE ON SCHEMA public TO readonly_user;

GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public
   GRANT SELECT ON TABLES TO readonly_user;


--usuário com acesso administrativo
CREATE USER admin_user WITH PASSWORD 'lucastito!@' SUPERUSER;
