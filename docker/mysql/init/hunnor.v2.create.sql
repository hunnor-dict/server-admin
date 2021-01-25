CREATE TABLE IF NOT EXISTS hn_hun_segment (
  id INT(10) NOT NULL,
  entry INT(10) NOT NULL,
  orth VARCHAR(128) NOT NULL,
  pos VARCHAR(8) NOT NULL,
  par VARCHAR(4) NOT NULL,
  seq TINYINT(3) NOT NULL,
  status TINYINT(3) NOT NULL
);

CREATE INDEX HN_ID ON hn_hun_segment(id);
CREATE INDEX HN_ENTRY ON hn_hun_segment(entry);
CREATE INDEX HN_ORTH ON hn_hun_segment(orth);

CREATE TABLE IF NOT EXISTS hn_hun_tr_nob_tmp (
  id INT(10) NOT NULL,
  trans TEXT NOT NULL
);

CREATE INDEX HN_TR ON hn_hun_tr_nob_tmp(id);

CREATE TABLE IF NOT EXISTS hn_nob_segment (
  id INT(10) NOT NULL,
  entry INT(10) NOT NULL,
  orth VARCHAR(128) NOT NULL,
  pos VARCHAR(8) NOT NULL,
  par VARCHAR(4) NOT NULL,
  seq TINYINT(3) NOT NULL,
  status TINYINT(3) NOT NULL
);

CREATE INDEX NH_ID ON hn_nob_segment(id);
CREATE INDEX NH_ENTRY ON hn_nob_segment(entry);
CREATE INDEX NH_ORTH ON hn_nob_segment(orth);

CREATE TABLE IF NOT EXISTS hn_nob_tr_hun_tmp (
  id INT(10) NOT NULL,
  trans TEXT NOT NULL
);

CREATE INDEX NH_TR ON hn_nob_tr_hun_tmp(id);
