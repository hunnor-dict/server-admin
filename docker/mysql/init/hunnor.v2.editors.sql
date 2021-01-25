CREATE TABLE IF NOT EXISTS hn_adm_editors (
  id varchar(16) NOT NULL,
  provider varchar(16) NOT NULL,
  uid varchar(64) NOT NULL
);

INSERT INTO hn_adm_editors(id, provider, uid) VALUES ('adam', 'facebook', '570487915');
INSERT INTO hn_adm_editors(id, provider, uid) VALUES ('adam', 'linkedin', 'TRpE2vvpzM');
