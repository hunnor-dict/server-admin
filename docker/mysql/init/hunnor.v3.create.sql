CREATE TABLE HN_HU_LEMMA (
  LEMMA_ID int(8) NOT NULL,
  GRUNNFORM varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE HN_HU_ENTRY (
  ENTRY_ID int(8) NOT NULL,
  POS varchar(25) NOT NULL,
  STATUS int(2) NOT NULL,
  TRANSLATION longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE HN_HU_ENTRY_LEMMA (
  ENTRY_ID int(8) NOT NULL,
  LEMMA_ID int(8) NOT NULL,
  PARADIGME_ID varchar(5),
  BOY_NUMMER int(2),
  WEIGHT int(4),
  SOURCE int(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE INDEX I_HN_HU_ENTRY_STATUS ON HN_HU_ENTRY(STATUS);

CREATE INDEX I_HN_HU_ENTRY_LEMMA_ENTRY_ID ON HN_HU_ENTRY_LEMMA(ENTRY_ID);

CREATE INDEX I_HN_HU_LEMMA_LEMMA_ID ON HN_HU_LEMMA(LEMMA_ID);





CREATE TABLE HN_NB_LEMMA (
  LEMMA_ID int(8) NOT NULL,
  GRUNNFORM varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE HN_NB_LEMMA_PARADIGME (
  LEMMA_ID int(8) NOT NULL,
  PARADIGME_ID varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE HN_NB_ENTRY (
  ENTRY_ID int(8) NOT NULL,
  POS varchar(25) NOT NULL,
  STATUS int(2) NOT NULL,
  TRANSLATION longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE HN_NB_ENTRY_LEMMA (
  ENTRY_ID int(8) NOT NULL,
  LEMMA_ID int(8) NOT NULL,
  PARADIGME_ID varchar(5),
  BOY_NUMMER int(2),
  WEIGHT int(4),
  SOURCE int(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE INDEX I_HN_NB_ENTRY_STATUS ON HN_NB_ENTRY(STATUS);

CREATE INDEX I_HN_NB_ENTRY_LEMMA_ENTRY_ID ON HN_NB_ENTRY_LEMMA(ENTRY_ID);

CREATE INDEX I_HN_NB_LEMMA_LEMMA_ID ON HN_NB_LEMMA(LEMMA_ID);

CREATE INDEX I_HN_NB_LEMMA_PARADIGME_LEMMA_ID ON HN_NB_LEMMA_PARADIGME(LEMMA_ID);
