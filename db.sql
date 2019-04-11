CREATE TABLE QuestionsICE(
  ID BIGINT PRIMARY KEY,
  QuestionText VARCHAR(255) NOT NULL,
  OptionCount INT NOT NULL
);

CREATE TABLE QuestionsENG(
  ID BIGINT PRIMARY KEY,
  QuestionText VARCHAR(255) NOT NULL,
  OptionCount INT NOT NULL
);

CREATE TABLE QuestionsPOL(
  ID BIGINT PRIMARY KEY,
  QuestionText VARCHAR(255) NOT NULL,
  OptionCount INT NOT NULL
);

CREATE TABLE OptionsICE(
  ID BIGINT PRIMARY KEY,
  OptionText VARCHAR(255) NOT NULL
);

CREATE TABLE OptionsENG(
  ID BIGINT PRIMARY KEY,
  OptionText VARCHAR(255) NOT NULL
);

CREATE TABLE OptionsPOL(
  ID BIGINT PRIMARY KEY,
  OptionText VARCHAR(255) NOT NULL
);

CREATE TABLE PhoneNumbers(
  ID BIGINT PRIMARY KEY,
  Number VARCHAR(100) NOT NULL
);

CREATE TABLE AssistanceResourcesICE(
  ID BIGINT PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Link TEXT NOT NULL,
  Description TEXT NOT NULL,
  PhoneNumberCount INT NOT NULL
);

CREATE TABLE AssistanceResourcesENG(
  ID BIGINT PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Link TEXT NOT NULL,
  Description TEXT NOT NULL,
  PhoneNumberCount INT NOT NULL
);

CREATE TABLE AssistanceResourcesPOL(
  ID BIGINT PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Link TEXT NOT NULL,
  Description TEXT NOT NULL,
  PhoneNumberCount INT NOT NULL
);

CREATE TABLE PhoneNumbersForResourcesICE(
  ID BIGINT PRIMARY KEY,
  PhoneNumberID BIGINT NOT NULL REFERENCES PhoneNumbers(ID),
  AssistanceResourceID BIGINT NOT NULL REFERENCES AssistanceResourcesICE(ID)
);

CREATE TABLE PhoneNumbersForResourcesENG(
  ID BIGINT PRIMARY KEY,
  PhoneNumberID BIGINT NOT NULL REFERENCES PhoneNumbers(ID),
  AssistanceResourceID BIGINT NOT NULL REFERENCES AssistanceResourcesENG(ID)
);

CREATE TABLE PhoneNumbersForResourcesPOL(
  ID BIGINT PRIMARY KEY,
  PhoneNumberID BIGINT NOT NULL REFERENCES PhoneNumbers(ID),
  AssistanceResourceID BIGINT NOT NULL REFERENCES AssistanceResourcesPOL(ID)
);

CREATE TABLE OptionsForAnswersICE(
  ID BIGINT PRIMARY KEY,
  QuestionID BIGINT NOT NULL REFERENCES QuestionsICE(ID),
  OptionID BIGINT NOT NULL REFERENCES OptionsICE(ID),
  NextQuestionID BIGINT REFERENCES QuestionsICE(ID)
);

CREATE TABLE OptionsForAnswersENG(
  ID BIGINT PRIMARY KEY,
  QuestionID BIGINT NOT NULL REFERENCES QuestionsENG(ID),
  OptionID BIGINT NOT NULL REFERENCES OptionsENG(ID),
  NextQuestionID BIGINT REFERENCES QuestionsENG(ID)
);

CREATE TABLE OptionsForAnswersPOL(
  ID BIGINT PRIMARY KEY,
  QuestionID BIGINT NOT NULL REFERENCES QuestionsPOL(ID),
  OptionID BIGINT NOT NULL REFERENCES OptionsPOL(ID),
  NextQuestionID BIGINT REFERENCES QuestionsPOL(ID)
);

CREATE TABLE SavedAnswers(
  ID BIGINT PRIMARY KEY,
  Answers VARCHAR(255) NOT NULL
);

INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (1, 'Kyn?', 3);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (2, 'Aldursbil?', 5);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (3, 'Hjúskaparstaða?', 3);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (4, 'Hefurðu neytt áfengis?', 2);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (5, 'Í síðast liðnum mánuði, hversu oft hefurðu neytt áfengis?', 5);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (6, 'Hefur þú orðið fyrir andlegu eða líkamlegu ofbeldi af hálfu núverandi maka?', 2);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (7, 'Hefur þú orðið fyrir andlegu eða líkamlegu ofbeldi af hálfu samstarfsaðila á síðast liðnum 2 mánuðum? \n (til dæmis einelti á vinnustað, hópþrýstingur í eitthvað sem þú sást eftir o.s.frv)', 2);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (8, 'Hefur þú orðið fyrir alvarlegu andlegu eða líkamlegu ofbeldu af hálfu foreldra, systkyna eða annarra fjölskyldu meðlima á síðustu 2 mánuðum?', 2);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (9, 'Hefur þú neytt vímuefna (heróin eða stek verkjalyf, kannabis efni, amfetamín, alsæla, kókaín, sveppir eða sambærileg efni) á síðustu 2 mánuðum?', 2);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (10, 'Hversu oft hefur þú neytt vímuefna á síðastliðnum mánuði?', 6);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (11, 'Finnst þér þú finna fyrir mismunun í samfélaginu vegna uppruna þíns?', 2);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (12, 'Hefur einhver náin þér dáið á síðastliðnum 2 mánuðum?', 2);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (13, 'Hversu vel á eftirfarandi fullyrðing við um þig: \n -"Ég hef fundið fyrir depurð á síðustu 2 mánuðum"?', 5);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (14, 'Hversu vel á eftirfarandi fullyrðing við um þig: \n -"Ég hef hugsað um líflát á síðustu 2 mánuðum"?', 5);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (15, 'Hversu vel á eftirfarandi fullyrðing við um þig: \n -"Ég hef fundið fyrir einmanaleika á síðustu 2 mánuðum"?', 5);
INSERT INTO QuestionsICE (ID, QuestionText, OptionCount) VALUES (16, 'Hversu vel á eftirfarandi fullyrðing við um þig: \n -"Ég hef fundið fyrir óánægju í einu eða fleirum af mínum samböndum á síðustu 2 mánuðum"?', 5);

INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (1, 'Gender?', 3);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (2, 'Age range?', 5);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (3, 'Relationship Status?', 3);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (4, 'Have you consumed alcohol?', 2);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (5, 'How often have you consumed alcohol in the last month?', 5);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (6, 'Have you been subjected to mental or physical abuse by your current spouse?', 2);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (7, 'Have you been subjected to mental or physical abuse by a coworker/s in the last 2 months?', 2);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (8, 'Have you been subjected to severe mental or physical abuse by a parent, sibling or other family member in the last 2 months?', 2);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (9, 'Have you used drugs (heroin or strong pain medication, kannabis, amfetamin, cocaine, mushrooms or other comparable substances) in the last 2 months?', 2);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (10, 'How often have you used drugs in the last month', 6);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (11, 'Do you feel oppressed in the community due to your origin?', 2);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (12, 'Has anyone close to you died in the last 2 months?', 2);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (13, 'How well does the following statement apply to you: "I have felt sad in the last 2 months"?', 5);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (14, 'How well does the following statement apply to you: "I have considered suicide in the last 2 months"?', 5);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (15, 'How well does the following statement apply to you: "I have felt lonely in the last 2 months"?', 5);
INSERT INTO QuestionsENG (ID, QuestionText, OptionCount) VALUES (16, 'How well does the following statement apply to you: "I have felt unhappy in one or more of my relationships in the last 2 months"?', 5);

INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (1, 'Jaka jest twoja plec?', 3);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (2, 'Jaki jest twoj wiek?', 5);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (3, 'Jaki jest twij status zwiazkowy?', 3); 
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (4, 'Czy uzywales/as kiedy alkoholu?', 2);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (5, 'W ubieglym miesiacu, jak czesto uzywales/uzywalas alkohol?', 5);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (6, 'Czy cierpiałeś/as na fizycznym lub psychincznym znęcaniu się przez współmałżonka?', 2);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (7, 'Czy cierpiales/as na fizycznym lub psychincznym znecaniu sie przez partnera w pracy w ostnich dwoch miesiacach (na przykład zastraszanie w miejscu pracy, nacisk grupy na coś, co potem zalowales/as)?', 2);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (8, 'Czy cierpiales/as fizycznie lub psychicznie przez rodzicow, rodzenstwo albo kogos z rodziny?', 2);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (9, 'Czy spożywałeś/as narkotyki (heroinę i silne środki przeciwbólowe, kannabis( hass albo marihuanę) amfetaminy, kokainę, grzyby lub podobne substancje) ?', 2);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (10, 'Jak czesto spozywlaes/as narkotyki przed ostatni miesiac?', 6);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (11, 'Odczuwasz wyroznienie w spoleczenstwie przez swoje pochodzenie?', 2);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (12, ' Czy ktos bliksi ciebie zmarl w ciagu ostatnich 2 miesiecy?', 2);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (13, 'Ktore okreslnie najbardziej pasuje do Ciebie: "Czułem smutek w ciągu ostatnich 2 miesięcy"?', 5);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (14, 'Ktore okreslnie najbardziej pasuje do Ciebie: "Myślałem o samobjostwu w ciągu ostatnich 2 miesięcy"?', 5);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (15, 'Ktore okreslnie najbardziej pasuje do Ciebie: "Czułem samotność w ciągu ostatnich 2 miesięcy"?', 5);
INSERT INTO QuestionsPOL (ID, QuestionText, OptionCount) VALUES (16, 'Ktore okreslnie najbardziej pasuje do Ciebie: "Czułem niezadowolenie z jednego lub więcej moich związków w ciągu ostatnich 3 miesięcy"?', 5);


