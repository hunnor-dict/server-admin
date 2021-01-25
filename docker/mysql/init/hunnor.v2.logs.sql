CREATE TABLE IF NOT EXISTS hn_log_edit (
  editor_id varchar(16) NOT NULL,
  lang varchar(4) NOT NULL,
  entry_id int(11) NOT NULL,
  action varchar(8) NOT NULL,
  timestamp bigint(11) NOT NULL
);
