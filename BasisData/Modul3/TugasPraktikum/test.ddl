-- Generated by Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   at:        2023-05-02 05:42:35 ICT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE contoh.action (
    actionid                NUMBER(*, 0) NOT NULL,
    description             VARCHAR2(255 BYTE) NOT NULL,
    ticket_ticketid         NUMBER(*, 0) NOT NULL,
    user_userid             NUMBER(*, 0) NOT NULL,
    department_departmentid NUMBER(*, 0) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.action_pk ON
    contoh.action (
        actionid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.action
    ADD CONSTRAINT action_pk PRIMARY KEY ( actionid )
        USING INDEX contoh.action_pk;
CREATE TABLE contoh.category (
    categoryid NUMBER(*, 0) NOT NULL,
    name       VARCHAR2(255 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.category_pk ON
    contoh.category (
        categoryid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.category
    ADD CONSTRAINT category_pk PRIMARY KEY ( categoryid )
        USING INDEX contoh.category_pk;
CREATE TABLE contoh.certificate (
    certificateid   NUMBER(*, 0) NOT NULL,
    name            VARCHAR2(50 BYTE) NOT NULL,
    reward_rewardid NUMBER(*, 0) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.certificate_pk ON
    contoh.certificate (
        certificateid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.certificate
    ADD CONSTRAINT certificate_pk PRIMARY KEY ( certificateid )
        USING INDEX contoh.certificate_pk;
CREATE TABLE contoh."Comment" (
    commentid       NUMBER(*, 0) NOT NULL,
    text            VARCHAR2(255 BYTE) NOT NULL,
    createddate     DATE NOT NULL,
    ticket_ticketid NUMBER(*, 0) NOT NULL,
    user_userid     NUMBER(*, 0) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.comment_pk ON
    contoh."Comment" (
        commentid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh."Comment"
    ADD CONSTRAINT comment_pk PRIMARY KEY ( commentid )
        USING INDEX contoh.comment_pk;
CREATE TABLE contoh.department (
    departmentid NUMBER(*, 0) NOT NULL,
    name         VARCHAR2(255 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.department_pk ON
    contoh.department (
        departmentid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.department
    ADD CONSTRAINT department_pk PRIMARY KEY ( departmentid )
        USING INDEX contoh.department_pk;
CREATE TABLE contoh.money (
    moneyid         NUMBER(*, 0) NOT NULL,
    amount          NUMBER(*, 0) NOT NULL,
    reward_rewardid NUMBER(*, 0) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.money_pk ON
    contoh.money (
        moneyid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.money
    ADD CONSTRAINT money_pk PRIMARY KEY ( moneyid )
        USING INDEX contoh.money_pk;
CREATE TABLE contoh.priority (
    priorityid NUMBER(*, 0) NOT NULL,
    name       VARCHAR2(255 BYTE) NOT NULL,
    "Level"    VARCHAR2(255 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.priority_pk ON
    contoh.priority (
        priorityid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.priority
    ADD CONSTRAINT priority_pk PRIMARY KEY ( priorityid )
        USING INDEX contoh.priority_pk;
CREATE TABLE contoh.redemption (
    redemptionid    NUMBER(*, 0) NOT NULL,
    ticket_ticketid NUMBER(*, 0) NOT NULL,
    user_userid     NUMBER(*, 0) NOT NULL,
    reward_rewardid NUMBER(*, 0) NOT NULL,
    tanggal_redeem  DATE,
    status_redeem   VARCHAR2(255 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.redemption_pk ON
    contoh.redemption (
        redemptionid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.redemption
    ADD CONSTRAINT redemption_pk PRIMARY KEY ( redemptionid )
        USING INDEX contoh.redemption_pk;
CREATE TABLE contoh.reward (
    rewardid         NUMBER(*, 0) NOT NULL,
    name             VARCHAR2(255 BYTE) NOT NULL,
    deskripsi_reward VARCHAR2(255 BYTE) NOT NULL,
    jenis_reward     VARCHAR2(255 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.reward_pk ON
    contoh.reward (
        rewardid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.reward
    ADD CONSTRAINT reward_pk PRIMARY KEY ( rewardid )
        USING INDEX contoh.reward_pk;
CREATE TABLE contoh.ticket (
    ticketid                NUMBER(*, 0) NOT NULL,
    title                   VARCHAR2(255 BYTE) NOT NULL,
    description             VARCHAR2(255 BYTE) NOT NULL,
    priority_priorityid     NUMBER(*, 0) NOT NULL,
    category_categoryid     NUMBER(*, 0) NOT NULL,
    user_userid             NUMBER(*, 0) NOT NULL,
    department_departmentid NUMBER(*, 0) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    );

CREATE UNIQUE INDEX contoh.ticket_pk ON
    contoh.ticket (
        ticketid
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE contoh.ticket
    ADD CONSTRAINT ticket_pk PRIMARY KEY ( ticketid )
        USING INDEX contoh.ticket_pk;
ALTER TABLE contoh.action
    ADD CONSTRAINT action_department_fk FOREIGN KEY ( department_departmentid )
        REFERENCES contoh.department ( departmentid )
    NOT DEFERRABLE;
ALTER TABLE contoh.action
    ADD CONSTRAINT action_ticket_fk FOREIGN KEY ( ticket_ticketid )
        REFERENCES contoh.ticket ( ticketid )
    NOT DEFERRABLE;
ALTER TABLE contoh.certificate
    ADD CONSTRAINT certificate_reward_fk FOREIGN KEY ( reward_rewardid )
        REFERENCES contoh.reward ( rewardid )
    NOT DEFERRABLE;
ALTER TABLE contoh."Comment"
    ADD CONSTRAINT comment_ticket_fk FOREIGN KEY ( ticket_ticketid )
        REFERENCES contoh.ticket ( ticketid )
    NOT DEFERRABLE;
ALTER TABLE contoh.money
    ADD CONSTRAINT money_reward_fk FOREIGN KEY ( reward_rewardid )
        REFERENCES contoh.reward ( rewardid )
    NOT DEFERRABLE;
ALTER TABLE contoh.redemption
    ADD CONSTRAINT redemption_reward_fk FOREIGN KEY ( reward_rewardid )
        REFERENCES contoh.reward ( rewardid )
    NOT DEFERRABLE;
ALTER TABLE contoh.redemption
    ADD CONSTRAINT redemption_ticket_fk FOREIGN KEY ( ticket_ticketid )
        REFERENCES contoh.ticket ( ticketid )
    NOT DEFERRABLE;
ALTER TABLE contoh.ticket
    ADD CONSTRAINT ticket_category_fk FOREIGN KEY ( category_categoryid )
        REFERENCES contoh.category ( categoryid )
    NOT DEFERRABLE;
ALTER TABLE contoh.ticket
    ADD CONSTRAINT ticket_department_fk FOREIGN KEY ( department_departmentid )
        REFERENCES contoh.department ( departmentid )
    NOT DEFERRABLE;
ALTER TABLE contoh.ticket
    ADD CONSTRAINT ticket_priority_fk FOREIGN KEY ( priority_priorityid )
        REFERENCES contoh.priority ( priorityid )
    NOT DEFERRABLE;

-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                            10
-- CREATE VIEW                              0
-- ALTER TABLE                             20
-- ALTER INDEX                              0
-- ALTER VIEW                               0
-- DROP TABLE                               0
-- DROP INDEX                               0
-- DROP VIEW                                0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- DROP PACKAGE                             0
-- DROP PACKAGE BODY                        0
-- DROP PROCEDURE                           0
-- DROP FUNCTION                            0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- DROP TRIGGER                             0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- DROP TYPE                                0
-- CREATE SEQUENCE                          0
-- ALTER SEQUENCE                           0
-- DROP SEQUENCE                            0
-- CREATE MATERIALIZED VIEW                 0
-- DROP MATERIALIZED VIEW                   0
-- CREATE SYNONYM                           0
-- DROP SYNONYM                             0
-- CREATE DIMENSION                         0
-- DROP DIMENSION                           0
-- CREATE CONTEXT                           0
-- DROP CONTEXT                             0
-- CREATE DIRECTORY                         0
-- DROP DIRECTORY                           0

-- 
-- ERRORS                                   0
-- WARNINGS                                 0