INSERT INTO OptionsICE (ID, OptionText) VALUES (1, 'Karlkyns');
INSERT INTO OptionsICE (ID, OptionText) VALUES (2, 'Kvenkyns');
INSERT INTO OptionsICE (ID, OptionText) VALUES (3, 'Annað');
INSERT INTO OptionsICE (ID, OptionText) VALUES (4, '< 18');
INSERT INTO OptionsICE (ID, OptionText) VALUES (5, '18 - 35');
INSERT INTO OptionsICE (ID, OptionText) VALUES (6, '35 - 50');
INSERT INTO OptionsICE (ID, OptionText) VALUES (7, '50 - 67');
INSERT INTO OptionsICE (ID, OptionText) VALUES (8, '> 67');
INSERT INTO OptionsICE (ID, OptionText) VALUES (9, 'Einhleypur');
INSERT INTO OptionsICE (ID, OptionText) VALUES (10, 'Sambúð');
INSERT INTO OptionsICE (ID, OptionText) VALUES (11, 'Kvænt/ur');
INSERT INTO OptionsICE (ID, OptionText) VALUES (12, 'Já');
INSERT INTO OptionsICE (ID, OptionText) VALUES (13, 'Nei');
INSERT INTO OptionsICE (ID, OptionText) VALUES (14, 'Ekkert');
INSERT INTO OptionsICE (ID, OptionText) VALUES (15, 'Einu sinni til tvisvar');
INSERT INTO OptionsICE (ID, OptionText) VALUES (16, 'Þrisvar til fjórum sinnum');
INSERT INTO OptionsICE (ID, OptionText) VALUES (17, 'Fjórum til sjö sinnum');
INSERT INTO OptionsICE (ID, OptionText) VALUES (18, 'Oftar en átta sinnum');
INSERT INTO OptionsICE (ID, OptionText) VALUES (19, 'Einu sinni til þrisvar á mánuði');
INSERT INTO OptionsICE (ID, OptionText) VALUES (20, 'Einu sinni á tveggja vikna fresti');
INSERT INTO OptionsICE (ID, OptionText) VALUES (21, 'Einu sinni til þrisvar í viku');
INSERT INTO OptionsICE (ID, OptionText) VALUES (22, 'Næstum alla daga');
INSERT INTO OptionsICE (ID, OptionText) VALUES (23, 'Alla daga');
INSERT INTO OptionsICE (ID, OptionText) VALUES (24, 'Mjög sammála');
INSERT INTO OptionsICE (ID, OptionText) VALUES (25, 'Frekar sammála');
INSERT INTO OptionsICE (ID, OptionText) VALUES (26, 'Hvorki né');
INSERT INTO OptionsICE (ID, OptionText) VALUES (27, 'Frekar ósammála');
INSERT INTO OptionsICE (ID, OptionText) VALUES (28, 'Mjög ósammála');

INSERT INTO OptionsENG (ID, OptionText) VALUES (1, 'Male');
INSERT INTO OptionsENG (ID, OptionText) VALUES (2, 'Female');
INSERT INTO OptionsENG (ID, OptionText) VALUES (3, 'Other');
INSERT INTO OptionsENG (ID, OptionText) VALUES (4, '< 18');
INSERT INTO OptionsENG (ID, OptionText) VALUES (5, '18 - 35');
INSERT INTO OptionsENG (ID, OptionText) VALUES (6, '35 - 50');
INSERT INTO OptionsENG (ID, OptionText) VALUES (7, '50 - 67');
INSERT INTO OptionsENG (ID, OptionText) VALUES (8, '> 67');
INSERT INTO OptionsENG (ID, OptionText) VALUES (9, 'Single');
INSERT INTO OptionsENG (ID, OptionText) VALUES (10, 'Living together');
INSERT INTO OptionsENG (ID, OptionText) VALUES (11, 'Married');
INSERT INTO OptionsENG (ID, OptionText) VALUES (12, 'Yes');
INSERT INTO OptionsENG (ID, OptionText) VALUES (13, 'No');
INSERT INTO OptionsENG (ID, OptionText) VALUES (14, 'Never');
INSERT INTO OptionsENG (ID, OptionText) VALUES (15, 'Once or twice');
INSERT INTO OptionsENG (ID, OptionText) VALUES (16, 'Three or four times');
INSERT INTO OptionsENG (ID, OptionText) VALUES (17, 'Four to seven times');
INSERT INTO OptionsENG (ID, OptionText) VALUES (18, 'More than eight times');
INSERT INTO OptionsENG (ID, OptionText) VALUES (19, 'Once to three times a month');
INSERT INTO OptionsENG (ID, OptionText) VALUES (20, 'Once every two weeks');
INSERT INTO OptionsENG (ID, OptionText) VALUES (21, 'Once to three times a week');
INSERT INTO OptionsENG (ID, OptionText) VALUES (22, 'Almost every day');
INSERT INTO OptionsENG (ID, OptionText) VALUES (23, 'Every day');
INSERT INTO OptionsENG (ID, OptionText) VALUES (24, 'Highly agree');
INSERT INTO OptionsENG (ID, OptionText) VALUES (25, 'Somewhat agree');
INSERT INTO OptionsENG (ID, OptionText) VALUES (26, 'Impartial');
INSERT INTO OptionsENG (ID, OptionText) VALUES (27, 'Somewhat disagree');
INSERT INTO OptionsENG (ID, OptionText) VALUES (28, 'Highly disagree');


