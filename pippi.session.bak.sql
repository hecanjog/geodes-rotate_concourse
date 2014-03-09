PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE config (
    name text primary key,
    value text
);
INSERT INTO "config" VALUES('name','rotate_concourse');
INSERT INTO "config" VALUES('root','b');
INSERT INTO "config" VALUES('bpm','80.0');
INSERT INTO "config" VALUES('snapshots','snapshots/');
INSERT INTO "config" VALUES('a0','27.5');
INSERT INTO "config" VALUES('session','pippi.session');
INSERT INTO "config" VALUES('device','default');
INSERT INTO "config" VALUES('shortname','rot');
INSERT INTO "config" VALUES('sounds','sounds/');
INSERT INTO "config" VALUES('quality','major');
INSERT INTO "config" VALUES('orc','orc/');
INSERT INTO "config" VALUES('tune','terry');
CREATE TABLE shared (
    name text primary key,
    value text
);
INSERT INTO "shared" VALUES('count','5');
CREATE TABLE voices (
    id integer primary key,
    loop bool,
    regenerate bool,
    target_volume real,
    post_volume real,
    once bool,
    uno bool,
    quantize bool,
    plays integer default 0,
    sections integer default 0,
    movements integer default 0,
    generator text
);
INSERT INTO "voices" VALUES(1,1,1,1.0,1.0,0,0,0,1,0,0,'pp');
INSERT INTO "voices" VALUES(2,1,1,1.0,1.0,0,0,0,1,0,0,'pp');
INSERT INTO "voices" VALUES(3,1,1,1.0,1.0,0,0,0,1,0,0,'pp');
INSERT INTO "voices" VALUES(4,1,1,1.0,1.0,0,0,0,1,0,0,'pp');
INSERT INTO "voices" VALUES(5,1,1,1.0,1.0,0,0,0,0,0,0,'pp');
INSERT INTO "voices" VALUES(6,1,1,1.0,1.0,0,0,0,1,0,0,'pp');
INSERT INTO "voices" VALUES(7,1,1,1.0,1.0,0,0,0,0,0,0,'pp');
INSERT INTO "voices" VALUES(8,1,1,1.0,1.0,0,0,0,0,0,0,'pp');
INSERT INTO "voices" VALUES(9,1,1,1.0,1.0,0,0,0,0,0,0,'pp');
INSERT INTO "voices" VALUES(10,1,1,1.0,1.0,0,0,0,0,0,0,'pp');
CREATE TABLE params (
    id integer primary key,
    name text,
    shortname text,
    input_type text,
    output_type text,
    value text,
    cooked text,
    voice_id integer,
    accepts text,
    instance_id integer
);
INSERT INTO "params" VALUES(1,'generator','pp',NULL,'string','pp','pp',1,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(2,'device','device',NULL,'string','default','default',1,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(3,'bpm','bpm',NULL,'float','80.0','80.0',1,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(4,'generator','pp',NULL,'string','pp','pp',2,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(5,'device','device',NULL,'string','default','default',2,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(6,'bpm','bpm',NULL,'float','80.0','80.0',2,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(7,'generator','pp',NULL,'string','pp','pp',3,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(8,'device','device',NULL,'string','default','default',3,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(9,'bpm','bpm',NULL,'float','80.0','80.0',3,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(10,'generator','pp',NULL,'string','pp','pp',4,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(11,'device','device',NULL,'string','default','default',4,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(12,'bpm','bpm',NULL,'float','80.0','80.0',4,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(13,'generator','pp',NULL,'string','pp','pp',5,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(14,'device','device',NULL,'string','default','default',5,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(15,'bpm','bpm',NULL,'float','80.0','80.0',5,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(16,'generator','pp',NULL,'string','pp','pp',6,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(17,'device','device',NULL,'string','default','default',6,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(18,'bpm','bpm',NULL,'float','80.0','80.0',6,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(19,'generator','pp',NULL,'string','pp','pp',7,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(20,'device','device',NULL,'string','default','default',7,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(21,'bpm','bpm',NULL,'float','80.0','80.0',7,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(22,'generator','pp',NULL,'string','pp','pp',8,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(23,'device','device',NULL,'string','default','default',8,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(24,'bpm','bpm',NULL,'float','80.0','80.0',8,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(25,'generator','pp',NULL,'string','pp','pp',9,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(26,'device','device',NULL,'string','default','default',9,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(27,'bpm','bpm',NULL,'float','80.0','80.0',9,'["float", "integer"]',NULL);
INSERT INTO "params" VALUES(28,'generator','pp',NULL,'string','pp','pp',10,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(29,'device','device',NULL,'string','default','default',10,'["alphanumeric"]',NULL);
INSERT INTO "params" VALUES(30,'bpm','bpm',NULL,'float','80.0','80.0',10,'["float", "integer"]',NULL);
CREATE TABLE types (
    id integer primary key,
    name text,
    shortname text,
    output_type text,
    accepts text
);
INSERT INTO "types" VALUES(1,'bend','be',NULL,NULL);
INSERT INTO "types" VALUES(2,'bpm','bpm','float','["float", "integer"]');
INSERT INTO "types" VALUES(3,'generator','generator','string','["alphanumeric"]');
INSERT INTO "types" VALUES(4,'tweet','tw',NULL,NULL);
INSERT INTO "types" VALUES(5,'trigger_id','tt','integer','["integer"]');
INSERT INTO "types" VALUES(6,'sample_index','si','integer','["integer"]');
INSERT INTO "types" VALUES(7,'regenerate','re',NULL,NULL);
INSERT INTO "types" VALUES(8,'hertz','hz','hz-list','["hz-list"]');
INSERT INTO "types" VALUES(9,'waveform','wf','string','["alphanumeric"]');
INSERT INTO "types" VALUES(10,'buffer_index','bi','integer','["integer"]');
INSERT INTO "types" VALUES(11,'buffer_length','bt','frame','["beat", "second", "millisecond", "integer"]');
INSERT INTO "types" VALUES(12,'device','device','string','["alphanumeric"]');
INSERT INTO "types" VALUES(13,'quantize','qu',NULL,NULL);
INSERT INTO "types" VALUES(14,'alias','a',NULL,NULL);
INSERT INTO "types" VALUES(15,'envelope','e','string','["alphanumeric"]');
INSERT INTO "types" VALUES(16,'drum','d','string-list','["string-list"]');
INSERT INTO "types" VALUES(17,'instrument','i','string','["alphanumeric"]');
INSERT INTO "types" VALUES(18,'harmonic','h','integer-list','["integer-list"]');
INSERT INTO "types" VALUES(19,'speed','sp','float','["float", "integer"]');
INSERT INTO "types" VALUES(20,'multiple','m','integer','["integer"]');
INSERT INTO "types" VALUES(21,'octave','o','integer','["integer", "float"]');
INSERT INTO "types" VALUES(22,'note','n','note-list','["note-list"]');
INSERT INTO "types" VALUES(23,'padding','p','frame','["beat", "second", "millisecond", "integer"]');
INSERT INTO "types" VALUES(24,'scale','s','integer-list','["integer-list"]');
INSERT INTO "types" VALUES(25,'repeats','r','integer','["integer"]');
INSERT INTO "types" VALUES(26,'length','t','frame','["beat", "second", "millisecond", "integer"]');
INSERT INTO "types" VALUES(27,'width','w','frame','["integer", "beat", "millisecond", "second"]');
INSERT INTO "types" VALUES(28,'volume','v','float','["integer", "float"]');
CREATE TABLE generators (
    id integer primary key,
    name text,
    shortname text
);
INSERT INTO "generators" VALUES(1,'bell','be');
INSERT INTO "generators" VALUES(2,'pulsar','pp');
INSERT INTO "generators" VALUES(3,'chirp','ch');
INSERT INTO "generators" VALUES(4,'click','cl');
COMMIT;