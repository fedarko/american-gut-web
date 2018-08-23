CREATE TABLE ag.vioscreen_foodcomponents (
  amount               float8  NOT NULL,
  code                 varchar  NOT NULL,
  description          varchar(500)  ,
  survey_id            varchar  NOT NULL,
  units                varchar  NOT NULL,
  valueType            varchar,
  CONSTRAINT pk_vioscreen_foodcomponents PRIMARY KEY ( survey_id, code )
);

CREATE TABLE ag.vioscreen_percentenergy (
  amount               float8  NOT NULL,
  code                 varchar  NOT NULL,
  description          varchar(500)  ,
  foodComponentType    int  ,
  foodDataDefinition   varchar  ,
  precision            int  ,
  shortDescription     varchar  ,
  survey_id            varchar  NOT NULL,
  units                varchar  NOT NULL,
  CONSTRAINT pk_vioscreen_percentenergy PRIMARY KEY ( survey_id, code )
);

CREATE TABLE ag.vioscreen_mpeds (
  amount               float8  NOT NULL,
  code                 varchar  NOT NULL,
  description          varchar(500)  ,
  survey_id            varchar  NOT NULL,
  units                varchar  NOT NULL,
  valueType            varchar  ,
  CONSTRAINT pk_vioscreen_mpeds PRIMARY KEY ( survey_id, code )
);

CREATE TABLE ag.vioscreen_eatingpatterns (
  amount               float8  NOT NULL,
  code                 varchar  NOT NULL,
  description          varchar(500)  ,
  survey_id            varchar  NOT NULL,
  units                varchar  NOT NULL,
  valueType            varchar  ,
  CONSTRAINT pk_vioscreen_eatingpatterns PRIMARY KEY ( survey_id, code )
);

CREATE TABLE ag.vioscreen_foodconsumption (
  amount               float8  NOT NULL,
  consumptionAdjustment float8  ,
  created              varchar  ,
  data                 json  NOT NULL,
  description          varchar(500)  ,
  foodCode             int  NOT NULL,
  foodGroup            varchar  NOT NULL,
  frequency            int  NOT NULL,
  servingFrequencyText varchar(500)  NOT NULL,
  servingSizeText      varchar(500)  NOT NULL,
  survey_id            varchar  NOT NULL,
  CONSTRAINT pk_vioscreen_foodconsumption PRIMARY KEY ( survey_id, foodCode )
);

CREATE TABLE ag.vioscreen_dietaryscore (
  lowerLimit           float8  ,
  name                 varchar  NOT NULL,
  score                float8  NOT NULL,
  survey_id            varchar  NOT NULL,
  type                 varchar  NOT NULL,
  upperLimit           float8  ,
  CONSTRAINT pk_vioscreen_dietaryscore PRIMARY KEY ( survey_id, type )
);

CREATE TABLE ag.vioscreen_surveys (
  status               varchar  NOT NULL,
  survey_id            varchar  NOT NULL
  pulldown_date        varchar  ,
  CONSTRAINT pk_vioscreen_surveys PRIMARY KEY ( survey_id )
);