INSERT INTO OptionsPOL (ID, OptionText) VALUES (1, 'Mezczyzna');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (2, 'Kobieta');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (3, 'Inne');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (4, '< 18');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (5, '18 - 35');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (6, '35 - 50');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (7, '50 - 67');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (8, '> 67');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (9, 'Samotny');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (10, 'W zwiazku');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (11, 'zonata/zonaty');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (12, 'Tak');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (13, 'Nie');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (14, 'Wogule');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (15, 'Raz do dwoch razy');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (16, 'Trzy do czterech razy');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (17, 'Cztery do siedem razy');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (18, 'Wiecej niz osiem razy');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (19, 'Raz do trzech razy w miesiacu');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (20, 'Raz w ciagu dwoch tygnodi');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (21, 'Raz do trzech razy w tygodniu');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (22, 'Prawie codziennie');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (23, 'Codziennie');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (24, 'Bardzo się zgadzam');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (25, 'Raczej się zgadzam');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (26, 'PHHvorki né');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (27, 'Raczej się nie zgadzaj');
INSERT INTO OptionsPOL (ID, OptionText) VALUES (28, 'Bardzo się nie zgadzam');


INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (1, 1, 1, 2);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (2, 1, 2, 2);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (3, 1, 3, 2);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (4, 2, 4, 3);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (5, 2, 5, 3);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (6, 2, 6, 3);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (7, 2, 7, 3);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (8, 2, 8, 3);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (9, 3, 9, 4);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (10, 3, 10, 4);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (11, 3, 11, 4);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (12, 4, 12, 5);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (13, 4, 13, 6);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (14, 5, 14, 6);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (15, 5, 15, 6);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (16, 5, 16, 6);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (17, 5, 17, 6);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (18, 5, 18, 6);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (19, 6, 12, 7);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (20, 6, 13, 7);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (21, 7, 12, 8);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (22, 7, 13, 8);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (23, 8, 12, 9);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (24, 8, 13, 9);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (25, 9, 12, 10);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (26, 9, 13, 11);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (27, 10, 14, 11);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (28, 10, 19, 11);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (29, 10, 20, 11);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (30, 10, 21, 11);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (31, 10, 22, 11);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (32, 10, 23, 11);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (33, 11, 12, 12);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (34, 11, 13, 12);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (35, 12, 12, 13);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (36, 12, 13, 13);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (37, 13, 24, 14);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (38, 13, 25, 14);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (39, 13, 26, 14);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (40, 13, 27, 14);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (41, 13, 28, 14);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (42, 14, 24, 15);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (43, 14, 25, 15);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (44, 14, 26, 15);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (45, 14, 27, 15);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (46, 14, 28, 15);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (47, 15, 24, 16);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (48, 15, 25, 16);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (49, 15, 26, 16);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (50, 15, 27, 16);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID, NextQuestionID) VALUES (51, 15, 28, 16);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID) VALUES (52, 16, 24);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID) VALUES (53, 16, 25);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID) VALUES (54, 16, 26);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID) VALUES (55, 16, 27);
INSERT INTO OptionsForAnswersICE (ID, QuestionID, OptionID) VALUES (56, 16, 28);


INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (1, 1, 1, 2);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (2, 1, 2, 2);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (3, 1, 3, 2);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (4, 2, 4, 3);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (5, 2, 5, 3);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (6, 2, 6, 3);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (7, 2, 7, 3);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (8, 2, 8, 3);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (9, 3, 9, 4);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (10, 3, 10, 4);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (11, 3, 11, 4);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (12, 4, 12, 5);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (13, 4, 13, 6);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (14, 5, 14, 6);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (15, 5, 15, 6);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (16, 5, 16, 6);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (17, 5, 17, 6);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (18, 5, 18, 6);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (19, 6, 12, 7);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (20, 6, 13, 7);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (21, 7, 12, 1);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (22, 7, 13, 1);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (23, 8, 12, 9);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (24, 8, 13, 9);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (25, 9, 12, 10);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (26, 9, 13, 11);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (27, 10, 14, 11);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (28, 10, 19, 11);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (29, 10, 20, 11);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (30, 10, 21, 11);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (31, 10, 22, 11);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (32, 10, 23, 11);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (33, 11, 12, 12);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (34, 11, 13, 12);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (35, 12, 12, 13);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (36, 12, 13, 13);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (37, 13, 24, 14);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (38, 13, 25, 14);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (39, 13, 26, 14);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (40, 13, 27, 14);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (41, 13, 28, 14);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (42, 14, 24, 15);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (43, 14, 25, 15);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (44, 14, 26, 15);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (45, 14, 27, 15);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (46, 14, 28, 15);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (47, 15, 24, 16);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (48, 15, 25, 16);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (49, 15, 26, 16);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (50, 15, 27, 16);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID, NextQuestionID) VALUES (51, 15, 28, 16);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID) VALUES (52, 16, 24);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID) VALUES (53, 16, 25);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID) VALUES (54, 16, 26);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID) VALUES (55, 16, 27);
INSERT INTO OptionsForAnswersENG (ID, QuestionID, OptionID) VALUES (56, 16, 28);


INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (1, 1, 1, 2);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (2, 1, 2, 2);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (3, 1, 3, 2);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (4, 2, 4, 3);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (5, 2, 5, 3);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (6, 2, 6, 3);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (7, 2, 7, 3);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (8, 2, 8, 3);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (9, 3, 9, 4);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (10, 3, 10, 4);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (11, 3, 11, 4);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (12, 4, 12, 5);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (13, 4, 13, 6);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (14, 5, 14, 6);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (15, 5, 15, 6);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (16, 5, 16, 6);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (17, 5, 17, 6);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (18, 5, 18, 6);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (19, 6, 12, 7);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (20, 6, 13, 7);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (21, 7, 12, 1);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (22, 7, 13, 1);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (23, 8, 12, 9);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (24, 8, 13, 9);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (25, 9, 12, 10);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (26, 9, 13, 11);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (27, 10, 14, 11);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (28, 10, 19, 11);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (29, 10, 20, 11);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (30, 10, 21, 11);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (31, 10, 22, 11);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (32, 10, 23, 11);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (33, 11, 12, 12);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (34, 11, 13, 12);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (35, 12, 12, 13);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (36, 12, 13, 13);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (37, 13, 24, 14);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (38, 13, 25, 14);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (39, 13, 26, 14);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (40, 13, 27, 14);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (41, 13, 28, 14);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (42, 14, 24, 15);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (43, 14, 25, 15);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (44, 14, 26, 15);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (45, 14, 27, 15);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (46, 14, 28, 15);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (47, 15, 24, 16);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (48, 15, 25, 16);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (49, 15, 26, 16);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (50, 15, 27, 16);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID, NextQuestionID) VALUES (51, 15, 28, 16);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID) VALUES (52, 16, 24);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID) VALUES (53, 16, 25);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID) VALUES (54, 16, 26);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID) VALUES (55, 16, 27);
INSERT INTO OptionsForAnswersPOL (ID, QuestionID, OptionID) VALUES (56, 16, 28);


INSERT INTO AssistanceResourcesICE(ID, Title, Link, Description, PhoneNumberCount) VALUES (1, 'Kvennaathvarf', 'https://www.kvennaathvarf.is', 'Stofnfundur Samtaka um kvennaathvarf var haldinn 2. júní 1982. Þar var ákveðið að opna athvarf fyrir konur sem ekki gætu búið heima hjá sér vegna ofbeldis og 6. desember sama ár var Kvennaathvarfið opnað. Samtök um kvennaathvarf voru í upphafi grasrótarsamtök en árið 1995 var horfið frá því fyrirkomulagi og mynduð formleg samtök. Árið 2010 var stofnuð sjálfseignarstofnun um húseign Kvennaathvarfsins en rekstur athvarfsins hélst óbreyttur.', 1);
INSERT INTO AssistanceResourcesICE(ID, Title, Link, Description, PhoneNumberCount) VALUES (2, 'Stígamót', 'https://www.stigamot.is/is/um-stigamot', 'Meginmarkmiðin með stofnun Stígamóta eru annars vegar að þau séu staður, sem konur og karlar, sem beitt hafa verið kynferðisofbeldi, geti leitað til, fengið stuðning og deilt reynslu sinni með öðrum, sem einnig hafa verið beittir slíku ofbeldi eða þekkja það vel. Með kynferðisofbeldi er, auk sifjaspella, nauðgana og kynferðislegrar áreitni, einnig átt við klám, vændi og mansal enda er það reynsla Stígamóta jafnt og annarra kvennasamtaka í heiminum að það tekur langan tíma að vinna úr þeirri erfiðu ofbeldisreynslu sem vændi er og að klám er ein birtingarmynd vændis. Mansal er nútíma þrælasala, og algengasta form mansals er mansal til kynlífsþjónustu. ', 2);
INSERT INTO AssistanceResourcesICE(ID, Title, Link, Description, PhoneNumberCount) VALUES (3, 'Frú Ragnheiður', 'https://www.raudikrossinn.is/hvad-gerum-vid/fru-ragnheidur/', 'Frú Ragnheiður – skaðaminnkun  er verkefni sem hefur það markmið að ná til jaðarsetta hópa í samfélaginu eins og heimilislausra einstaklinga og einstaklinga sem nota vímuefni um æð. Frú Ragnheiður er sérinnréttaður bíll sem er ekið um götur höfuðborgarsvæðisins á kvöldin, sex kvöld í viku.', 1);
INSERT INTO AssistanceResourcesICE(ID, Title, Link, Description, PhoneNumberCount) VALUES (4, 'Heimsóknarvinir', 'https://www.raudikrossinn.is/hvad-gerum-vid/adstod-i-bodi/heimsoknarvinur/', 'Heimsóknavinir eru sjálfboðaliðar sem heimsækja fólk á heimili þess, á stofnanir, sambýli og dvalar- og hjúkrunarheimili. Misjafnt er hvað felst í heimsókn en það getur t.d. verið spjall, gönguferð, ökuferð, upplestur, aðstoð við handavinnu og svo framvegis.  Beiðnir eru breytilegar, en reynt er að mæta þörfum og óskum gestgjafanna  eins og kostur er. Viðmið er að heimsóknartími sé um klukkustund einu sinni í viku. Hvenær og hvar heimsóknin á sér stað er samkomulagsatriði hjá gestgjafa og heimsóknavini.', 1);
INSERT INTO AssistanceResourcesICE(ID, Title, Link, Description, PhoneNumberCount) VALUES (5, 'Heilahristingur', 'https://www.raudikrossinn.is/hvad-gerum-vid/heilahristingur/', 'Heilahristingur er heimanámsaðstoð fyrir grunnskólanema frá 4.-10 bekk sem og framhaldsskólanema á höfuðborgarsvæðinu. Áhersla er lögð á að virkja nemendur í námi og hafa það skemmtilegt saman. Markmiðið er að styðja og styrkja nemendur í námi en samhliða því fái þeir tækifæri til að kynnast þeirri þjónustu sem bókasöfn bjóða upp á í tengslum við nám, áhugamál, tómstundir o.fl.', 1);
INSERT INTO AssistanceResourcesICE(ID, Title, Link, Description, PhoneNumberCount) VALUES (6, 'Engin niðurstaða', 'https://reykjavik.is/stadir/thjonustumidstod-laugardals-og-haaleitis', 'Því miður þá höfum við ekki til staðar þjónustu sem hentar þínum valkostum til þessa. Hins vegar, ef þér finnst að eitthvað sé að valda þér áhyggjum eða ert í vanda. Vinsamlegast hafðu samband við þjónustu miðstöð í þínu hverfi og biddu um ráðgjöf.', 1);


INSERT INTO AssistanceResourcesENG(ID, Title, Link, Description, PhoneNumberCount) VALUES (1, 'The Womens Shelter', 'https://www.kvennaathvarf.is', 'The Women’s Shelter was established on June 2nd 1982. It was decided on the inaugural meeting to open a shelter for women who were not able to stay in their own homes due to violence. On December the 6th on the same year the Women’s Shelter was opened.', 1);
INSERT INTO AssistanceResourcesENG(ID, Title, Link, Description, PhoneNumberCount) VALUES (2, 'Stígamót', 'https://www.stigamot.is/is/um-stigamot', 'Free individual counseling for survivors of rape, sexual molestation, sexual harassment, pornographic exploitation and prostitution. Service is for women and men. Services for children are offered by Children’s Protective Services (Barnahús).Teenagers under the age of 18 are welcome once a report has been filed with the Children’s Protective Services. In the event a report has not been filed, please be aware that according to Icelandic law we must report any instances of sexual abuse of a minor, suspected or otherwise. Questions can be sent by email or information requested by phone.', 2);
INSERT INTO AssistanceResourcesENG(ID, Title, Link, Description, PhoneNumberCount) VALUES (3, 'Frú Ragnheiður', 'https://www.raudikrossinn.is/hvad-gerum-vid/fru-ragnheidur/', 'Frú Ragnheiður – skaðaminnkun  er verkefni sem hefur það markmið að ná til jaðarsetta hópa í samfélaginu eins og heimilislausra einstaklinga og einstaklinga sem nota vímuefni um æð. Frú Ragnheiður er sérinnréttaður bíll sem er ekið um götur höfuðborgarsvæðisins á kvöldin, sex kvöld í viku.', 1);
INSERT INTO AssistanceResourcesENG(ID, Title, Link, Description, PhoneNumberCount) VALUES (4, 'Heimsóknarvinir', 'https://www.raudikrossinn.is/hvad-gerum-vid/adstod-i-bodi/heimsoknarvinur/', 'Heimsóknavinir eru sjálfboðaliðar sem heimsækja fólk á heimili þess, á stofnanir, sambýli og dvalar- og hjúkrunarheimili. Misjafnt er hvað felst í heimsókn en það getur t.d. verið spjall, gönguferð, ökuferð, upplestur, aðstoð við handavinnu og svo framvegis.  Beiðnir eru breytilegar, en reynt er að mæta þörfum og óskum gestgjafanna  eins og kostur er. Viðmið er að heimsóknartími sé um klukkustund einu sinni í viku. Hvenær og hvar heimsóknin á sér stað er samkomulagsatriði hjá gestgjafa og heimsóknavini.', 1);
INSERT INTO AssistanceResourcesENG(ID, Title, Link, Description, PhoneNumberCount) VALUES (5, 'Heilahristingur', 'https://www.raudikrossinn.is/hvad-gerum-vid/heilahristingur/', 'Heilahristingur er heimanámsaðstoð fyrir grunnskólanema frá 4.-10 bekk sem og framhaldsskólanema á höfuðborgarsvæðinu. Áhersla er lögð á að virkja nemendur í námi og hafa það skemmtilegt saman. Markmiðið er að styðja og styrkja nemendur í námi en samhliða því fái þeir tækifæri til að kynnast þeirri þjónustu sem bókasöfn bjóða upp á í tengslum við nám, áhugamál, tómstundir o.fl.', 1);
INSERT INTO AssistanceResourcesENG(ID, Title, Link, Description, PhoneNumberCount) VALUES (6, 'No Result', 'https://reykjavik.is/stadir/thjonustumidstod-laugardals-og-haaleitis', 'Því miður þá höfum við ekki til staðar þjónustu sem hentar þínum valkostum til þessa. Hins vegar, ef þér finnst að eitthvað sé að valda þér áhyggjum eða ert í vanda. Vinsamlegast hafðu samband við þjónustu miðstöð í þínu hverfi og biddu um ráðgjöf.', 1);


INSERT INTO AssistanceResourcesPOL(ID, Title, Link, Description, PhoneNumberCount) VALUES (1, 'PHKvennaathvarf', 'https://www.kvennaathvarf.is', 'PHStofnfundur Samtaka um kvennaathvarf var haldinn 2. júní 1982. Þar var ákveðið að opna athvarf fyrir konur sem ekki gætu búið heima hjá sér vegna ofbeldis og 6. desember sama ár var Kvennaathvarfið opnað. Samtök um kvennaathvarf voru í upphafi grasrótarsamtök en árið 1995 var horfið frá því fyrirkomulagi og mynduð formleg samtök. Árið 2010 var stofnuð sjálfseignarstofnun um húseign Kvennaathvarfsins en rekstur athvarfsins hélst óbreyttur.', 1);
INSERT INTO AssistanceResourcesPOL(ID, Title, Link, Description, PhoneNumberCount) VALUES (2, 'PHStígamót', 'https://www.stigamot.is/is/um-stigamot', 'PHMeginmarkmiðin með stofnun Stígamóta eru annars vegar að þau séu staður, sem konur og karlar, sem beitt hafa verið kynferðisofbeldi, geti leitað til, fengið stuðning og deilt reynslu sinni með öðrum, sem einnig hafa verið beittir slíku ofbeldi eða þekkja það vel. Með kynferðisofbeldi er, auk sifjaspella, nauðgana og kynferðislegrar áreitni, einnig átt við klám, vændi og mansal enda er það reynsla Stígamóta jafnt og annarra kvennasamtaka í heiminum að það tekur langan tíma að vinna úr þeirri erfiðu ofbeldisreynslu sem vændi er og að klám er ein birtingarmynd vændis. Mansal er nútíma þrælasala, og algengasta form mansals er mansal til kynlífsþjónustu. ', 2);
INSERT INTO AssistanceResourcesPOL(ID, Title, Link, Description, PhoneNumberCount) VALUES (3, 'PHFrú Ragnheiður', 'https://www.raudikrossinn.is/hvad-gerum-vid/fru-ragnheidur/', 'PHFrú Ragnheiður – skaðaminnkun  er verkefni sem hefur það markmið að ná til jaðarsetta hópa í samfélaginu eins og heimilislausra einstaklinga og einstaklinga sem nota vímuefni um æð. Frú Ragnheiður er sérinnréttaður bíll sem er ekið um götur höfuðborgarsvæðisins á kvöldin, sex kvöld í viku.', 1);
INSERT INTO AssistanceResourcesPOL(ID, Title, Link, Description, PhoneNumberCount) VALUES (4, 'PHHeimsóknarvinir', 'https://www.raudikrossinn.is/hvad-gerum-vid/adstod-i-bodi/heimsoknarvinur/', 'PHHeimsóknavinir eru sjálfboðaliðar sem heimsækja fólk á heimili þess, á stofnanir, sambýli og dvalar- og hjúkrunarheimili. Misjafnt er hvað felst í heimsókn en það getur t.d. verið spjall, gönguferð, ökuferð, upplestur, aðstoð við handavinnu og svo framvegis.  Beiðnir eru breytilegar, en reynt er að mæta þörfum og óskum gestgjafanna  eins og kostur er. Viðmið er að heimsóknartími sé um klukkustund einu sinni í viku. Hvenær og hvar heimsóknin á sér stað er samkomulagsatriði hjá gestgjafa og heimsóknavini.', 1);
INSERT INTO AssistanceResourcesPOL(ID, Title, Link, Description, PhoneNumberCount) VALUES (5, 'PHHeilahristingur', 'https://www.raudikrossinn.is/hvad-gerum-vid/heilahristingur/', 'PHHeilahristingur er heimanámsaðstoð fyrir grunnskólanema frá 4.-10 bekk sem og framhaldsskólanema á höfuðborgarsvæðinu. Áhersla er lögð á að virkja nemendur í námi og hafa það skemmtilegt saman. Markmiðið er að styðja og styrkja nemendur í námi en samhliða því fái þeir tækifæri til að kynnast þeirri þjónustu sem bókasöfn bjóða upp á í tengslum við nám, áhugamál, tómstundir o.fl.', 1);
INSERT INTO AssistanceResourcesPOL(ID, Title, Link, Description, PhoneNumberCount) VALUES (6, 'PHEngin niðurstaða', 'https://reykjavik.is/stadir/thjonustumidstod-laugardals-og-haaleitis', 'PHÞví miður þá höfum við ekki til staðar þjónustu sem hentar þínum valkostum til þessa. Hins vegar, ef þér finnst að eitthvað sé að valda þér áhyggjum eða ert í vanda. Vinsamlegast hafðu samband við þjónustu miðstöð í þínu hverfi og biddu um ráðgjöf.', 1);


INSERT INTO PhoneNumbers(ID, Number) VALUES (1, '5611205');
INSERT INTO PhoneNumbers(ID, Number) VALUES (2, '5626868');
INSERT INTO PhoneNumbers(ID, Number) VALUES (3, '8006868');
INSERT INTO PhoneNumbers(ID, Number) VALUES (4, '7887123');
INSERT INTO PhoneNumbers(ID, Number) VALUES (5, 'Panta símatíma á vefsíðunni');
INSERT INTO PhoneNumbers(ID, Number) VALUES (6, '5704000');
INSERT INTO PhoneNumbers(ID, Number) VALUES (7, '4111500');


INSERT INTO PhoneNumbersForResourcesICE(ID, AssistanceResourceID, PhoneNumberID) VALUES (1, 1, 1);
INSERT INTO PhoneNumbersForResourcesICE(ID, AssistanceResourceID, PhoneNumberID) VALUES (2, 2, 2);
INSERT INTO PhoneNumbersForResourcesICE(ID, AssistanceResourceID, PhoneNumberID) VALUES (3, 2, 3);
INSERT INTO PhoneNumbersForResourcesICE(ID, AssistanceResourceID, PhoneNumberID) VALUES (4, 3, 4);
INSERT INTO PhoneNumbersForResourcesICE(ID, AssistanceResourceID, PhoneNumberID) VALUES (5, 4, 5);
INSERT INTO PhoneNumbersForResourcesICE(ID, AssistanceResourceID, PhoneNumberID) VALUES (6, 5, 6);
INSERT INTO PhoneNumbersForResourcesICE(ID, AssistanceResourceID, PhoneNumberID) VALUES (7, 6, 7);

INSERT INTO PhoneNumbersForResourcesENG(ID, AssistanceResourceID, PhoneNumberID) VALUES (1, 1, 1);
INSERT INTO PhoneNumbersForResourcesENG(ID, AssistanceResourceID, PhoneNumberID) VALUES (2, 2, 2);
INSERT INTO PhoneNumbersForResourcesENG(ID, AssistanceResourceID, PhoneNumberID) VALUES (3, 2, 3);
INSERT INTO PhoneNumbersForResourcesENG(ID, AssistanceResourceID, PhoneNumberID) VALUES (4, 3, 4);
INSERT INTO PhoneNumbersForResourcesENG(ID, AssistanceResourceID, PhoneNumberID) VALUES (5, 4, 5);
INSERT INTO PhoneNumbersForResourcesENG(ID, AssistanceResourceID, PhoneNumberID) VALUES (6, 5, 6);
INSERT INTO PhoneNumbersForResourcesENG(ID, AssistanceResourceID, PhoneNumberID) VALUES (7, 6, 7);

INSERT INTO PhoneNumbersForResourcesPOL(ID, AssistanceResourceID, PhoneNumberID) VALUES (1, 1, 1);
INSERT INTO PhoneNumbersForResourcesPOL(ID, AssistanceResourceID, PhoneNumberID) VALUES (2, 2, 2);
INSERT INTO PhoneNumbersForResourcesPOL(ID, AssistanceResourceID, PhoneNumberID) VALUES (3, 2, 3);
INSERT INTO PhoneNumbersForResourcesPOL(ID, AssistanceResourceID, PhoneNumberID) VALUES (4, 3, 4);
INSERT INTO PhoneNumbersForResourcesPOL(ID, AssistanceResourceID, PhoneNumberID) VALUES (5, 4, 5);
INSERT INTO PhoneNumbersForResourcesPOL(ID, AssistanceResourceID, PhoneNumberID) VALUES (6, 5, 6);
INSERT INTO PhoneNumbersForResourcesPOL(ID, AssistanceResourceID, PhoneNumberID) VALUES (7, 6, 7);
